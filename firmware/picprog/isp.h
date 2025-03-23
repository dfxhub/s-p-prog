#ifndef _ISP_H_INCLUDED
#define _ISP_H_INCLUDED

#define ISP_MCLR_1 PP15 = 1;
#define ISP_MCLR_0 PP15 = 0;
#define ISP_MCLR_D_I PIN_input(P15);
#define ISP_MCLR_D_O PIN_output(P15);

#define ISP_DAT_1 PP17 = 1;
#define ISP_DAT_0 PP17 = 0;
#define ISP_DAT_V PP17
#define ISP_DAT_D_I PIN_input(P17);
#define ISP_DAT_D_O PIN_output(P17);

#define ISP_CLK_1 PP16 = 1;
#define ISP_CLK_0 PP16 = 0;
#define ISP_CLK_D_I PIN_input(P16);
#define ISP_CLK_D_O PIN_output(P16);

#define  ISP_CLK_DELAY 1

unsigned char rx_state_machine (unsigned char state, unsigned char rx_char);

unsigned char enter_progmode (void);
unsigned char exit_progmode (void);

void isp_send (unsigned int data, unsigned char num_bits);
void isp_send_8_msb (unsigned char data);
void isp_send_config (unsigned int data);

void isp_read_pgm (unsigned int *data, unsigned char num_words);
void isp_read_eeprom (unsigned char *data, unsigned char n, unsigned char t);
void isp_write_pgm (unsigned int *data, unsigned char n, unsigned char slow);
void isp_mass_erase (void);

void isp_inc_pointer (void);
void isp_reset_pointer (void);
void isp_reset_pointer_16d (void);
void isp_set_pointer_16d(uint32_t addr);

unsigned int isp_read_8 (void);
unsigned int isp_read_8_msb (void);
unsigned int isp_read_16 (void);
unsigned int isp_read_16_msb (void);
unsigned int isp_read_14s (void);

unsigned char p16c_enter_progmode (void);
void p16c_set_pc (unsigned long pc);
void p16c_bulk_erase (void);
unsigned int p16c_read_data_nvm (unsigned char inc);
void p16c_begin_prog (unsigned char cfg_bit);
void p16c_isp_write_cfg (unsigned int data, unsigned long addr);
void p16c_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n);
void p16c_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n);
void p16c_load_nvm (unsigned int data, unsigned char inc);

void p18q_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n);
void p18q_isp_write_cfg (unsigned int data, unsigned long addr);

unsigned char p18_enter_progmode (void);
unsigned int p18_get_ID (void);
void p18_send_cmd_payload (unsigned char cmd, unsigned int payload);
unsigned int p18_get_cmd_payload (unsigned char cmd);
void p18_set_tblptr (unsigned long val);
unsigned char p18_read_pgm_byte (void);
void p18_isp_mass_erase (void);
void p18_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr);
void p18_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n);

void p_18_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n);
void p_18_modfied_nop (unsigned char nop_long);

void p18fk_isp_mass_erase (unsigned char data1, unsigned char data2, unsigned char data3);
void p18fk_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr);
void p18fk_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n);

void p18fj_isp_mass_erase (void);

void usart_tx_b(uint8_t data, __bit flush);

//uint8_t usart_rx_rdy(void);
//uint8_t usart_rx_b(void);

//void usart_tx_s(uint8_t * data);
//void usart_tx_hexa_8b (uint8_t value);

void ISP(void);


#endif // _ISP_H_INCLUDED
