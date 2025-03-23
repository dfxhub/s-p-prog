//*********************************************************************************//
//*********************************************************************************//
//*********************************************************************************//
//               generic routines
//*********************************************************************************//
//*********************************************************************************//
//*********************************************************************************//
#include <stdlib.h>
#include <fcntl.h>
#include <stdarg.h>
#include <ctype.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <sys/time.h>
#include <string.h>

#if defined(__linux__) || defined(__APPLE__)
#include <termios.h>
#else
#include <windows.h>
#endif

#include "pp_globals.h"
#include "pp_utils.h"

char *firmwareFile = NULL;
char *deviceType = NULL;


void clean_exit(int rv) {
	if (COM != NULL) free(COM);
	if (firmwareFile != NULL) free(firmwareFile);
	if (deviceType != NULL) free(deviceType);
	exit(rv);
}

void comErr(char *fmt, ...)
    {
    char buf[ 500 ];
    va_list va;
    va_start(va, fmt);
    vsnprintf(buf, sizeof(buf), fmt, va);
    fprintf(stderr,"%s", buf);
    perror(COM);
    va_end(va);
    // exit(-1);
	clean_exit(-1);
    }

void flsprintf(FILE* f, char *fmt, ...)
    {
    char buf[ 500 ];
    va_list va;
    va_start(va, fmt);
    vsnprintf(buf, sizeof(buf), fmt, va);
    fprintf(f,"%s", buf);
    fflush(f);
    va_end(va);
    }


int is_empty (unsigned char * buff, int len)
    {
    int i,empty;
    empty = 1;
    for (i=0; i<len; i++)
        if (buff[i]!=0xFF) empty = 0;
    return empty;
    }

//get line replacement
size_t getlinex(char **lineptr, size_t *n, FILE *stream)
    {
    char *bufptr = NULL;
    char *p = bufptr;
    size_t size;
    int c;

    if (lineptr == NULL)return -1;
    if (stream == NULL) return -1;
    if (n == NULL) return -1;
    bufptr = *lineptr;
    size = *n;

    c = fgetc(stream);
    if (c == EOF) return -1;
    if (bufptr == NULL)
        {
        bufptr = malloc(128);
        if (bufptr == NULL)
            {
            return -1;
            }
        size = 128;
        }
    p = bufptr;
    while(c != EOF)
        {
        if ((p - bufptr) > (size - 1))
            {
            size = size + 128;
            bufptr = realloc(bufptr, size);
            if (bufptr == NULL)
                {
                return -1;
                }
            }
        *p++ = c;
        if (c == '\n')
            {
            break;
            }
        c = fgetc(stream);
        }
    *p++ = '\0';
    *lineptr = bufptr;
    *n = size;
    return p - bufptr - 1;
    }

void sleep_ms (int num)
    {
#if defined(__linux__) || defined(__APPLE__)
    struct timespec tspec;
    tspec.tv_sec=num/1000;
    tspec.tv_nsec=(num%1000)*1000000;
    nanosleep(&tspec,0);
#else
    Sleep(num);
#endif
    }

void printbin(unsigned int num, unsigned char len) {
	int n;
	for (n=0;n<len;n++) {
		if (num & (1<<(len-1)))
			printf("1");
		else
			printf("0");
		num = num << 1;
	}
}

