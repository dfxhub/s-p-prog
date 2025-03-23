# Programmer for 8-bit PIC devices built upon CH552E, based on the original AVR version

## Hardware

CH552E.

| CH552E pin       | Target PIC pin | Comment                                                                     |
|------------------|----------------|-----------------------------------------------------------------------------|
| VSS              | GND            | common ground                                                               |
| VDD              | VDD            | optional*- power supply for PIC MCU, you may power target from other source |
| P15              | MCLR           | reset line of PIC MCU                                                       |
| P17              | ICSPDAT        | programming data line                                                       |
| P16              | ICSPCLK        | programming clock line                                                      |

## Software

See orginal AVR version https://github.com/jaromir-sukuba/a-p-prog, for CH552 port templates from https://github.com/wagiminator/MCU-Templates/tree/main/CH552 was used.

### Added experimental options

-x<br>
&emsp;reset CH552 to bootloader (DFU).<br>

## Supported devices

See orginal AVR version https://github.com/jaromir-sukuba/a-p-prog

Tested by myself:

DEVICE|TESTED|NOTES
-----|-----|-----
PIC12F1822|YES|
PIC16F18326|YES|

The whole project is licensed under MIT license, see LICENSE.md file.

