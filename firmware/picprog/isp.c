#include "delay.h"
#include "gpio.h"
#include "usb_cdc.h"

#include "isp.h"

#define TRUE 1
#define FALSE 0

unsigned char __xdata rx_message[140]; // 280
unsigned int __xdata flash_buffer[64]; // 260

unsigned char rx = 0;
unsigned char i = 0;

unsigned char bytes_to_receive = 0;
unsigned char rx_state = 0;

unsigned char rx_message_ptr = 0;
unsigned char *eeprom_buf;

unsigned int cfg_val;
unsigned long addr;

void ISP(void) {

    ISP_CLK_D_O
    ISP_DAT_D_O
    //ISP_DAT_D_I
    ISP_DAT_0
    ISP_CLK_0
    ISP_MCLR_D_O
    ISP_MCLR_1

    rx_state = 0;

    PIN_high(P14);
    DLY_ms(1000);
    PIN_low(P14);

    while(1) {
        if(CDC_available()) {
            // PIN_input_PU(P14);
            //PIN_high(P14);
            PP14 = 1;
            rx = CDC_read();

            rx_state = rx_state_machine (rx_state,rx);
            if (rx_state==3) {

                switch (rx_message[0]) {

                case 0x01: // prog_enter_progmode
                    enter_progmode();
                    usart_tx_b (0x81, TRUE);
                    rx_state = 0;
                    break;

                case 0x02: // prog_exit_progmode
                    exit_progmode();
                    usart_tx_b (0x82, TRUE);
                    rx_state = 0;
                    break;

                case 0x03: // p16a_rst_pointer A
                    isp_reset_pointer();
                    usart_tx_b (0x83, TRUE);
                    rx_state = 0;
                    break;

                case 0x04: // p16a_load_config
                    isp_send_config(0);
                    usart_tx_b (0x84, TRUE);
                    rx_state = 0;
                    break;

                case 0x05: // p16a_inc_pointer
                    for (i=0;i<rx_message[2];i++)
                        isp_inc_pointer();
                    usart_tx_b (0x85, TRUE);
                    rx_state = 0;
                    break;

                case 0x06: // p16a_read_page
                    isp_read_pgm(flash_buffer, rx_message[2]);
                    usart_tx_b(0x86, FALSE);
                    for (i = 0; i < rx_message[2]; i++) {
                        // flash_buffer is int
                        // on BE platforms - [MSB:LSB]
                        // on LE platforms - [LSB:MSB]
                        usart_tx_b(flash_buffer[i] & 0xFF, FALSE);
                        usart_tx_b(flash_buffer[i] >> 8, FALSE);
                    }
                    CDC_flush();
                    rx_state = 0;
                    break;

                case 0x07: // p16a_mass_erase
                    isp_mass_erase();
                    usart_tx_b (0x87, TRUE);
                    rx_state = 0;
                    break;

                case 0x08: // p16a_program_page
                    for (i = 0; i < rx_message[2] / 2; i++)
                        flash_buffer[i] = (((unsigned int)(rx_message[(2 * i) + 1 + 4])) << 8) +
                                          (((unsigned int)(rx_message[(2 * i) + 0 + 4])) << 0);
                    isp_write_pgm(flash_buffer, rx_message[2] / 2, rx_message[3]);
                    // isp_write_pgm_row(flash_buffer,rx_message[2]/2,rx_message[3]);
                    usart_tx_b(0x88, TRUE);
                    rx_state = 0;
                    break;

                case 0x09: // p16a_rst_pointer D
                    isp_reset_pointer_16d();
                    usart_tx_b (0x89, TRUE);
                    rx_state = 0;
                    break;

                case 0x0a: // p16a_read_eeprom A
                case 0x0d: // p16a_read_eeprom D
                    eeprom_buf = (unsigned char *)flash_buffer;
                    if (rx_message[0] == 0x0a) {
                        isp_read_eeprom(eeprom_buf, rx_message[2], 'a');
                        usart_tx_b(0x8a, FALSE);
                    }
                    else if (rx_message[0] == 0x0d) {
                        isp_read_eeprom(eeprom_buf, rx_message[2], 'd');
                        usart_tx_b(0x8d, FALSE);
                    }
                    for (i = 0; i < rx_message[2]; i++) {
                        usart_tx_b(*eeprom_buf++, FALSE);
                    }
                    CDC_flush();
                    rx_state = 0;
                    break;

                case 0x0c: // p16d_set_pointer
                    // [0x0c, 0x02, LSB, MSB]
                    isp_set_pointer_16d((uint32_t)rx_message[2] + (uint32_t)(rx_message[3] << 8));
                    usart_tx_b (0x8c, TRUE);
                    rx_state = 0;
                    break;

                case 0x10: // prog_enter_progmode
                    p18_enter_progmode();
                    usart_tx_b (0x90, TRUE);
                    rx_state = 0;
                    break;

                case 0x11: // p18a_read_page
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    p_18_isp_read_pgm (flash_buffer, addr, rx_message[2]);
                    usart_tx_b (0x91, FALSE);
                    for (i=0;i<rx_message[2];i++) {
                        usart_tx_b (flash_buffer[i]&0xFF, FALSE);
                        usart_tx_b (flash_buffer[i]>>8, FALSE);
                    }
                    CDC_flush();
                    rx_state = 0;
                    break;

                case 0x12: // p18a_write_page
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    for (i=0;i<rx_message[2]/2;i++)
                        flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
                    p18_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
                    usart_tx_b (0x92, TRUE);
                    rx_state = 0;
                    break;

                case 0x13: // p18a_mass_erase
                    p18_isp_mass_erase();
                    usart_tx_b (0x93, TRUE);
                    rx_state = 0;
                    break;

                case 0x14: // p18a_write_cfg
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    p18_isp_write_cfg (rx_message[6],rx_message[7], addr);
                    usart_tx_b (0x94, TRUE);
                    rx_state = 0;
                    break;

                case 0x23: // p18b_mass_erase
                    p18fj_isp_mass_erase();
                    usart_tx_b (0xA3, TRUE);
                    rx_state = 0;
                    break;

                case 0x30: // p18d_mass_erase_part
                    p18fk_isp_mass_erase (rx_message[2], rx_message[3], rx_message[4]);
                    usart_tx_b (0xB0, TRUE);
                    rx_state = 0;
                    break;

                case 0x31: // p18d_write_page
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    for (i=0;i<rx_message[2]/2;i++)
                        flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
                    p18fk_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
                    usart_tx_b (0xB1, TRUE);
                    rx_state = 0;
                    break;

                case 0x32: // p18d_write_cfg
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    p18fk_isp_write_cfg (rx_message[6],rx_message[7], addr);
                    usart_tx_b (0xB2, TRUE);
                    rx_state = 0;
                    break;

                case 0x40: // prog_enter_progmode
                    p16c_enter_progmode();
                    usart_tx_b (0xC0, TRUE);
                    rx_state = 0;
                    break;

                case 0x41: // p16c_read_page
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    p16c_isp_read_pgm (flash_buffer, addr, rx_message[2]);
                    usart_tx_b (0xC1, FALSE);
                    for (i=0;i<rx_message[2];i++) {
                        usart_tx_b (flash_buffer[i]&0xFF, FALSE);
                        usart_tx_b (flash_buffer[i]>>8, FALSE);
                    }
                    CDC_flush();
                    rx_state = 0;
                    break;

                case 0x42: // p16c_write_page
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    for (i=0;i<rx_message[2]/2;i++)
                        flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
                    p16c_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
                    usart_tx_b (0xC2, TRUE);
                    rx_state = 0;
                    break;

                case 0x43: // p16c_mass_erase
                    p16c_set_pc (0x8000);
                    p16c_bulk_erase ();
                    usart_tx_b (0xC3, TRUE);
                    rx_state = 0;
                    break;

                case 0x44: // p16c_write_single_cfg
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    cfg_val = rx_message[6];
                    cfg_val = (cfg_val<<8) + rx_message[7];
                    p16c_isp_write_cfg (cfg_val, addr);
                    usart_tx_b (0xC4, TRUE);
                    rx_state = 0;
                    break;

                case 0x45: // p18q_write_single_cfg
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    cfg_val = rx_message[6];
                    cfg_val = (cfg_val<<8) + rx_message[7];
                    p18q_isp_write_cfg (cfg_val, addr);
                    usart_tx_b (0xC5, TRUE);
                    rx_state = 0;
                    break;

                case 0x46: // p18q_write_page
                    addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
                    for (i=0;i<rx_message[2]/2;i++)
                        flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
                    p18q_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
                    usart_tx_b (0xC6, TRUE);
                    rx_state = 0;
                    break;

                case 0xff: // reboot to bootloader
                        USB_INT_EN = 0;
                        USB_CTRL = 0x06;
                        DLY_ms(100);
                        EA = 0;
                        __asm__ ("ljmp 0x3800");
                    break;

                default:
                    break;
                }

            } // rc_state == 3
            //PIN_low(P14);
            PP14 = 0;
        } // usart received byte
    } // main loop

}

