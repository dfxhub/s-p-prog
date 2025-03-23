#include <stdlib.h>
#include <fcntl.h>
#include <stdarg.h>
#include <ctype.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <sys/time.h>
#include <string.h>

#include "pp_globals.h"
#include "pp_utils.h"
#include "pp_serial.h"
#include "pp_progtools.h"

#if defined(__linux__) || defined(__APPLE__)
#include <termios.h>
#else
#include <windows.h>
#endif

char * PP_VER = "1.00b";

// behaviour
int sleep_time = 0;

// actions
int verbose = 1,
    verify = 1,
	program = 1,
	readflash = 0,
	getmcuids = 0,
	rebootDFU = 0;

// device ident from db
int devid_expected;
device_t device;
/*    devid_mask,
	device.flash_size,
	device.page_size,
	device.chip_family,
device.config_size; */

// buffers
unsigned char file_image[FILEIMAGE_LEN],
              progmem[PROGMEM_LEN],
			  config_bytes[CONFIG_LEN];


// hex parser

int parse_hex (char * filename, unsigned char * progmem, unsigned char * config)
    {
    char * line = NULL;
    unsigned char line_content[128];
    size_t len = 0;
    int i,temp, read,line_len, line_type, line_address, line_address_offset,effective_address;
    int p16_cfg = 0;
    if (verbose>2) printf ("Opening filename %s \n", filename);
    FILE* sf = fopen(filename, "r");
    if (sf==0)
        return -1;
    line_address_offset = 0;
    if (device.chip_family==CF_P16F_A) p16_cfg = 1;
    if (device.chip_family==CF_P16F_B) p16_cfg = 1;
    if (device.chip_family==CF_P16F_C) p16_cfg = 1;
    if (device.chip_family==CF_P16F_D) p16_cfg = 1;

    if (verbose>2) printf ("File open\n");
    while ((read =  getlinex(&line, &len, sf)) != -1)
        {
        if (verbose>2) printf("\nRead %d chars: %s",read,line);
        if (line[0]!=':')
            {
            if (verbose>1) printf("--- : invalid\n");
            return -1;
            }
        sscanf(line+1,"%2X",&line_len);
        sscanf(line+3,"%4X",&line_address);
        sscanf(line+7,"%2X",&line_type);
        effective_address = line_address+(65536*line_address_offset);
        if (verbose>2) printf("Line len %d B, type %d, address 0x%4.4x offset 0x%4.4x, EFF 0x%6.6x\n",line_len,line_type,line_address,line_address_offset,effective_address);
        if (line_type==0)
            {
            for (i=0; i<line_len; i++)
                {
                sscanf(line+9+i*2,"%2X",&temp);
                line_content[i] = temp;
                }
            if (effective_address<device.flash_size)
                {
                if (verbose>2) printf("PM ");
                for (i=0; i<line_len; i++) progmem[effective_address+i] = line_content[i];
                }
            if ((line_address_offset==0x30)&((device.chip_family==CF_P18F_A)|(device.chip_family==CF_P18F_D)|(device.chip_family==CF_P18F_E)|(device.chip_family==CF_P18F_F)|(device.chip_family==CF_P18F_Q)))
                {
                if (verbose>2) printf("CB ");
                for (i=0; i<line_len; i++) config[i] = line_content[i];
                }
            if ((device.chip_family==CF_P18F_B)&(effective_address==(device.flash_size-device.config_size)))
                {
                if (verbose>2) printf("CB ");
                for (i=0; i<line_len; i++) config[i] = line_content[i];
                }
            if ((line_address_offset==0x01)&(p16_cfg==1))
                {
                if (verbose>2) printf("CB ");
                for (i=0; i<line_len; i++) config[line_address+i-0x0E] = line_content[i];
                }
            }
        if (line_type==4)
            {
            sscanf(line+9,"%4X",&line_address_offset);
            }
        if (verbose>2) for (i=0; i<line_len; i++) printf("%2.2X",line_content[i]);
        if (verbose>2) printf("\n");
        }
    fclose(sf);
    return 0;
    }

