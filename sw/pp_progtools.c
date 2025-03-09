//*********************************************************************************//
//*********************************************************************************//
//*********************************************************************************//
//               programming routines
//*********************************************************************************//
//*********************************************************************************//
//*********************************************************************************//
#include <stdio.h>

#include "pp_globals.h"
#include "pp_utils.h"
#include "pp_serial.h"
#include "pp_progtools.h"

int NO_COMMAND(void) { return 0; }

device_cmds_t device_cmds[] = {
	{p16a_mass_erase, p16a_rst_pointer, NO_COMMAND, p16a_program_config},
	{p18a_mass_erase, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{p16a_mass_erase, p16a_rst_pointer, NO_COMMAND, p16a_program_config},
	{p18b_mass_erase, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{NO_COMMAND, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{p18d_mass_erase, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{p18e_mass_erase, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{p16c_mass_erase, NO_COMMAND, NO_COMMAND, p16c_write_cfg},
	{p16a_mass_erase, p16a_rst_pointer, NO_COMMAND, p16a_program_config},
	{p16c_mass_erase, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{NO_COMMAND, NO_COMMAND, NO_COMMAND, NO_COMMAND},
	{p16c_mass_erase, NO_COMMAND, NO_COMMAND, NO_COMMAND}
};
//
// device commands
//

int p16a_rst_pointer (void)
    {
    if (verbose>2) flsprintf(stdout,"Resetting PC\n");
    if (device.chip_family==CF_P16F_D)
		putByte(0x09);					//operation number
	else
		putByte(0x03);					//operation number	
    putByte(0x00);					//number of bytes remaining
    getByte();						//return result - no check for its value
    return 0;
    }
	
int p16d_set_pointer (unsigned int addr)
    {
    if (verbose>2) flsprintf(stdout,"\nSetting PC\n");
	putByte(0x0c);					//operation number
    putByte(0x02);					//number of bytes remaining
	putByte(addr & 0xff);
	putByte((addr >> 8) & 0xff);
    getByte();						//return result - no check for its value
    return 0;
    }

int p16a_mass_erase (void)
    {
    if (verbose>2) flsprintf(stdout,"Mass erase\n");
    putByte(0x07);
    putByte(0x00);
    getByte();
    return 0;
    }

int p16a_load_config (void)
    {
    if (verbose>2) flsprintf(stdout,"Load config\n");
    putByte(0x04);
    putByte(0x00);
    getByte();
    return 0;
    }

int p16a_inc_pointer (unsigned char num)
    {
    if (verbose>2) flsprintf(stdout,"Inc pointer %d\n",num);
    putByte(0x05);
    putByte(0x01);
    putByte(num);
    getByte();
    return 0;
    }

int p16a_program_page (unsigned int ptr, unsigned char num, unsigned char slow)
    {
	unsigned char empty = 1;
	unsigned int i;
	
	//
	// empty check but nit for config
	//
	if (ptr >> 1 != 0x8007) {
		for(i = ptr; i < (ptr + num); i += 2) {
			if ( ((file_image[i+1] << 8) | file_image[i]) != 0x3fff ) {
				empty = 0;
				break;
			}
		}
		if (empty) {
			p16a_inc_pointer(num/2);
			return 1;
		}
	}

		
    if (verbose>2) flsprintf(stdout,"Programming page of %d bytes at 0x%4.4x\n", num,ptr);
    putByte(0x08);
    putByte(num+2);
    putByte(num);
    putByte(slow);
    /*
    for (i=0;i<num;i++)
    	putByte(file_image[ptr+i]);
    	*/
    putBytes(&file_image[ptr],num);
    getByte();
    return 0;
    }

int p16a_read_page (unsigned char * data, unsigned char num)
    {
    unsigned char i;
    if (verbose>2) flsprintf(stdout,"Reading page of %d bytes\n", num);
    putByte(0x06);
    putByte(0x01);
    putByte(num/2);
    getByte();
    for (i=0; i<num; i++) *data++ = getByte();
    return 0;
    }

int p16a_read_eeprom (unsigned char * data, unsigned char num)
{
    unsigned char i;
	if ((device.chip_family==CF_P16F_A) || (device.chip_family==CF_P16F_D)) {
		if (verbose>2) flsprintf(stdout,"Reading EEPROM of %d bytes\n", num);
		if (device.chip_family==CF_P16F_A) putByte(0x0a);
		if (device.chip_family==CF_P16F_D) putByte(0x0d);
		putByte(0x01);
		putByte(num);
		getByte(); // response
		for (i=0; i<num; i++) *data++ = getByte();
		return 1;
	} else
		return 0;
}

int p16a_get_devid (void)
    {
    unsigned char tdat[20],devid_lo,devid_hi;
    unsigned int retval;
    p16a_rst_pointer();
    p16a_load_config();
    p16a_inc_pointer(6);
    p16a_read_page(tdat, 4);
    devid_hi = tdat[(2*0)+1];
    devid_lo = tdat[(2*0)+0];
    if (verbose>2) flsprintf(stdout,"Getting devid - lo:%2.2x,hi:%2.2x\n",devid_lo,devid_hi);
    retval = (((unsigned int)(devid_lo))<<0) + (((unsigned int)(devid_hi))<<8);
    retval = retval & device.devid_mask;
    return retval;
    }

int p16a_get_config (unsigned char n)
    {
    unsigned char tdat[20],devid_lo,devid_hi;
    unsigned int retval;
    p16a_rst_pointer();
    p16a_load_config();
    p16a_inc_pointer(n);
    p16a_read_page(tdat, 4);
    devid_hi = tdat[(2*0)+1];
    devid_lo = tdat[(2*0)+0];
    retval = (((unsigned int)(devid_lo))<<0) + (((unsigned int)(devid_hi))<<8);
    if (verbose>2) flsprintf(stdout,"Getting config +%d - lo:%2.2x,hi:%2.2x = %4.4x\n",n,devid_lo,devid_hi,retval);
    return retval;
    }


int p16a_program_config(void)
    {		
    p16a_rst_pointer();
    p16a_load_config();
    p16a_inc_pointer(7);
	
    p16a_program_page(2*0x8007,2,1);
    p16a_program_page(2*0x8008,2,1);
    if ((device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D)) p16a_program_page(2*0x8009,2,1);
    if (device.chip_family==CF_P16F_D) p16a_program_page(2*0x800A,2,1);
    return 0;
    }


int p18a_read_page (unsigned char * data, int address, unsigned char num)
    {
    unsigned char i;
    if (verbose>2) flsprintf(stdout,"Reading page of %d bytes at 0x%6.6x\n", num, address);
    putByte(0x11);
    putByte(0x04);
    putByte(num/2);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    getByte();
    for (i=0; i<num; i++)
        {
        *data++ = getByte();
        }
    return 0;
    }

int p18a_mass_erase (void)
    {
    if (verbose>2) flsprintf(stdout,"Mass erase\n");
    putByte(0x13);
    putByte(0x00);
    getByte();
    return 0;
    }

int p18b_mass_erase (void)
    {
    if (verbose>2) flsprintf(stdout,"Mass erase\n");
    putByte(0x23);
    putByte(0x00);
    getByte();
    return 0;
    }

int p18d_mass_erase_part (unsigned long data)
	{
	if (verbose>2) flsprintf(stdout,"Mass erase part of 0x%6.6x\n",data);
    putByte(0x30);
    putByte(0x03);
    putByte((data>>16)&0xFF);
    putByte((data>>8)&0xFF);
    putByte((data>>0)&0xFF);
    getByte();	
    return 0;
	}


int p18d_mass_erase (void)
    {
    if (verbose>2) flsprintf(stdout,"Mass erase\n");
	p18d_mass_erase_part(0x800104);
	p18d_mass_erase_part(0x800204);
	p18d_mass_erase_part(0x800404);
	p18d_mass_erase_part(0x800804);
	/*
	p18d_mass_erase_part(0x801004);
	p18d_mass_erase_part(0x802004);
	p18d_mass_erase_part(0x804004);
	p18d_mass_erase_part(0x808004);
	*/
	p18d_mass_erase_part(0x800004);
	p18d_mass_erase_part(0x800005);
	p18d_mass_erase_part(0x800002);
    return 0;
    }

int p18e_mass_erase (void)
    {
    if (verbose>2) flsprintf(stdout,"Mass erase\n");
	p18d_mass_erase_part(0x800104);
	p18d_mass_erase_part(0x800204);
	p18d_mass_erase_part(0x800404);
	p18d_mass_erase_part(0x800804);
	p18d_mass_erase_part(0x801004);
	p18d_mass_erase_part(0x802004);
	p18d_mass_erase_part(0x804004);
	p18d_mass_erase_part(0x808004);
	p18d_mass_erase_part(0x800004);
	p18d_mass_erase_part(0x800005);
	p18d_mass_erase_part(0x800002);
    return 0;
    }
    

int p18a_write_page (unsigned char * data, int address, unsigned char num)
    {
    unsigned char i,empty;
    empty = 0;
    for (i=0; i<num; i++)
        {
        if (data[i]!=0xFF) empty = 0;
        }
    if (empty==1)
        {
        if (verbose>3)
            flsprintf(stdout,"~");
        return 0;
        }
    if (verbose>2) flsprintf(stdout,"Writing A page of %d bytes at 0x%6.6x\n", num, address);
    putByte(0x12);
    putByte(4+num);
    putByte(num);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    for (i=0; i<num; i++)
        putByte(data[i]);
    getByte();
    return 0;
    }

int p18d_write_page (unsigned char * data, int address, unsigned char num)
    {
    unsigned char i,empty;
    empty = 0;
    for (i=0; i<num; i++)
        {
        if (data[i]!=0xFF) empty = 0;
        }
    if (empty==1)
        {
        if (verbose>3)
            flsprintf(stdout,"~");
        return 0;
        }
    if (verbose>2) flsprintf(stdout,"Writing D page of %d bytes at 0x%6.6x\n", num, address);
    putByte(0x31);
    putByte(4+num);
    putByte(num);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    for (i=0; i<num; i++)
        putByte(data[i]);
    getByte();
    return 0;
    }

int p18a_write_cfg (unsigned char data1, unsigned char data2, int address)
    {
    if (verbose>2) flsprintf(stdout,"Writing cfg 0x%2.2x 0x%2.2x at 0x%6.6x\n", data1, data2, address);
    putByte(0x14);
    putByte(6);
    putByte(0);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    putByte(data1);
    putByte(data2);
    getByte();
    return 0;
    }

int p18d_write_cfg (unsigned char data1, unsigned char data2, int address)
    {
    if (verbose>2) flsprintf(stdout,"Writing cfg 0x%2.2x 0x%2.2x at 0x%6.6x\n", data1, data2, address);
    putByte(0x32);
    putByte(6);
    putByte(0);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    putByte(data1);
    putByte(data2);
    getByte();
    return 0;
    }


int p16c_mass_erase (void)
    {
    if (verbose>2) flsprintf(stdout,"Mass erase\n");
    putByte(0x43);
    putByte(0x00);
    getByte();
    return 0;
    }

int p16c_read_page (unsigned char * data, int address, unsigned char num)
    {
    unsigned char i;
    address = address / 2;
    if (verbose>2) flsprintf(stdout,"Reading page of %d bytes at 0x%6.6x\n", num, address);
    putByte(0x41);
    putByte(0x04);
    putByte(num/2);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    getByte();
    for (i=0; i<num; i++)
        {
        *data++ = getByte();
        }
//    for (i=0; i<num; i++) if (verbose>2) flsprintf(stdout,"%2.2x ", data[i]);
       
    return 0;
    }

int p16c_write_page (unsigned char * data, int address, unsigned char num)
    {
    unsigned char i, empty;
    address = address / 2;
    empty = 1;
    for (i=0; i<num; i=i+2)
		{
		if 	((data[i]!=0xFF)|(data[i+1]!=0xFF))
			empty = 0;
		}
    if (verbose>2) flsprintf(stdout,"Writing A page of %d bytes at 0x%6.6x\n", num, address);
    if (empty==1)
        {
        if (verbose>3)
            flsprintf(stdout,"~");
        return 0;
        }
    putByte(0x42);
    putByte(4+num);
    putByte(num);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    for (i=0; i<num; i++)
        putByte(data[i]);
    getByte();
    return 0;
    }

int p16c_get_devid (void)
    {
    unsigned char tdat[20],devid_lo,devid_hi;
    unsigned int retval;
    p16c_read_page(tdat, 0x8006*2,4);
    devid_hi = tdat[(2*0)+1];
    devid_lo = tdat[(2*0)+0];
    if (verbose>2) flsprintf(stdout,"Getting devid - lo:%2.2x,hi:%2.2x\n",devid_lo,devid_hi);
    retval = (((unsigned int)(devid_lo))<<0) + (((unsigned int)(devid_hi))<<8);
    retval = retval & device.devid_mask;
    return retval;
    }


int p16c_write_single_cfg (unsigned char data1, unsigned char data2, int address)
    {
    if (verbose>2) flsprintf(stdout,"Writing cfg 0x%2.2x 0x%2.2x at 0x%6.6x\n", data1, data2, address);
    putByte(0x44);
    putByte(6);
    putByte(0);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    putByte(data1);
    putByte(data2);
    getByte();
    return 0;
    }

int p18q_write_single_cfg (unsigned char data1, unsigned char data2, int address)
    {
    if (verbose>2) flsprintf(stdout,"Writing cfg 0x%2.2x 0x%2.2x at 0x%6.6x\n", data1, data2, address);
    putByte(0x45);
    putByte(6);
    putByte(0);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    putByte(data1);
    putByte(data2);
    getByte();
    return 0;
    }
    
int p18q_write_page (unsigned char * data, int address, unsigned char num)
    {
    unsigned char i, empty;
    address = address / 2;
    empty = 1;
    for (i=0; i<num; i=i+2)
		{
		if 	((data[i]!=0xFF)|(data[i+1]!=0xFF))
			empty = 0;
		}
    if (verbose>2) flsprintf(stdout,"Writing A page of %d bytes at 0x%6.6x\n", num, address);
    if (empty==1)
        {
        if (verbose>3)
            flsprintf(stdout,"~");
        return 0;
        }
    putByte(0x46);
    putByte(4+num);
    putByte(num);
    putByte((address>>16)&0xFF);
    putByte((address>>8)&0xFF);
    putByte((address>>0)&0xFF);
    for (i=0; i<num; i++)
        putByte(data[i]);
    getByte();
    return 0;
    }    


int p16c_write_cfg (void)
    {
	p16c_write_single_cfg(config_bytes[1],config_bytes[0],0x8007);
	p16c_write_single_cfg(config_bytes[3],config_bytes[2],0x8008);
	p16c_write_single_cfg(config_bytes[5],config_bytes[4],0x8009);
	p16c_write_single_cfg(config_bytes[7],config_bytes[6],0x800A);
	p16c_write_single_cfg(config_bytes[9],config_bytes[8],0x800B);
	return 0;
    }

//
// general
//

int prog_enter_progmode (void)
    {
    if (verbose>2) flsprintf(stdout,"Entering programming mode\n");
    if (device.chip_family==CF_P16F_A) putByte(0x01);
    else 	if (device.chip_family==CF_P16F_B) putByte(0x01);
    else 	if (device.chip_family==CF_P16F_D) putByte(0x01);
    else 	if (device.chip_family==CF_P18F_A) putByte(0x10);
    else 	if (device.chip_family==CF_P18F_B) putByte(0x10);
    else 	if (device.chip_family==CF_P18F_D) putByte(0x10);
    else 	if (device.chip_family==CF_P18F_E) putByte(0x10);
    else 	if (device.chip_family==CF_P16F_C) putByte(0x40);
    else 	if (device.chip_family==CF_P18F_F) putByte(0x40);
    else 	if (device.chip_family==CF_P18F_Q) putByte(0x40);
    putByte(0x00);
    getByte();
    return 0;
    }

int prog_exit_progmode (void)
    {
    if (verbose>2) flsprintf(stdout,"Exiting programming mode\n");
    putByte(0x02);
    putByte(0x00);
    getByte();
    return 0;
    }

int prog_get_device_id (void)
    {
    unsigned char mem_str[10];
    unsigned int devid;
	if (verbose>2) flsprintf(stdout,"getting ID for family %d\n",device.chip_family);
    if ((device.chip_family==CF_P16F_A)|(device.chip_family==CF_P16F_B)|(device.chip_family==CF_P16F_D))
        return p16a_get_devid();
    if ((device.chip_family==CF_P16F_C))
        return p16c_get_devid();
    else 	if ((device.chip_family==CF_P18F_A)|(device.chip_family==CF_P18F_B)|(device.chip_family==CF_P18F_D)|(device.chip_family==CF_P18F_E))
        {
        p18a_read_page((unsigned char *)&mem_str, 0x3FFFFE, 2);
        devid = (((unsigned int)(mem_str[1]))<<8) + (((unsigned int)(mem_str[0]))<<0);
        devid = devid & device.devid_mask;
        return devid;
        }
    if ((device.chip_family==CF_P18F_F)|(device.chip_family==CF_P18F_Q))
		{
		p16c_read_page(mem_str, 0x3FFFFE*2,2);
        devid = (((unsigned int)(mem_str[1]))<<8) + (((unsigned int)(mem_str[0]))<<0);
        devid = devid & device.devid_mask;
        return devid;		
		}
        
    return 0;
    }