unsigned char rx_state_machine (unsigned char state, unsigned char rx_char)
{
if (state==0)
  {
    rx_message_ptr = 0;
    rx_message[rx_message_ptr++] = rx_char;
    return 1;
  }
if (state==1)
  {
    bytes_to_receive = rx_char;
    rx_message[rx_message_ptr++] = rx_char;
    if (bytes_to_receive==0) return 3;
    return 2;
  }
if (state==2)
  {
    rx_message[rx_message_ptr++] = rx_char;
    bytes_to_receive--;
    if (bytes_to_receive==0) return 3;
  }
return state;
}


void isp_read_pgm (unsigned int *data, unsigned char num_words) {
    unsigned char i;

    //DLY_us(3*ISP_CLK_DELAY);
    for (i = 0; i < num_words; i++) {
        isp_send(0x04, 6);
        data[i] = isp_read_14s();
        isp_send(0x06, 6);
    }
}


void isp_read_eeprom (unsigned char *data, unsigned char n, unsigned char t) {
    unsigned char i;

    //DLY_us(3*ISP_CLK_DELAY);
    for (i = 0; i < n; i++) {
        if (t == 'a')
            isp_send(0x05, 6); // read from data mem _A
        else if (t == 'd')
            isp_send(0x04, 6); // read _D
        data[i] = (unsigned char)(isp_read_14s() & 0xff); // only 8 lsb is valid data - data(8) zero(6)
        isp_send(0x06, 6); // inc address
    }
}


