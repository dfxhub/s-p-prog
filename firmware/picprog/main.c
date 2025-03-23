#include "system.h"
#include "delay.h"
#include "gpio.h"
#include "usb_cdc.h"

#include "isp.h"

/*
                  1        10
                ---------------
          LED - | P14     V33 |
MCLR ---- DTR - | P15     Vcc |
ICSPCLK - TXD - | P16     GND |
ICSPDAT - RXD - | P17     UD- |
                | RST     UD+ |
                ---------------
*/

unsigned char __sdcc_external_startup (void) __nonbanked {
  return 0;
}

void USB_interrupt(void);
void USB_ISR(void) __interrupt(INT_NO_USB) {
    USB_interrupt();
}

void main(void)
{
    CLK_config();
    DLY_ms(20);

    PIN_output(P14);
    PIN_output(P15);
    PIN_output(P16);
    PIN_output(P17);
    PIN_low(P14);

    CDC_init();

    DLY_ms(20);

    //WAKE_USB_enable();
    //SLEEP_now();

    ISP();
    /*while(1) {
        if(CDC_available()) {
            PIN_input_PU(P14);
            CDC_read();
            CDC_println("Hello, World!");
            CDC_flush();
            PIN_input(P14);
            //WAKE_USB_enable();
            //SLEEP_now();
        }
        //DLY_ms(1500);
    }*/

}
