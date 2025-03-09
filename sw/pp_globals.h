#pragma once

#define FILEIMAGE_LEN 70000
#define	PROGMEM_LEN	260000
#define	CONFIG_LEN	32
#define	CF_P16F_A	0
#define	CF_P18F_A	1
#define	CF_P16F_B	2
#define	CF_P18F_B	3
#define	CF_P18F_C	4
#define	CF_P18F_D	5
#define	CF_P18F_E	6
#define	CF_P16F_C	7
#define	CF_P16F_D	8
#define	CF_P18F_F	9
#define	CF_P18F_G	10
#define	CF_P18F_Q	11

typedef struct {
	unsigned char chip_family;
	unsigned int devid_mask;
	unsigned int flash_size;
	unsigned char page_size;
	unsigned char config_size;
} device_t;

typedef struct {
	int (*dev_mass_erase)();
	int (*dev_reset_pointer)();
	int (*dev_program_page)();
	int (*dev_program_config)();
} device_cmds_t;

extern char * COM;
extern char *firmwareFile;
extern char *deviceType;

extern int baudRate;
extern int verbose, verify, program, sleep_time, readflash, getmcuids;
extern int devid_expected;
// devid_mask, flash_size, page_size, chip_family, config_size;
extern device_t device;
extern unsigned char file_image[], config_bytes[];
extern device_cmds_t device_cmds[];