//void isp_write_pgm_row (unsigned int * data, unsigned char n, unsigned char slow)
//{
  //try to write in bulk - by row at a time, not single word
  //n - page size/2 - number of latches in row
  // load data (02h)
  // inc address (06h)
  // ...
  // begin int prog (08h)
  // wait Tpint (2.5ms-5ms for 16f183x6, 12f1840, 12f1822)
//}

void isp_write_pgm (unsigned int *data, unsigned char n, unsigned char slow) {
    unsigned char i;

    //DLY_us(3*ISP_CLK_DELAY);
    for (i = 0; i < n; i++) {
        isp_send(0x02, 6); // load data cmd
        isp_send(data[i] << 1, 16); // data
        if (i != (n - 1))
            isp_send(0x06, 6); // inc PC pointer
    }
    isp_send(0x08, 6); // begin internal programming cmd, Tpint
    if (slow == 1) // config words
        DLY_ms(5);
    else // prog memory
        DLY_ms(3);
    isp_send(0x06, 6); // inc PC pointer
}

void isp_send_config (unsigned int data)
{
isp_send(0x00,6);
isp_send(data,16);
}

void isp_mass_erase (void) {
//DLY_ms(10);
//DLY_us(3*ISP_CLK_DELAY);
//isp_send(0x11,6);
    isp_send_config(0);
    isp_send(0x09, 6);
    DLY_ms(10); // consult Terab in mem prog manual
//isp_send(0x0B,6);
//DLY_ms(10);
}



void isp_reset_pointer (void)
{
//DLY_us(3*ISP_CLK_DELAY);
isp_send(0x16,6);
}