void printHelp()
    {
    flsprintf(stdout,"OVERVIEW: pp programmer\n\n");
    flsprintf(stdout,"USAGE: pp <options>\n\n");
    flsprintf(stdout,"OPTIONS:\n\n");
    flsprintf(stdout,"   -c <COM | serial>     port to use (REQUIRED)\n");
    flsprintf(stdout,"   -t <MCUTYPE>          type of MCU to use (REQUIRED)\n");
    flsprintf(stdout,"   -f <filename>         filename with firmware (required for programming/verifying)\n");
    flsprintf(stdout,"   -b <boudrate>         port speed (default 115200)\n");
    flsprintf(stdout,"   -s <ms>               sleep ms after opening serial port\n");
    flsprintf(stdout,"   -n                    do not verify\n");
    flsprintf(stdout,"   -p                    do not program (may be used for verifying)\n");
    flsprintf(stdout,"   -r                    read flash, eeprom, config\n");
    flsprintf(stdout,"   -v <level>            set verbose level\n");
    flsprintf(stdout,"   -i                    get device info: user ID, device ID, config words\n");
    flsprintf(stdout,"   -l                    list supported MCU types\n");
    flsprintf(stdout,"   -x                    reboot programmer to DFU\n");
    flsprintf(stdout,"\t\n");
    // exit(0);
	clean_exit(0);
    }

void parseArgs(int argc, char *argv[]) {
    int c, needfile = 0, list = 0;

    while ((c = getopt (argc, argv, "xilc:nprs:t:v:b:f:")) != -1)
        {
        switch (c)
            {
            case 'c' :
                // COM=optarg;
				COM = strdup(optarg);
                break;
            case 'n':
                verify = 0;
                break;
            case 'p':
                program = 0;
                break;
            case 'r':
                readflash = 1;
                break;
            case 'l' :
				list = 1;
                listCPUtype();
                break;
            case 'i' :
                getmcuids = 1;
                break;
            case 's' :
                sscanf(optarg,"%d",&sleep_time);
                break;
            case 't' :
                //if (setCPUtype(optarg) == -1) {
				//	printf("Problem operating devices database.\n");
				//	exit(0);
				//}
				deviceType = strdup(optarg);
                break;
            case 'v' :
                sscanf(optarg,"%d",&verbose);
                break;
            case 'b' :
                sscanf(optarg,"%d",&baudRate);
                break;
			case 'f':
				firmwareFile = strdup(optarg);
				break;
            case 'x':
                rebootDFU = 1;
                break;
            case '?' :
                if (isprint (optopt))
                    fprintf (stderr, "Unknown option `-%c'.\n", optopt);
                else
                    fprintf (stderr,"Unknown option character `\\x%x'.\n",optopt);
            default:
                fprintf (stderr,"Bug, unhandled option '%c'\n",c);
                //abort ();
				//exit(0);
				clean_exit(0);
            }
        }

    if (argc<=1)
        printHelp();

	// check required
	if (COM == NULL) {
		printf("REQUIRED: COM port.\n");
		clean_exit(0);
	}

	needfile = (((readflash == 1) || (getmcuids == 1) || (rebootDFU == 1)) ? 0 : 1);
	if ((needfile) && (firmwareFile == NULL)) {
		printf("REQUIRED: firmware file for programming.\n");
		clean_exit(0);
	}

	if (deviceType == NULL) {
		printf("REQUIRED: device type.\n");
		clean_exit(0);
	} else {
		if (setCPUtype(deviceType) == -1) {
			printf("Problem setting device type/operating devices database.\n");
			clean_exit(0);
		}
	}


    }

void listCPUtype(void)
{
	int read, i = 0;
	size_t len = 0;
	char *line = NULL;
	char read_cpu_type[20];
	fprintf(stdout, "\nSupported MCUs (MCUTYPE):\n\n\t");
	FILE* mcuf = fopen("pp3_devices.dat", "r");
	if (mcuf) {
		while ((read =  getlinex(&line, &len, mcuf)) != -1) {
				if (line[0] != '#') {
					i++;
					sscanf (line, "%s", (char*)&read_cpu_type);
					fprintf(stdout, "%-11s", read_cpu_type);
					if (i > 5) {
						fprintf(stdout, "\n\t");
						i = 0;
					}
				}
		}
		fprintf(stdout, "\n");
		fclose(mcuf);

	}
	// exit(0);
	clean_exit(0);
}

