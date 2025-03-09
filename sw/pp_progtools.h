#pragma once

//
// universal
//

int prog_enter_progmode (void);
int prog_exit_progmode (void);
int prog_get_device_id (void);

//
// device specific
//

int p16a_rst_pointer (void);
int p16a_mass_erase (void);
int p16a_load_config (void);
int p16a_inc_pointer (unsigned char num);
int p16a_program_page (unsigned int ptr, unsigned char num, unsigned char slow);
int p16a_read_page (unsigned char * data, unsigned char num);
int p16a_read_eeprom (unsigned char * data, unsigned char num);
int p16a_get_devid (void);
int p16a_get_config (unsigned char n);
int p16a_program_config(void);

int p16c_mass_erase (void);
int p16c_read_page (unsigned char * data, int address, unsigned char num);
int p16c_write_page (unsigned char * data, int address, unsigned char num);
int p16c_get_devid (void);
int p16c_write_cfg (void);
int p16c_write_single_cfg (unsigned char data1, unsigned char data2, int address);

int p16d_set_pointer (unsigned int addr);

int p18a_read_page (unsigned char * data, int address, unsigned char num);
int p18a_mass_erase (void);
int p18a_write_page (unsigned char * data, int address, unsigned char num);
int p18a_write_cfg (unsigned char data1, unsigned char data2, int address);

int p18b_mass_erase (void);

int p18d_mass_erase_part (unsigned long data);
int p18d_mass_erase (void);
int p18d_write_page (unsigned char * data, int address, unsigned char num);
int p18d_write_cfg (unsigned char data1, unsigned char data2, int address);

int p18e_mass_erase (void);

int p18q_write_single_cfg (unsigned char data1, unsigned char data2, int address);
int p18q_write_page (unsigned char * data, int address, unsigned char num);