void isp_reset_pointer_16d (void)
{
//DLY_us(3*ISP_CLK_DELAY);
isp_send(0x1D,6);
isp_send(0x0,8);
isp_send(0x0,8);
isp_send(0x0,8);
}

void isp_set_pointer_16d(uint32_t addr)
{
    //
    // Load PC Address
    // 0, lsb addr ... msb addr
    // total 24 bits

    addr = addr << 1;

    isp_send(0x1D,6);
    isp_send(addr & 0xff,8); // 0 + lsb
    isp_send((addr >> 8) & 0xff,8);
    isp_send((addr >> 16) & 0xff,8); // msb
}

void isp_inc_pointer (void)
{
//DLY_us(3*ISP_CLK_DELAY);
isp_send(0x06,6);
}


unsigned int isp_read_16(void) {
    unsigned char i;
    unsigned int out;

    //
    // data comes LSb .. MSb
    //
    out = 0;
    ISP_DAT_D_I
    //DLY_us(3*ISP_CLK_DELAY);
    for (i=0; i < 16; i++) {
        ISP_CLK_1
        DLY_us(ISP_CLK_DELAY);
        ISP_CLK_0
        DLY_us(ISP_CLK_DELAY);
        out = out >> 1;
        if (ISP_DAT_V)
            out = out | 0x8000;
    }
    return out;
}

unsigned int isp_read_8 (void)
{
unsigned char i;
unsigned int out;
out = 0;
ISP_DAT_D_I
//DLY_us(3*ISP_CLK_DELAY);
for (i=0;i<8;i++)
  {
  ISP_CLK_1
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_0
  DLY_us(ISP_CLK_DELAY);
  out = out >> 1;
  if (ISP_DAT_V)
    out = out | 0x80;
  }
 return out;
}

unsigned int isp_read_14s(void) {
    unsigned int out;

    //
    // incoming data is
    // 0, data(14), 0
    // xDDD DDDD DDDD DDDx
    //
    out = isp_read_16();
    out = out & 0x7FFE;
    out = out >> 1;
    return out;
}



void isp_send (unsigned int data, unsigned char num_bits) {
    unsigned char i;

    ISP_DAT_D_O
    //DLY_us(3*ISP_CLK_DELAY);

    for (i = 0; i < num_bits; i++) {
        if (data&0x01)
            ISP_DAT_1
        else
            ISP_DAT_0

        DLY_us(ISP_CLK_DELAY);
        ISP_CLK_1
        //DLY_us(ISP_CLK_DELAY);
        data = data >> 1;
        ISP_CLK_0
        ISP_DAT_0
        //DLY_us(ISP_CLK_DELAY);
    }
}


void isp_send_24_msb (unsigned long data)
{
unsigned char i;
ISP_DAT_D_O
//DLY_us(3*ISP_CLK_DELAY);
for (i=0;i<23;i++)
  {
  if (data&0x400000)
    {
    ISP_DAT_1
    }
  else
    {
    ISP_DAT_0
    }
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_1
 DLY_us(ISP_CLK_DELAY);
  data = data << 1;
  ISP_CLK_0
//  DLY_us(ISP_CLK_DELAY);
  }
  ISP_DAT_0
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_1
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_0
}

void isp_send_8_msb (unsigned char data)
{
unsigned char i;
ISP_DAT_D_O
//DLY_us(3*ISP_CLK_DELAY);
for (i=0;i<8;i++)
  {
  if (data&0x80)
    {
    ISP_DAT_1
    }
  else
    {
    ISP_DAT_0
    }
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_1
  DLY_us(ISP_CLK_DELAY);
  data = data << 1;
  ISP_CLK_0
  ISP_DAT_0
//  DLY_us(ISP_CLK_DELAY);
  }
}


unsigned int isp_read_8_msb (void)
{
unsigned char i;
unsigned int out;
out = 0;
ISP_DAT_D_I
//DLY_us(3*ISP_CLK_DELAY);
for (i=0;i<8;i++)
  {
  ISP_CLK_1
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_0
  DLY_us(ISP_CLK_DELAY);
  out = out << 1;
  if (ISP_DAT_V)
    out = out | 0x1;
  }
 return out;
}

