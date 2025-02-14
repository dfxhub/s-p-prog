# Programmer for 8-bit PIC devices built upon STM8S003F3P6, based on the original AVR version

## Hardware

STM8S003F3P6, any USB to UART connected to UART1 PD5/PD6 (TX/RX).

| STM8S003F3P6 pin | Target PIC pin | Comment                                                                     |
|------------------|----------------|-----------------------------------------------------------------------------|
| VSS              | GND            | common ground                                                               |
| VDD              | VDD            | optional*- power supply for PIC MCU, you may power target from other source |
| PC5              | MCLR           | reset line of PIC MCU                                                       |
| PC4              | PGD            | programming data line                                                       |
| PC3              | PGC            | programming clock line                                                      |

## Software

See orginal AVR version https://github.com/jaromir-sukuba/a-p-prog

### Added experimental options

-r<br>
&emsp;read flash, eeprom (only for 12f1822 and 16f18326 for now) and config.<br>
&emsp;Example: `$ ./pp3 -c /dev/ttyACM0 -t 12f1822 -r`

-b n<br>
&emsp;set baud rate. Default 115200. Not implemented yet.


## Supported devices

See orginal AVR version https://github.com/jaromir-sukuba/a-p-prog

Tested by myself:

DEVICE|TESTED|NOTES
-----|-----|-----
PIC12F1822|YES|
PIC16F18326|YES|

The whole project is licensed under MIT license, see LICENSE.md file.