//
//
// main
//
//

int main(int argc, char *argv[])
    {
    int i,j,pages_performed,config,econfig,hex_ok,rv,needfile = 0;
    unsigned char * pm_point, * cm_point;
    unsigned char tdat[200];

    parseArgs(argc,argv);

	if (verbose>0) printf ("PP programmer, version %s\n",PP_VER);
    if (verbose>1) printf ("Opening serial port\n");
    initSerialPort();
    if (sleep_time>0)
        {
        if (verbose>0) printf ("Sleeping for %d ms while arduino bootloader expires\n", sleep_time);
        fflush(stdout);
        sleep_ms (sleep_time);
        }

    if (rebootDFU) {
        ch552_rebootDFU();
        clean_exit(0);
    }

    for (i=0; i<PROGMEM_LEN; i++) progmem[i] = 0xFF;		//assume erased memories (0xFF)
    for (i=0; i<CONFIG_LEN; i++) config_bytes[i] = 0xFF;

	needfile = (((readflash == 1) || (getmcuids == 1)) ? 0 : 1);
	if (needfile) {
		// char* filename=argv[argc-1];
		pm_point = (unsigned char *)(&progmem);
		cm_point = (unsigned char *)(&config_bytes);
		hex_ok = parse_hex(firmwareFile, pm_point, cm_point);					//parse and write content of hex file into buffers
		if (hex_ok == -1) {
			printf ("Error opening firmware file!\n");
			clean_exit(1);
		}

	}

    //now this is ugly kludge
    //my original programmer expected only file_image holding the image of memory to be programmed
    //for PIC18, it is divided into two regions, program memory and config. to glue those two
    //different approaches, I made this. not particulary proud of having this mess
    for (i=0; i<FILEIMAGE_LEN; i++) file_image[i] = progmem[i];
    for (i=0; i<10; i++) file_image[2*0x8007 + i] = config_bytes[i];
//    for (i=0; i<10; i++) printf ("%2.2x",config_bytes[i]);
	//
	// this is for verification, 14 bit word, so clear 2 MSb in MSB
	//
    for (i=0; i<FILEIMAGE_LEN; i++)
    {
        if ((i % 2) != 0) // MSB
            file_image[i] &= 0x3F;
    }

/*
	//debug, write to binary for check
	FILE* bf = fopen("debug.bin", "wb");
	for (i=0; i<device.flash_size; i++) {
		fputc(file_image[i], bf);
	}
	//fputc(device.flash_size, bf);
	//fputc(device.flash_size >> 8, bf);
	fclose(bf);
*/

    prog_enter_progmode();  //enter programming mode and probe the target

    i = prog_get_device_id();

    if (i==devid_expected)
		{
        if (verbose>0) printf ("Device ID: %4.4x \n", i);
		}
    else
        {
        printf ("Wrong device ID: %4.4x, expected: %4.4x\n", i,devid_expected);
        printf ("Check for connection to target MCU, exiting now\n");
        prog_exit_progmode();
        // return 1;
		clean_exit(1);
        }

	if ((readflash == 1) || (getmcuids == 1)) {
		program = 0;
		verify = 0;
	}

	if ((hex_ok == -1) && (program == 1 && verify == 1)) {
		printf ("No or wrong input HEX file.\n");
        prog_exit_progmode();
        // return 1;
		clean_exit(1);
	}

    //ah, I need to unify programming interfaces for PIC16 and PIC18
    if ((device.chip_family==CF_P18F_A)|(device.chip_family==CF_P18F_B)|(device.chip_family==CF_P18F_D)|(device.chip_family==CF_P18F_E)|(device.chip_family==CF_P18F_F)|(device.chip_family==CF_P18F_Q))
        {
        if (program==1)
            {
            pages_performed = 0;
            if (device.chip_family==CF_P18F_A)						//erase whole device
                p18a_mass_erase();
            if (device.chip_family==CF_P18F_B)
                p18b_mass_erase();
            if (device.chip_family==CF_P18F_D)
                p18d_mass_erase();
            if (device.chip_family==CF_P18F_E)
                p18e_mass_erase();
            if ((device.chip_family==CF_P18F_F)|(device.chip_family==CF_P18F_Q))
                p16c_mass_erase();
            if (verbose>0) printf ("Programming FLASH (%d B in %d pages per %d bytes): \n",device.flash_size,device.flash_size/device.page_size,device.page_size);
            fflush(stdout);
            for (i=0; i<device.flash_size; i=i+device.page_size)
                {
                if (is_empty(progmem+i,device.page_size)==0)
                    {
					if ((device.chip_family==CF_P18F_D)|(device.chip_family==CF_P18F_E))
						p18d_write_page(progmem+i,i,device.page_size);
					else if (device.chip_family==CF_P18F_F)
						p16c_write_page(progmem+i,i*2,device.page_size);
					else if (device.chip_family==CF_P18F_Q)
						p18q_write_page(progmem+i,i*2,device.page_size);
					else
						p18a_write_page(progmem+i,i,device.page_size);
                    pages_performed++;
                    if (verbose>1)
						{
						printf ("#");
						fflush(stdout);
						}
                    }
                else if (verbose>2)
                    {
                    printf (".");
                    fflush(stdout);
                    }
                }

            if (verbose>0) printf ("\n%d pages programmed\n",pages_performed);
            if (verbose>0) printf ("Programming config\n");
            for (i=0; i<device.config_size; i=i+2) //write config bytes for PIC18Fxxxx and 18FxxKxx devices
				{
                if (device.chip_family==CF_P18F_A) p18a_write_cfg(config_bytes[i],config_bytes[i+1],0x300000+i);
                if (device.chip_family==CF_P18F_D) p18d_write_cfg(config_bytes[i],config_bytes[i+1],0x300000+i);
                if (device.chip_family==CF_P18F_E) p18d_write_cfg(config_bytes[i],config_bytes[i+1],0x300000+i);
                if (device.chip_family==CF_P18F_F) p16c_write_single_cfg (config_bytes[i+1],config_bytes[i],0x300000+i);
                if (device.chip_family==CF_P18F_Q) p18q_write_single_cfg (config_bytes[i+1],config_bytes[i],0x300000+i);
				}
															//for PIC18FxxJxx, config bytes are at the end of FLASH memory
            }
        if (verify==1)
            {
            pages_performed = 0;
            if (verbose>0) printf ("Verifying FLASH (%d B in %d pages per %d bytes): \n",device.flash_size,device.flash_size/device.page_size,device.page_size);
            for (i=0; i<device.flash_size; i=i+device.page_size)
                {
                if (is_empty(progmem+i,device.page_size))
                    {
                    if (verbose>2)
                        {
                        printf ("#");
                        fflush(stdout);
                        }
                    }
                else
                    {
					if ((device.chip_family==CF_P18F_F)|(device.chip_family==CF_P18F_Q))
						p16c_read_page(tdat,i*2,device.page_size);
					else
						p18a_read_page(tdat,i,device.page_size);
                    pages_performed++;
                    if (verbose>3) printf ("Verifying page at 0x%4.4X\n",i);
                    if (verbose>1)
                        {
                        printf ("#");
                        fflush(stdout);
                        }
                    for (j=0; j<device.page_size; j++)
                        {
                        if (progmem[i+j] != tdat[j])
                            {
                            printf ("Error at 0x%4.4X E:0x%2.2X R:0x%2.2X\n",i+j,progmem[i+j],tdat[j]);
                            printf ("Exiting now\n");
                            prog_exit_progmode();
                            //exit(0);
							clean_exit(0);
                            }
                        }
                    }
                }
            if (verbose>0) printf ("\n%d pages verified\n",pages_performed);
            if ((device.chip_family==CF_P18F_F)|(device.chip_family==CF_P18F_Q))
				p16c_read_page(tdat,0x300000*2,device.page_size);
			else
				p18a_read_page(tdat,0x300000,device.page_size);

			if (verbose>0) printf ("Verifying config...");
			for (i=0; i<device.config_size; i++)
				{
                 if (config_bytes[i] != tdat[i])
                    {
                    printf ("Error at 0x%2.2X E:0x%2.2X R:0x%2.2X\n",i,config_bytes[i],tdat[i]);
                    printf ("Exiting now\n");
                    prog_exit_progmode();
                    // exit(0);
					clean_exit(0);
					}
				}
			if (verbose>0) printf ("OK\n");
            }
			if (readflash == 1) {
				// TODO
			}
        }
    else
        {
        if (program==1)
            {
		    device_cmds[device.chip_family].dev_mass_erase();
            //if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_mass_erase();
            //if ((device.chip_family==CF_P16F_C)) p16c_mass_erase();
			device_cmds[device.chip_family].dev_reset_pointer();
            //if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_rst_pointer();				//pointer reset is needed before every "big" operation
            if (verbose>0) printf ("Programming FLASH (%d B in %d pages)\n",device.flash_size,device.flash_size/device.page_size);
            fflush(stdout);
            for (i=0; i<device.flash_size; i=i+device.page_size)
			{
                if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) rv = p16a_program_page(i,device.page_size,0);
                if ((device.chip_family==CF_P16F_C)) rv = p16c_write_page(progmem+i,i,device.page_size);
                if (verbose>1)
				{
                    if (rv)
						printf("~");
					else
						printf("#");
                    fflush(stdout);
				}
			}
            if (verbose>0) printf ("\n");
            if (verbose>0) printf ("Programming config\n");
			device_cmds[device.chip_family].dev_program_config();
            //if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_program_config();
            //if (device.chip_family==CF_P16F_C) p16c_write_cfg();
            }
        if (verify==1)
            {
            if (verbose>0) printf ("Verifying FLASH (%d B in %d pages)\n",device.flash_size,device.flash_size/device.page_size);
            fflush(stdout);
            if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_rst_pointer();
            for (i=0; i<device.flash_size; i=i+device.page_size)
                {
                if (verbose>1)
                    {
                    printf ("#");
                    fflush(stdout);
                    }
                if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_read_page(tdat,device.page_size);
                if ((device.chip_family==CF_P16F_C)) p16c_read_page(tdat,i,device.page_size);
                for (j=0; j<device.page_size; j++)
                    {
                    if (file_image[i+j] != tdat[j])
                        {
                        printf ("Error at 0x%4.4X E:0x%2.2X R:0x%2.2X\n",i+j,file_image[i+j],tdat[j]);
                        prog_exit_progmode();
                        // exit(0);
						clean_exit(0);
                        }
                    }
                }
            if (verbose>0) printf ("\n");
            if (verbose>0) printf ("Verifying config\n");
			if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D))
				{
				config = p16a_get_config(7);
				econfig = (((unsigned int)(file_image[2*0x8007]))<<0) + (((unsigned int)(file_image[2*0x8007+1]))<<8);
				if (config==econfig)
					{
					if (verbose>1) printf ("config 1 OK: %4.4X\n",config);
					}
				else	printf ("config 1 error: E:0x%4.4X R:0x%4.4X\n",config,econfig);
				config = p16a_get_config(8);
				econfig = (((unsigned int)(file_image[2*0x8008]))<<0) + (((unsigned int)(file_image[2*0x8008+1]))<<8);
				if (config==econfig)
					{
					if (verbose>1) printf ("config 2 OK: %4.4X\n",config);
					}
				else	printf ("config 2 error: E:0x%4.4X R:0x%4.4X\n",config,econfig);

				if (device.chip_family==CF_P16F_D) {

					config = p16a_get_config(9);
					econfig = (((unsigned int)(file_image[2*0x8009]))<<0) + (((unsigned int)(file_image[2*0x8009+1]))<<8);
					if (config==econfig) {
						if (verbose>1) printf ("config 3 OK: %4.4X\n",config);
					} else printf ("config 3 error: E:0x%4.4X R:0x%4.4X\n",config,econfig);
					config = p16a_get_config(0x0a);
					econfig = (((unsigned int)(file_image[2*0x800a]))<<0) + (((unsigned int)(file_image[2*0x800a+1]))<<8);
					if (config==econfig) {
						if (verbose>1) printf ("config 4 OK: %4.4X\n",config);
					} else printf ("config 4 error: E:0x%4.4X R:0x%4.4X\n",config,econfig);

				}


				}
			if (device.chip_family==CF_P16F_C)
				{
				p16c_read_page(tdat,0x8007*2,device.page_size);
                for (j=0; j<10; j++)
                    {
                    if (config_bytes[j] != tdat[j])
                        {
                        printf ("Error at 0x%4.4X E:0x%2.2X R:0x%2.2X\n",i+j,config_bytes[j],tdat[j]);
                        prog_exit_progmode();
                        // exit(0);
						clean_exit(0);
                        }
                    }

				}
            }
		if (readflash == 1) {
				// TODO
				if (verbose>0) printf ("Reading FLASH (%d B in %d pages)",device.flash_size,device.flash_size/device.page_size);
				fflush(stdout);
				if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_rst_pointer();
				FILE* of = fopen("_flash.bin", "wb");
				for (i=0; i<device.flash_size; i=i+device.page_size)
					{
					if (verbose>1)
						{
						printf (".");
						fflush(stdout);
						}
					if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_read_page(tdat,device.page_size);
					if ((device.chip_family==CF_P16F_C)) p16c_read_page(tdat,i,device.page_size);

					// write to file
					if (of)
						fwrite(tdat, device.page_size, 1, of);
					}
				fclose(of);
				if (verbose>0) printf ("\n");

				if (verbose>0) printf ("Reading EEPROM");
				fflush(stdout);

				if (device.chip_family==CF_P16F_D) p16d_set_pointer(0xf000);

				of = fopen("_eeprom.bin", "wb");
				for (i=0; i<256; i=i+device.page_size) // TODO
					{
					if (verbose>1)
						{
						printf (".");
						fflush(stdout);
						}

					if ((device.chip_family==CF_P16F_A) || (device.chip_family==CF_P16F_D)) p16a_read_eeprom(tdat,device.page_size);

					// if (devid_expected == 0x2700) p16a_read_eeprom(tdat,device.page_size);
					// if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_read_eeprom(tdat,device.page_size);
					// if ((device.chip_family==CF_P16F_C)) p16c_read_page(tdat,i,device.page_size);

					// write to file
					if (of)
						fwrite(tdat, device.page_size, 1, of);
					}
				fclose(of);
				if (verbose>0) printf ("\n");


				if (verbose>0) printf ("Reading config\n");
				of = fopen("_config.bin", "wb");
				if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D))
					{
					config = p16a_get_config(7);
					if (of)
						fwrite(&config, 2, 1, of);
					config = p16a_get_config(8);
					if (of)
						fwrite(&config, 2, 1, of);
					}
					if (device.chip_family==CF_P16F_D) {
						config = p16a_get_config(9);
						if (of)
							fwrite(&config, 2, 1, of);
						config = p16a_get_config(0x0a);
						if (of)
							fwrite(&config, 2, 1, of);
					}

				if (device.chip_family==CF_P16F_C)
					{
					p16c_read_page(tdat,0x8007*2,device.page_size);
					if (of)
						fwrite(tdat, 10, 1, of);
					}
				fclose(of);



			} // read flash & cfg


			if (getmcuids == 1) {
				if ((device.chip_family==CF_P16F_A) ||
					(device.chip_family==CF_P16F_D)) {
					p16a_rst_pointer(); // may be unneeded
					p16a_load_config(); // set address to 0x8000

					// 0x8000-0x8003 - user id
					// 0x8004-0x8005 - reserved
					// 0x8006        - devid
					// 0x8007-0x8008 - config 1, 2
					// 0x8009-0x800a - calibration 1, 2

					p16a_read_page(config_bytes, 22); // need 11 14bits words

					printf("\nDevice Configuration Memory Data:\n");

					printf ("\tUser ID #1:          0x%02x%02x\n", config_bytes[1], config_bytes[0]); // msb lsb
					printf ("\tUser ID #2:          0x%02x%02x\n", config_bytes[3], config_bytes[2]);
					printf ("\tUser ID #3:          0x%02x%02x\n", config_bytes[5], config_bytes[4]);
					printf ("\tUser ID #4:          0x%02x%02x\n", config_bytes[7], config_bytes[6]);

					printf ("\tReserved #1:         0x%02x%02x\n", config_bytes[9], config_bytes[8]);
					if (device.chip_family==CF_P16F_A)
						printf ("\tReserved #2:         0x%02x%02x\n", config_bytes[11], config_bytes[10]);
					else if (device.chip_family==CF_P16F_D)
						printf ("\tRevision ID:         0x%02x%02x\n", config_bytes[11], config_bytes[10]);

					if (device.chip_family==CF_P16F_A) {
						// nn10 0111 000x xxxx
						// devid________revid_
						// printf ("\tDevice ID: 0x%02x%02x\n", config_bytes[13], config_bytes[12]);
						printf ("\tDevice ID:           "); printbin(((((unsigned int)(config_bytes[13])<<8) + config_bytes[12]) >> 5) & 0x1ff, 9); printf("\n");
						printf ("\tRevision ID:         "); printbin(config_bytes[12] & 0x1f, 5); printf("\n");
					} else if (device.chip_family==CF_P16F_D)
						printf ("\tDevice ID:           0x%02x%02x\n", config_bytes[13], config_bytes[12]);

					printf ("\tConfig Word #1:      0x%02x%02x\n", config_bytes[15], config_bytes[14]);
					printf ("\tConfig Word #2:      0x%02x%02x\n", config_bytes[17], config_bytes[16]);
					if (device.chip_family==CF_P16F_A) {
						printf ("\tCalibration Word #1: 0x%02x%02x\n", config_bytes[19], config_bytes[18]);
						printf ("\tCalibration Word #2: 0x%02x%02x\n", config_bytes[21], config_bytes[20]);
					} else if (device.chip_family==CF_P16F_D) {
						printf ("\tConfig Word #3:      0x%02x%02x\n", config_bytes[19], config_bytes[18]);
						printf ("\tConfig Word #4:      0x%02x%02x\n", config_bytes[21], config_bytes[20]);
					}

					if (device.chip_family==CF_P16F_D) {
						p16d_set_pointer(0xe000);
						p16a_read_page(config_bytes, 8);

						printf ("\tCalibration Word #1: 0x%02x%02x\n", config_bytes[1], config_bytes[0]);
						printf ("\tCalibration Word #2: 0x%02x%02x\n", config_bytes[3], config_bytes[2]);
						printf ("\tCalibration Word #3: 0x%02x%02x\n", config_bytes[5], config_bytes[4]);
						printf ("\tCalibration Word #4: 0x%02x%02x\n", config_bytes[7], config_bytes[6]);
					}

					//for (i=0; i<17; i=i+2) {
					//	printf ("0x%02x%02x\n", config_bytes[i], config_bytes[i+1]);
					//}

					//for (i=0; i<9; i++) {
					//	p16a_inc_pointer(i);
					//	p16a_read_page(tdat, 4);
					//}

				}
			}



        }
    prog_exit_progmode();
    // return 0;
	clean_exit(0);
    }