unsigned int isp_read_16_msb (void)
{
unsigned char i;
unsigned int out;
out = 0;
ISP_DAT_D_I
//DLY_us(3*ISP_CLK_DELAY);
for (i=0;i<16;i++)
  {
  ISP_CLK_1
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_0
  DLY_us(ISP_CLK_DELAY);
  out = out << 1;
  if (ISP_DAT_V)
    out = out | 0x1;
  }
 return out;
}



unsigned char enter_progmode (void)
{
ISP_MCLR_0
DLY_us(300);
isp_send('P',8); // 0b01010000
isp_send('H',8); // 0b01001000
isp_send('C',8); // 0b01000011
isp_send('M',8); // 0b01001101

isp_send(0,1); // 33 clock
return 0;
}

/**************************************************************************************************************************/

unsigned char p18_enter_progmode (void)
{
ISP_MCLR_0
DLY_us(300);
// think it is the same ;)
isp_send_8_msb('M');
isp_send_8_msb('C');
isp_send_8_msb('H');
isp_send_8_msb('P');
//isp_send(0xB2,8); // 0b10110010
//isp_send(0xC2,8); // 0b11000010
//isp_send(0x12,8); // 0b00010010
//isp_send(0x0a,8); // 0b00001010
DLY_us(300);
ISP_MCLR_1
return 0;
}


void p18_isp_mass_erase (void)
{
p18_set_tblptr(0x3C0005);
p18_send_cmd_payload(0x0C,0x0F0F);
p18_set_tblptr(0x3C0004);
p18_send_cmd_payload(0x0C,0x8F8F);
p18_send_cmd_payload(0,0x0000);
isp_send(0x00,4);
DLY_ms(20);
isp_send(0x00,16);
}

void p18fj_isp_mass_erase (void)
{
p18_set_tblptr(0x3C0005);
p18_send_cmd_payload(0x0C,0x0101);
p18_set_tblptr(0x3C0004);
p18_send_cmd_payload(0x0C,0x8080);
p18_send_cmd_payload(0,0x0000);
isp_send(0x00,4);
DLY_ms(600);
isp_send(0x00,16);
}


void p18fk_isp_mass_erase (unsigned char data1, unsigned char data2, unsigned char data3)
{
unsigned int tmp1, tmp2, tmp3;
tmp1 = data1;
tmp1 = (tmp1<<8)|data1;
tmp2 = data2;
tmp2 = (tmp2<<8)|data2;
tmp3 = data3;
tmp3 = (tmp3<<8)|data3;
p18_set_tblptr(0x3C0004);
p18_send_cmd_payload(0x0C,tmp3);
p18_set_tblptr(0x3C0005);
p18_send_cmd_payload(0x0C,tmp2);
p18_set_tblptr(0x3C0006);
p18_send_cmd_payload(0x0C,tmp1);
p18_send_cmd_payload(0x00,0);
isp_send(0x00,4);
DLY_ms(5);
isp_send(0x00,16);
}

void p18fk_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
{
unsigned char i;
//DLY_us(3*ISP_CLK_DELAY);
p18_send_cmd_payload(0,0x8E7F);
p18_send_cmd_payload(0,0x9C7F);
p18_send_cmd_payload(0,0x847F);
p18_set_tblptr(addr);
for (i=0;i<n-1;i++)
  p18_send_cmd_payload(0x0D,data[i]);
p18_send_cmd_payload(0x0F,data[n-1]);
p_18_modfied_nop(0);
}

void p18_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
{
unsigned char i;
//DLY_us(3*ISP_CLK_DELAY);
p18_send_cmd_payload(0,0x8EA6);
p18_send_cmd_payload(0,0x9CA6);
p18_send_cmd_payload(0,0x84A6);
p18_set_tblptr(addr);
for (i=0;i<n-1;i++)
  p18_send_cmd_payload(0x0D,data[i]);
p18_send_cmd_payload(0x0F,data[n-1]);
p_18_modfied_nop(1);
}