int setCPUtype(char* cpu) {
	int name_len,i,read;
	name_len = strlen (cpu);
	for(i = 0; i<name_len; i++) cpu[i] = tolower(cpu[i]);
	char * line = NULL;
	char * filename = "pp3_devices.dat";
	char read_cpu_type[20], read_algo_type[20];
	int read_flash_size, read_page_size, read_id, read_mask;
	int cpu_found = 0;

	size_t len = 0;
	// if (verbose>2) printf ("Opening filename %s \n", filename);
	if (verbose>2) printf ("Opening firmware filename %s \n", filename);
	FILE* sf = fopen(filename, "r");
	if (sf==0) {
		printf ("Can't open database file %s\n",filename);
		return -1;
	}

    if (verbose>2) printf ("File open\n");

    while ((read = getlinex(&line, &len, sf)) != -1) {
        if (verbose>4) printf("\nRead %d chars: %s",read,line);
        if (line[0]!='#') {
			sscanf (line,"%s %d %d %x %x %s",(char*)&read_cpu_type,&read_flash_size,&read_page_size,&read_id,&read_mask,(char*)&read_algo_type);
			if (verbose>4) printf("\n*** %s,%d,%d,%x,%x,%s",read_cpu_type,read_flash_size,read_page_size,read_id,read_mask,read_algo_type);
			if (strcmp(read_cpu_type,cpu)==0) {
				device.flash_size = read_flash_size;
				device.page_size = read_page_size;
				devid_expected = read_id;
				device.devid_mask = read_mask;
				if (verbose>1) printf("Found database match %s,%d,%d,%x,%x,%s\n",read_cpu_type,read_flash_size,read_page_size,read_id,read_mask,read_algo_type);
				if (strcmp("CF_P16F_A",read_algo_type)==0) device.chip_family = CF_P16F_A;
				if (strcmp("CF_P16F_B",read_algo_type)==0) device.chip_family = CF_P16F_B;
				if (strcmp("CF_P16F_C",read_algo_type)==0) device.chip_family = CF_P16F_C;
				if (strcmp("CF_P16F_D",read_algo_type)==0) device.chip_family = CF_P16F_D;
				if (strcmp("CF_P18F_A",read_algo_type)==0) device.chip_family = CF_P18F_A;
				if (strcmp("CF_P18F_B",read_algo_type)==0) device.chip_family = CF_P18F_B;
				if (strcmp("CF_P18F_C",read_algo_type)==0) device.chip_family = CF_P18F_C;
				if (strcmp("CF_P18F_D",read_algo_type)==0) device.chip_family = CF_P18F_D;
				if (strcmp("CF_P18F_E",read_algo_type)==0) device.chip_family = CF_P18F_E;
				if (strcmp("CF_P18F_F",read_algo_type)==0) device.chip_family = CF_P18F_F;
				if (strcmp("CF_P18F_G",read_algo_type)==0) device.chip_family = CF_P18F_G;
				if (strcmp("CF_P18F_Q",read_algo_type)==0) device.chip_family = CF_P18F_Q;
				if (device.chip_family == CF_P18F_A) device.config_size = 16;
				if (device.chip_family == CF_P18F_B) device.config_size = 8;
				if (device.chip_family == CF_P18F_C) {
					device.config_size = 16;
					device.chip_family = CF_P18F_B;
				}
				if (device.chip_family == CF_P18F_D) device.config_size = 16;
				if (device.chip_family == CF_P18F_E) device.config_size = 16;
				if (device.chip_family == CF_P18F_F) device.config_size = 12;
				if (device.chip_family == CF_P18F_Q) device.config_size = 12;
				if (device.chip_family == CF_P18F_G) {
					device.config_size = 10;
					device.chip_family = CF_P18F_F;
				}
				if (verbose>2) printf("chip family:%d, config size:%d\n",device.chip_family,device.config_size);
				cpu_found = 1;
				break;
			} else { // MCU not found
				cpu_found = 0;
			}
		} // line is not comment
	} // while

	fclose(sf);

	if (!cpu_found) {
		printf("No matches for '%s' in the database.\n", cpu);
		return -1;
	}

	return 0;
}