void p18_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr)
{
unsigned int i;
//DLY_us(3*ISP_CLK_DELAY);
p18_send_cmd_payload(0,0x8EA6);
p18_send_cmd_payload(0,0x8CA6);
p18_send_cmd_payload(0,0x84A6);
p18_set_tblptr(addr);
p18_send_cmd_payload(0x0F,data1);
p_18_modfied_nop(1);
DLY_ms(5);
p18_set_tblptr(addr+1);
i = data2;
i = i << 8;
p18_send_cmd_payload(0x0F,i);
p_18_modfied_nop(1);
DLY_ms(5);
}

void p18fk_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr)
{
unsigned int i;
//DLY_us(3*ISP_CLK_DELAY);
p18_send_cmd_payload(0,0x8E7F);
p18_send_cmd_payload(0,0x8C7F);
p18_set_tblptr(addr);
p18_send_cmd_payload(0x0F,data1);
p_18_modfied_nop(1);
DLY_ms(5);
p18_set_tblptr(addr+1);
i = data2;
i = i << 8;
p18_send_cmd_payload(0x0F,i);
p_18_modfied_nop(1);
DLY_ms(5);
}

void p_18_modfied_nop (unsigned char nop_long)
{
unsigned char i;
ISP_DAT_D_O
ISP_DAT_0
for (i=0;i<3;i++)
  {
  DLY_us(ISP_CLK_DELAY);
  ISP_CLK_1
  DLY_us(ISP_CLK_DELAY);
   ISP_CLK_0
  }
DLY_us(ISP_CLK_DELAY);
ISP_CLK_1
if (nop_long==1) DLY_ms(4);
DLY_ms(1);
ISP_CLK_0
DLY_us(ISP_CLK_DELAY);
isp_send(0x00,16);
}

void p_18_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n)
{
unsigned char i;
unsigned int tmp1,tmp2;
//DLY_us(3*ISP_CLK_DELAY);
p18_set_tblptr(addr);
for (i=0;i<n;i++)
  {
  tmp1 =  p18_read_pgm_byte();
  tmp2 =  p18_read_pgm_byte();
  tmp2 = tmp2<<8;
  data[i] = tmp1|tmp2;
  }
}


void p18_set_tblptr (unsigned long val)
{
  p18_send_cmd_payload(0,0x0E00|((val>>16)&0xFF));
  p18_send_cmd_payload(0,0x6EF8);
  p18_send_cmd_payload(0,0x0E00|((val>>8)&0xFF));
  p18_send_cmd_payload(0,0x6EF7);
  p18_send_cmd_payload(0,0x0E00|((val>>0)&0xFF));
  p18_send_cmd_payload(0,0x6EF6);
}


unsigned char p18_read_pgm_byte (void)
{
  isp_send(0x09,4);
  isp_send(0x00,8);
  return isp_read_8();
}

unsigned int p18_get_ID (void)
{
  unsigned int temp;

  p18_set_tblptr(0x3FFFFE);
  temp = p18_read_pgm_byte();
  temp = temp << 8;
  temp = temp | p18_read_pgm_byte();
  return temp;
}

void p18_send_cmd_payload (unsigned char cmd, unsigned int payload)
{
  isp_send(cmd,4);
  isp_send(payload,16);
  DLY_us(30);
}

unsigned int p18_get_cmd_payload (unsigned char cmd)
{
  isp_send(cmd,4);
  return isp_read_16();
}


unsigned char exit_progmode (void)
{
ISP_MCLR_1
DLY_ms(30);
ISP_MCLR_0
DLY_ms(30);
ISP_MCLR_1
//
// TODO CLK and DAT to HiZ or out 0
//
ISP_DAT_D_O
ISP_CLK_D_O
ISP_CLK_0
ISP_DAT_0

//ISP_DAT_D_I
//ISP_DAT_0
return 0;
}

//***********************************************************************************//

unsigned char p16c_enter_progmode (void)
{
ISP_MCLR_0
DLY_us(300);
isp_send_8_msb('M');
isp_send_8_msb('C');
isp_send_8_msb('H');
isp_send_8_msb('P');
DLY_us(300);
return 0;
}

void p16c_set_pc (unsigned long pc)
{
  isp_send_8_msb(0x80);
  DLY_us(2);
  isp_send_24_msb(pc);

}

void p16c_bulk_erase (void)
{
  isp_send_8_msb(0x18);
  DLY_ms(100);
}

void p16c_load_nvm (unsigned int data, unsigned char inc)
{
  if (inc==0) isp_send_8_msb(0x00);
  else isp_send_8_msb(0x02);
  DLY_us(2);
  isp_send_24_msb(data);
  DLY_us(2);
}

unsigned int p16c_read_data_nvm (unsigned char inc)
{
  unsigned int retval;
  unsigned char tmp;
  if (inc==0) isp_send_8_msb(0xFC);
  else isp_send_8_msb(0xFE);
  DLY_us(2);
  tmp = isp_read_8_msb();
  retval = isp_read_16_msb();
  retval = retval >> 1;
  if (tmp&0x01) retval = retval | 0x8000;
  return retval;
}

void p16c_begin_prog (unsigned char cfg_bit)
{
  isp_send_8_msb(0xE0);
  DLY_ms(3);
  if (cfg_bit!=0) DLY_ms(3);
}

unsigned int p16c_get_ID (void)
{
  p16c_set_pc(0x8006);
  return p16c_read_data_nvm(1);
}

void p16c_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
{
unsigned char i;
//DLY_us(3*ISP_CLK_DELAY);
p16c_set_pc(addr);
for (i=0;i<n;i++)
  p16c_load_nvm(data[i],1);
p16c_set_pc(addr);
p16c_begin_prog(0);
}

void p16c_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n)
{
unsigned char i;
//unsigned int tmp1,tmp2;
//DLY_us(3*ISP_CLK_DELAY);
p16c_set_pc(addr);
for (i=0;i<n;i++)
  data[i] = p16c_read_data_nvm(1);
}

void p16c_isp_write_cfg (unsigned int data, unsigned long addr)
{
//unsigned char i;
//DLY_us(3*ISP_CLK_DELAY);
p16c_set_pc(addr);
p16c_load_nvm(data,0);
p16c_begin_prog(1);
}

void p18q_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
{
unsigned char i;
//DLY_us(3*ISP_CLK_DELAY);
p16c_set_pc(addr);
for (i=0;i<n;i++)
  {
  isp_send_8_msb(0xE0);
  isp_send_24_msb(data[i]);
  DLY_us(65);
  }
}

void p18q_isp_write_cfg (unsigned int data, unsigned long addr)
{
    //unsigned char i;
    //DLY_us(3*ISP_CLK_DELAY);
    p16c_set_pc(addr);
    isp_send_8_msb(0xE0);
    isp_send_24_msb(data);
    DLY_us(65);
}


void usart_tx_b(uint8_t data, __bit flush)
{
    CDC_write(data);
    if (flush) CDC_flush();
}

/* void usart_tx_s(uint8_t * data)
{
    while (*data!=0)
        usart_tx_b(*data++);
} */

/* this goes to interrupt
uint8_t usart_rx_rdy(void)
{
    //if (UCSR0A & _BV(RXC0))
    if (UART1_SR_RXNE == 1)
      return 1;
    else
      return 0;
}

uint8_t usart_rx_b(void)
{
    return (uint8_t) UART1_DR;
}
*/

/* void usart_tx_hexa_8 (uint8_t value)
{
    //uint8_t temp;
    //temp = value;
    usart_tx_b('0');
    usart_tx_b('x');
    usart_tx_hexa_8b(value);
    usart_tx_b(' ');
}

void usart_tx_hexa_8b (uint8_t value)
{
    uint8_t temp;
    temp = value;
    temp = ((temp>>4)&0x0F);
    if (temp<10) temp = temp + '0';
    else temp = temp + 'A'- 10;
    usart_tx_b(temp);
    temp = value;
    temp = ((temp>>0)&0x0F);
    if (temp<10) temp = temp + '0';
    else temp = temp + 'A' - 10;
    usart_tx_b(temp);
}


void usart_tx_hexa_16 (uint16_t value)
{
    usart_tx_b('0');
    usart_tx_b('x');
    usart_tx_hexa_8b((value>>8)&0xFF);
    usart_tx_hexa_8b(value&0xFF);
    usart_tx_b(' ');
} */
