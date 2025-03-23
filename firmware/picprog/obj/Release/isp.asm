;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module isp
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _p16c_get_ID
	.globl _isp_send_24_msb
	.globl _CDC_write
	.globl _CDC_read
	.globl _CDC_flush
	.globl _DLY_ms
	.globl _DLY_us
	.globl _PP37
	.globl _PP36
	.globl _PP35
	.globl _PP34
	.globl _PP33
	.globl _PP32
	.globl _PP31
	.globl _PP30
	.globl _PP17
	.globl _PP16
	.globl _PP15
	.globl _PP14
	.globl _PP13
	.globl _PP12
	.globl _PP11
	.globl _PP10
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _flash_buffer
	.globl _rx_message
	.globl _EP2_buffer
	.globl _EP1_buffer
	.globl _EP0_buffer
	.globl _addr
	.globl _cfg_val
	.globl _eeprom_buf
	.globl _rx_message_ptr
	.globl _rx_state
	.globl _bytes_to_receive
	.globl _i
	.globl _rx
	.globl _ISP
	.globl _rx_state_machine
	.globl _isp_read_pgm
	.globl _isp_read_eeprom
	.globl _isp_write_pgm
	.globl _isp_send_config
	.globl _isp_mass_erase
	.globl _isp_reset_pointer
	.globl _isp_reset_pointer_16d
	.globl _isp_set_pointer_16d
	.globl _isp_inc_pointer
	.globl _isp_read_16
	.globl _isp_read_8
	.globl _isp_read_14s
	.globl _isp_send
	.globl _isp_send_8_msb
	.globl _isp_read_8_msb
	.globl _isp_read_16_msb
	.globl _enter_progmode
	.globl _p18_enter_progmode
	.globl _p18_isp_mass_erase
	.globl _p18fj_isp_mass_erase
	.globl _p18fk_isp_mass_erase
	.globl _p18fk_isp_write_pgm
	.globl _p18_isp_write_pgm
	.globl _p18_isp_write_cfg
	.globl _p18fk_isp_write_cfg
	.globl _p_18_modfied_nop
	.globl _p_18_isp_read_pgm
	.globl _p18_set_tblptr
	.globl _p18_read_pgm_byte
	.globl _p18_get_ID
	.globl _p18_send_cmd_payload
	.globl _p18_get_cmd_payload
	.globl _exit_progmode
	.globl _p16c_enter_progmode
	.globl _p16c_set_pc
	.globl _p16c_bulk_erase
	.globl _p16c_load_nvm
	.globl _p16c_read_data_nvm
	.globl _p16c_begin_prog
	.globl _p16c_isp_write_pgm
	.globl _p16c_isp_read_pgm
	.globl _p16c_isp_write_cfg
	.globl _p18q_isp_write_pgm
	.globl _p18q_isp_write_cfg
	.globl _usart_tx_b
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
_PP10	=	0x0090
_PP11	=	0x0091
_PP12	=	0x0092
_PP13	=	0x0093
_PP14	=	0x0094
_PP15	=	0x0095
_PP16	=	0x0096
_PP17	=	0x0097
_PP30	=	0x00b0
_PP31	=	0x00b1
_PP32	=	0x00b2
_PP33	=	0x00b3
_PP34	=	0x00b4
_PP35	=	0x00b5
_PP36	=	0x00b6
_PP37	=	0x00b7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rx::
	.ds 1
_i::
	.ds 1
_bytes_to_receive::
	.ds 1
_rx_state::
	.ds 1
_rx_message_ptr::
	.ds 1
_eeprom_buf::
	.ds 3
_cfg_val::
	.ds 2
_addr::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_EP0_buffer	=	0x0000
_EP1_buffer	=	0x000a
_EP2_buffer	=	0x0014
_rx_message::
	.ds 140
_flash_buffer::
	.ds 128
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	isp.c:13: unsigned char rx = 0;
	mov	_rx,#0x00
;	isp.c:14: unsigned char i = 0;
	mov	_i,#0x00
;	isp.c:16: unsigned char bytes_to_receive = 0;
	mov	_bytes_to_receive,#0x00
;	isp.c:17: unsigned char rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:19: unsigned char rx_message_ptr = 0;
	mov	_rx_message_ptr,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP'
;------------------------------------------------------------
;	isp.c:25: void ISP(void) {
;	-----------------------------------------
;	 function ISP
;	-----------------------------------------
_ISP:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	isp.c:27: ISP_CLK_D_O
	anl	_P1_MOD_OC,#0xbf
	orl	_P1_DIR_PU,#0x40
;	isp.c:28: ISP_DAT_D_O
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	isp.c:30: ISP_DAT_0
;	assignBit
	clr	_PP17
;	isp.c:31: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:32: ISP_MCLR_D_O
	anl	_P1_MOD_OC,#0xdf
	orl	_P1_DIR_PU,#0x20
;	isp.c:33: ISP_MCLR_1
;	assignBit
	setb	_PP15
;	isp.c:35: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:37: PIN_high(P14);
;	assignBit
	setb	_PP14
;	isp.c:38: DLY_ms(1000);
	mov	dptr,#0x03e8
	lcall	_DLY_ms
;	isp.c:39: PIN_low(P14);
;	assignBit
	clr	_PP14
;	isp.c:41: while(1) {
00152$:
;	isp.c:42: if(CDC_available()) {
	mov	dptr,#_CDC_readByteCount
	movx	a,@dptr
	jz	00152$
;	isp.c:45: PP14 = 1;
;	assignBit
	setb	_PP14
;	isp.c:46: rx = CDC_read();
	lcall	_CDC_read
	mov	_rx,dpl
;	isp.c:48: rx_state = rx_state_machine (rx_state,rx);
	push	_rx
	mov	dpl,_rx_state
	lcall	_rx_state_machine
	mov	_rx_state,dpl
	dec	sp
;	isp.c:49: if (rx_state==3) {
	mov	a,#0x03
	cjne	a,_rx_state,00403$
	sjmp	00404$
00403$:
	ljmp	00148$
00404$:
;	isp.c:51: switch (rx_message[0]) {
	mov	dptr,#_rx_message
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00405$
	ljmp	00101$
00405$:
	cjne	r7,#0x02,00406$
	ljmp	00102$
00406$:
	cjne	r7,#0x03,00407$
	ljmp	00103$
00407$:
	cjne	r7,#0x04,00408$
	ljmp	00104$
00408$:
	cjne	r7,#0x05,00409$
	ljmp	00105$
00409$:
	cjne	r7,#0x06,00410$
	ljmp	00107$
00410$:
	cjne	r7,#0x07,00411$
	ljmp	00109$
00411$:
	cjne	r7,#0x08,00412$
	ljmp	00110$
00412$:
	cjne	r7,#0x09,00413$
	ljmp	00112$
00413$:
	cjne	r7,#0x0a,00414$
	ljmp	00114$
00414$:
	cjne	r7,#0x0c,00415$
	ljmp	00121$
00415$:
	cjne	r7,#0x0d,00416$
	ljmp	00114$
00416$:
	cjne	r7,#0x10,00417$
	ljmp	00122$
00417$:
	cjne	r7,#0x11,00418$
	ljmp	00123$
00418$:
	cjne	r7,#0x12,00419$
	ljmp	00125$
00419$:
	cjne	r7,#0x13,00420$
	ljmp	00127$
00420$:
	cjne	r7,#0x14,00421$
	ljmp	00128$
00421$:
	cjne	r7,#0x23,00422$
	ljmp	00129$
00422$:
	cjne	r7,#0x30,00423$
	ljmp	00130$
00423$:
	cjne	r7,#0x31,00424$
	ljmp	00131$
00424$:
	cjne	r7,#0x32,00425$
	ljmp	00133$
00425$:
	cjne	r7,#0x40,00426$
	ljmp	00134$
00426$:
	cjne	r7,#0x41,00427$
	ljmp	00135$
00427$:
	cjne	r7,#0x42,00428$
	ljmp	00137$
00428$:
	cjne	r7,#0x43,00429$
	ljmp	00139$
00429$:
	cjne	r7,#0x44,00430$
	ljmp	00140$
00430$:
	cjne	r7,#0x45,00431$
	ljmp	00141$
00431$:
	cjne	r7,#0x46,00432$
	ljmp	00142$
00432$:
	cjne	r7,#0xff,00433$
	ljmp	00144$
00433$:
	ljmp	00148$
;	isp.c:53: case 0x01: // prog_enter_progmode
00101$:
;	isp.c:54: enter_progmode();
	lcall	_enter_progmode
;	isp.c:55: usart_tx_b (0x81, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x81
	lcall	_usart_tx_b
;	isp.c:56: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:57: break;
	ljmp	00148$
;	isp.c:59: case 0x02: // prog_exit_progmode
00102$:
;	isp.c:60: exit_progmode();
	lcall	_exit_progmode
;	isp.c:61: usart_tx_b (0x82, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x82
	lcall	_usart_tx_b
;	isp.c:62: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:63: break;
	ljmp	00148$
;	isp.c:65: case 0x03: // p16a_rst_pointer A
00103$:
;	isp.c:66: isp_reset_pointer();
	lcall	_isp_reset_pointer
;	isp.c:67: usart_tx_b (0x83, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x83
	lcall	_usart_tx_b
;	isp.c:68: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:69: break;
	ljmp	00148$
;	isp.c:71: case 0x04: // p16a_load_config
00104$:
;	isp.c:72: isp_send_config(0);
	mov	dptr,#0x0000
	lcall	_isp_send_config
;	isp.c:73: usart_tx_b (0x84, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x84
	lcall	_usart_tx_b
;	isp.c:74: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:75: break;
	ljmp	00148$
;	isp.c:77: case 0x05: // p16a_inc_pointer
00105$:
;	isp.c:78: for (i=0;i<rx_message[2];i++)
	mov	_i,#0x00
00155$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_i
	subb	a,r7
	jnc	00106$
;	isp.c:79: isp_inc_pointer();
	lcall	_isp_inc_pointer
;	isp.c:78: for (i=0;i<rx_message[2];i++)
	inc	_i
	sjmp	00155$
00106$:
;	isp.c:80: usart_tx_b (0x85, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x85
	lcall	_usart_tx_b
;	isp.c:81: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:82: break;
	ljmp	00148$
;	isp.c:84: case 0x06: // p16a_read_page
00107$:
;	isp.c:85: isp_read_pgm(flash_buffer, rx_message[2]);
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	push	ar7
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_isp_read_pgm
	dec	sp
;	isp.c:86: usart_tx_b(0x86, FALSE);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x86
	lcall	_usart_tx_b
;	isp.c:87: for (i = 0; i < rx_message[2]; i++) {
	mov	_i,#0x00
00158$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_i
	subb	a,r7
	jnc	00108$
;	isp.c:91: usart_tx_b(flash_buffer[i] & 0xFF, FALSE);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	dpl,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	b[0]
	mov	bits,b
	mov	dpl,r7
	lcall	_usart_tx_b
;	isp.c:92: usart_tx_b(flash_buffer[i] >> 8, FALSE);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	dpl,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
	clr	b[0]
	mov	bits,b
	lcall	_usart_tx_b
;	isp.c:87: for (i = 0; i < rx_message[2]; i++) {
	inc	_i
	sjmp	00158$
00108$:
;	isp.c:94: CDC_flush();
	lcall	_CDC_flush
;	isp.c:95: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:96: break;
	ljmp	00148$
;	isp.c:98: case 0x07: // p16a_mass_erase
00109$:
;	isp.c:99: isp_mass_erase();
	lcall	_isp_mass_erase
;	isp.c:100: usart_tx_b (0x87, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x87
	lcall	_usart_tx_b
;	isp.c:101: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:102: break;
	ljmp	00148$
;	isp.c:104: case 0x08: // p16a_program_page
00110$:
;	isp.c:105: for (i = 0; i < rx_message[2] / 2; i++)
	mov	_i,#0x00
00161$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r4,_i
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	isp.c:106: flash_buffer[i] = (((unsigned int)(rx_message[(2 * i) + 1 + 4])) << 8) +
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	r2,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,#0x05
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	a,r0
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r1
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
;	isp.c:107: (((unsigned int)(rx_message[(2 * i) + 0 + 4])) << 0);
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	isp.c:105: for (i = 0; i < rx_message[2] / 2; i++)
	inc	_i
	ljmp	00161$
00111$:
;	isp.c:108: isp_write_pgm(flash_buffer, rx_message[2] / 2, rx_message[3]);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar6
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_isp_write_pgm
	dec	sp
	dec	sp
;	isp.c:110: usart_tx_b(0x88, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x88
	lcall	_usart_tx_b
;	isp.c:111: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:112: break;
	ljmp	00148$
;	isp.c:114: case 0x09: // p16a_rst_pointer D
00112$:
;	isp.c:115: isp_reset_pointer_16d();
	lcall	_isp_reset_pointer_16d
;	isp.c:116: usart_tx_b (0x89, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x89
	lcall	_usart_tx_b
;	isp.c:117: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:118: break;
	ljmp	00148$
;	isp.c:121: case 0x0d: // p16a_read_eeprom D
00114$:
;	isp.c:122: eeprom_buf = (unsigned char *)flash_buffer;
	mov	_eeprom_buf,#_flash_buffer
	mov	(_eeprom_buf + 1),#(_flash_buffer >> 8)
	mov	(_eeprom_buf + 2),#0x00
;	isp.c:123: if (rx_message[0] == 0x0a) {
	mov	dptr,#_rx_message
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00118$
;	isp.c:124: isp_read_eeprom(eeprom_buf, rx_message[2], 'a');
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x61
	push	acc
	push	ar6
	mov	dpl,_eeprom_buf
	mov	dph,(_eeprom_buf + 1)
	mov	b,(_eeprom_buf + 2)
	lcall	_isp_read_eeprom
	dec	sp
	dec	sp
;	isp.c:125: usart_tx_b(0x8a, FALSE);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x8a
	lcall	_usart_tx_b
	sjmp	00119$
00118$:
;	isp.c:127: else if (rx_message[0] == 0x0d) {
	cjne	r7,#0x0d,00119$
;	isp.c:128: isp_read_eeprom(eeprom_buf, rx_message[2], 'd');
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x64
	push	acc
	push	ar7
	mov	dpl,_eeprom_buf
	mov	dph,(_eeprom_buf + 1)
	mov	b,(_eeprom_buf + 2)
	lcall	_isp_read_eeprom
	dec	sp
	dec	sp
;	isp.c:129: usart_tx_b(0x8d, FALSE);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x8d
	lcall	_usart_tx_b
00119$:
;	isp.c:131: for (i = 0; i < rx_message[2]; i++) {
	mov	_i,#0x00
00164$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_i
	subb	a,r7
	jnc	00120$
;	isp.c:132: usart_tx_b(*eeprom_buf++, FALSE);
	mov	r5,_eeprom_buf
	mov	r6,(_eeprom_buf + 1)
	mov	r7,(_eeprom_buf + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	_eeprom_buf
	clr	a
	cjne	a,_eeprom_buf,00442$
	inc	(_eeprom_buf + 1)
00442$:
	clr	b[0]
	mov	bits,b
	mov	dpl,r5
	lcall	_usart_tx_b
;	isp.c:131: for (i = 0; i < rx_message[2]; i++) {
	inc	_i
	sjmp	00164$
00120$:
;	isp.c:134: CDC_flush();
	lcall	_CDC_flush
;	isp.c:135: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:136: break;
	ljmp	00148$
;	isp.c:138: case 0x0c: // p16d_set_pointer
00121$:
;	isp.c:140: isp_set_pointer_16d((uint32_t)rx_message[2] + (uint32_t)(rx_message[3] << 8));
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	ar0,r3
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_isp_set_pointer_16d
;	isp.c:141: usart_tx_b (0x8c, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x8c
	lcall	_usart_tx_b
;	isp.c:142: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:143: break;
	ljmp	00148$
;	isp.c:145: case 0x10: // prog_enter_progmode
00122$:
;	isp.c:146: p18_enter_progmode();
	lcall	_p18_enter_progmode
;	isp.c:147: usart_tx_b (0x90, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x90
	lcall	_usart_tx_b
;	isp.c:148: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:149: break;
	ljmp	00148$
;	isp.c:151: case 0x11: // p18a_read_page
00123$:
;	isp.c:152: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:153: p_18_isp_read_pgm (flash_buffer, addr, rx_message[2]);
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_p_18_isp_read_pgm
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:154: usart_tx_b (0x91, FALSE);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x91
	lcall	_usart_tx_b
;	isp.c:155: for (i=0;i<rx_message[2];i++) {
	mov	_i,#0x00
00167$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_i
	subb	a,r7
	jnc	00124$
;	isp.c:156: usart_tx_b (flash_buffer[i]&0xFF, FALSE);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	dpl,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	b[0]
	mov	bits,b
	mov	dpl,r7
	lcall	_usart_tx_b
;	isp.c:157: usart_tx_b (flash_buffer[i]>>8, FALSE);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	dpl,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
	clr	b[0]
	mov	bits,b
	lcall	_usart_tx_b
;	isp.c:155: for (i=0;i<rx_message[2];i++) {
	inc	_i
	sjmp	00167$
00124$:
;	isp.c:159: CDC_flush();
	lcall	_CDC_flush
;	isp.c:160: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:161: break;
	ljmp	00148$
;	isp.c:163: case 0x12: // p18a_write_page
00125$:
;	isp.c:164: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:165: for (i=0;i<rx_message[2]/2;i++)
	mov	_i,r7
00170$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r4,_i
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
;	isp.c:166: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	r2,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,#0x07
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	a,r0
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r1
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	isp.c:165: for (i=0;i<rx_message[2]/2;i++)
	inc	_i
	ljmp	00170$
00126$:
;	isp.c:167: p18_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
	push	ar6
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_p18_isp_write_pgm
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:168: usart_tx_b (0x92, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x92
	lcall	_usart_tx_b
;	isp.c:169: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:170: break;
	ljmp	00148$
;	isp.c:172: case 0x13: // p18a_mass_erase
00127$:
;	isp.c:173: p18_isp_mass_erase();
	lcall	_p18_isp_mass_erase
;	isp.c:174: usart_tx_b (0x93, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x93
	lcall	_usart_tx_b
;	isp.c:175: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:176: break;
	ljmp	00148$
;	isp.c:178: case 0x14: // p18a_write_cfg
00128$:
;	isp.c:179: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:180: p18_isp_write_cfg (rx_message[6],rx_message[7], addr);
	mov	dptr,#(_rx_message + 0x0007)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_rx_message + 0x0006)
	movx	a,@dptr
	mov	r6,a
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	push	ar7
	mov	dpl,r6
	lcall	_p18_isp_write_cfg
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:181: usart_tx_b (0x94, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x94
	lcall	_usart_tx_b
;	isp.c:182: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:183: break;
	ljmp	00148$
;	isp.c:185: case 0x23: // p18b_mass_erase
00129$:
;	isp.c:186: p18fj_isp_mass_erase();
	lcall	_p18fj_isp_mass_erase
;	isp.c:187: usart_tx_b (0xA3, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xa3
	lcall	_usart_tx_b
;	isp.c:188: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:189: break;
	ljmp	00148$
;	isp.c:191: case 0x30: // p18d_mass_erase_part
00130$:
;	isp.c:192: p18fk_isp_mass_erase (rx_message[2], rx_message[3], rx_message[4]);
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	mov	dpl,r5
	lcall	_p18fk_isp_mass_erase
	dec	sp
	dec	sp
;	isp.c:193: usart_tx_b (0xB0, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xb0
	lcall	_usart_tx_b
;	isp.c:194: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:195: break;
	ljmp	00148$
;	isp.c:197: case 0x31: // p18d_write_page
00131$:
;	isp.c:198: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:199: for (i=0;i<rx_message[2]/2;i++)
	mov	_i,r7
00173$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r4,_i
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00132$
;	isp.c:200: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	r2,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,#0x07
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	a,r0
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r1
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	isp.c:199: for (i=0;i<rx_message[2]/2;i++)
	inc	_i
	ljmp	00173$
00132$:
;	isp.c:201: p18fk_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
	push	ar6
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_p18fk_isp_write_pgm
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:202: usart_tx_b (0xB1, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xb1
	lcall	_usart_tx_b
;	isp.c:203: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:204: break;
	ljmp	00148$
;	isp.c:206: case 0x32: // p18d_write_cfg
00133$:
;	isp.c:207: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:208: p18fk_isp_write_cfg (rx_message[6],rx_message[7], addr);
	mov	dptr,#(_rx_message + 0x0007)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_rx_message + 0x0006)
	movx	a,@dptr
	mov	r6,a
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	push	ar7
	mov	dpl,r6
	lcall	_p18fk_isp_write_cfg
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:209: usart_tx_b (0xB2, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xb2
	lcall	_usart_tx_b
;	isp.c:210: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:211: break;
	ljmp	00148$
;	isp.c:213: case 0x40: // prog_enter_progmode
00134$:
;	isp.c:214: p16c_enter_progmode();
	lcall	_p16c_enter_progmode
;	isp.c:215: usart_tx_b (0xC0, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xc0
	lcall	_usart_tx_b
;	isp.c:216: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:217: break;
	ljmp	00148$
;	isp.c:219: case 0x41: // p16c_read_page
00135$:
;	isp.c:220: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:221: p16c_isp_read_pgm (flash_buffer, addr, rx_message[2]);
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_p16c_isp_read_pgm
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:222: usart_tx_b (0xC1, FALSE);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0xc1
	lcall	_usart_tx_b
;	isp.c:223: for (i=0;i<rx_message[2];i++) {
	mov	_i,#0x00
00176$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_i
	subb	a,r7
	jnc	00136$
;	isp.c:224: usart_tx_b (flash_buffer[i]&0xFF, FALSE);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	dpl,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	b[0]
	mov	bits,b
	mov	dpl,r7
	lcall	_usart_tx_b
;	isp.c:225: usart_tx_b (flash_buffer[i]>>8, FALSE);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	dpl,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
	clr	b[0]
	mov	bits,b
	lcall	_usart_tx_b
;	isp.c:223: for (i=0;i<rx_message[2];i++) {
	inc	_i
	sjmp	00176$
00136$:
;	isp.c:227: CDC_flush();
	lcall	_CDC_flush
;	isp.c:228: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:229: break;
	ljmp	00148$
;	isp.c:231: case 0x42: // p16c_write_page
00137$:
;	isp.c:232: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:233: for (i=0;i<rx_message[2]/2;i++)
	mov	_i,r7
00179$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r4,_i
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00138$
;	isp.c:234: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	r2,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,#0x07
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	a,r0
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r1
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	isp.c:233: for (i=0;i<rx_message[2]/2;i++)
	inc	_i
	ljmp	00179$
00138$:
;	isp.c:235: p16c_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
	push	ar6
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_p16c_isp_write_pgm
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:236: usart_tx_b (0xC2, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xc2
	lcall	_usart_tx_b
;	isp.c:237: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:238: break;
	ljmp	00148$
;	isp.c:240: case 0x43: // p16c_mass_erase
00139$:
;	isp.c:241: p16c_set_pc (0x8000);
	mov	dptr,#0x8000
	clr	a
	mov	b,a
	lcall	_p16c_set_pc
;	isp.c:242: p16c_bulk_erase ();
	lcall	_p16c_bulk_erase
;	isp.c:243: usart_tx_b (0xC3, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xc3
	lcall	_usart_tx_b
;	isp.c:244: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:245: break;
	ljmp	00148$
;	isp.c:247: case 0x44: // p16c_write_single_cfg
00140$:
;	isp.c:248: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:249: cfg_val = rx_message[6];
	mov	dptr,#(_rx_message + 0x0006)
	movx	a,@dptr
	mov	r7,a
;	isp.c:250: cfg_val = (cfg_val<<8) + rx_message[7];
	mov	_cfg_val,r7
	mov	(_cfg_val + 1),r3
	mov	r6,#0x00
	mov	dptr,#(_rx_message + 0x0007)
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r6
	mov	_cfg_val,a
	mov	a,r4
	addc	a,r7
	mov	(_cfg_val + 1),a
;	isp.c:251: p16c_isp_write_cfg (cfg_val, addr);
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dpl,_cfg_val
	mov	dph,(_cfg_val + 1)
	lcall	_p16c_isp_write_cfg
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	isp.c:252: usart_tx_b (0xC4, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xc4
	lcall	_usart_tx_b
;	isp.c:253: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:254: break;
	ljmp	00148$
;	isp.c:256: case 0x45: // p18q_write_single_cfg
00141$:
;	isp.c:257: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:258: cfg_val = rx_message[6];
	mov	dptr,#(_rx_message + 0x0006)
	movx	a,@dptr
	mov	r7,a
;	isp.c:259: cfg_val = (cfg_val<<8) + rx_message[7];
	mov	_cfg_val,r7
	mov	(_cfg_val + 1),r3
	mov	r6,#0x00
	mov	dptr,#(_rx_message + 0x0007)
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r6
	mov	_cfg_val,a
	mov	a,r4
	addc	a,r7
	mov	(_cfg_val + 1),a
;	isp.c:260: p18q_isp_write_cfg (cfg_val, addr);
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dpl,_cfg_val
	mov	dph,(_cfg_val + 1)
	lcall	_p18q_isp_write_cfg
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	isp.c:261: usart_tx_b (0xC5, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xc5
	lcall	_usart_tx_b
;	isp.c:262: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:263: break;
	ljmp	00148$
;	isp.c:265: case 0x46: // p18q_write_page
00142$:
;	isp.c:266: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
	mov	dptr,#(_rx_message + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r7,#0x00
	mov	dptr,#(_rx_message + 0x0004)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_rx_message + 0x0005)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	a,r0
	add	a,r7
	mov	_addr,a
	mov	a,r1
	addc	a,r6
	mov	(_addr + 1),a
	mov	a,r2
	addc	a,r5
	mov	(_addr + 2),a
	mov	a,r3
	addc	a,r4
	mov	(_addr + 3),a
;	isp.c:267: for (i=0;i<rx_message[2]/2;i++)
	mov	_i,r7
00182$:
	mov	dptr,#(_rx_message + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	r4,_i
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00143$
;	isp.c:268: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
	mov	a,_i
	mov	b,#0x02
	mul	ab
	add	a,#_flash_buffer
	mov	r2,a
	mov	a,#(_flash_buffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,#0x07
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	a,r0
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r1
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r0,#0x00
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r4
	add	a,#_rx_message
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	isp.c:267: for (i=0;i<rx_message[2]/2;i++)
	inc	_i
	ljmp	00182$
00143$:
;	isp.c:269: p18q_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
	push	ar6
	push	_addr
	push	(_addr + 1)
	push	(_addr + 2)
	push	(_addr + 3)
	mov	dptr,#_flash_buffer
	mov	b,#0x00
	lcall	_p18q_isp_write_pgm
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	isp.c:270: usart_tx_b (0xC6, TRUE);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0xc6
	lcall	_usart_tx_b
;	isp.c:271: rx_state = 0;
	mov	_rx_state,#0x00
;	isp.c:272: break;
;	isp.c:274: case 0xff: // reboot to bootloader
	sjmp	00148$
00144$:
;	isp.c:275: USB_INT_EN = 0;
	mov	_USB_INT_EN,#0x00
;	isp.c:276: USB_CTRL = 0x06;
	mov	_USB_CTRL,#0x06
;	isp.c:277: DLY_ms(100);
	mov	dptr,#0x0064
	lcall	_DLY_ms
;	isp.c:278: EA = 0;
;	assignBit
	clr	_EA
;	isp.c:279: __asm__ ("ljmp 0x3800");
	ljmp	0x3800
;	isp.c:284: }
00148$:
;	isp.c:288: PP14 = 0;
;	assignBit
	clr	_PP14
;	isp.c:292: }
	ljmp	00152$
;------------------------------------------------------------
;Allocation info for local variables in function 'rx_state_machine'
;------------------------------------------------------------
;rx_char                   Allocated to stack - _bp -3
;state                     Allocated to registers r7 
;------------------------------------------------------------
;	isp.c:294: unsigned char rx_state_machine (unsigned char state, unsigned char rx_char)
;	-----------------------------------------
;	 function rx_state_machine
;	-----------------------------------------
_rx_state_machine:
	push	_bp
	mov	_bp,sp
;	isp.c:296: if (state==0)
	mov	a,dpl
	mov	r7,a
	jnz	00102$
;	isp.c:299: rx_message[rx_message_ptr++] = rx_char;
	mov	_rx_message_ptr,#0x01
	mov	dptr,#_rx_message
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
;	isp.c:300: return 1;
	mov	dpl,#0x01
	sjmp	00111$
00102$:
;	isp.c:302: if (state==1)
	cjne	r7,#0x01,00106$
;	isp.c:304: bytes_to_receive = rx_char;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	_bytes_to_receive,r6
;	isp.c:305: rx_message[rx_message_ptr++] = rx_char;
	mov	r5,_rx_message_ptr
	inc	_rx_message_ptr
	mov	a,r5
	add	a,#_rx_message
	mov	dpl,a
	clr	a
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
;	isp.c:306: if (bytes_to_receive==0) return 3;
	mov	a,_bytes_to_receive
	jnz	00104$
	mov	dpl,#0x03
	sjmp	00111$
00104$:
;	isp.c:307: return 2;
	mov	dpl,#0x02
	sjmp	00111$
00106$:
;	isp.c:309: if (state==2)
	cjne	r7,#0x02,00110$
;	isp.c:311: rx_message[rx_message_ptr++] = rx_char;
	mov	r6,_rx_message_ptr
	inc	_rx_message_ptr
	mov	a,r6
	add	a,#_rx_message
	mov	dpl,a
	clr	a
	addc	a,#(_rx_message >> 8)
	mov	dph,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
;	isp.c:312: bytes_to_receive--;
;	isp.c:313: if (bytes_to_receive==0) return 3;
	djnz	_bytes_to_receive,00110$
	mov	dpl,#0x03
	sjmp	00111$
00110$:
;	isp.c:315: return state;
	mov	dpl,r7
00111$:
;	isp.c:316: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_pgm'
;------------------------------------------------------------
;num_words                 Allocated to stack - _bp -3
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	isp.c:319: void isp_read_pgm (unsigned int *data, unsigned char num_words) {
;	-----------------------------------------
;	 function isp_read_pgm
;	-----------------------------------------
_isp_read_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	isp.c:323: for (i = 0; i < num_words; i++) {
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00105$
;	isp.c:324: isp_send(0x04, 6);
	push	ar4
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0004
	lcall	_isp_send
	dec	sp
	pop	ar4
;	isp.c:325: data[i] = isp_read_14s();
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_isp_read_14s
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	isp.c:326: isp_send(0x06, 6);
	push	ar4
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0006
	lcall	_isp_send
	dec	sp
	pop	ar4
;	isp.c:323: for (i = 0; i < num_words; i++) {
	inc	r4
	sjmp	00103$
00105$:
;	isp.c:328: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_eeprom'
;------------------------------------------------------------
;n                         Allocated to stack - _bp -3
;t                         Allocated to stack - _bp -4
;data                      Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;------------------------------------------------------------
;	isp.c:331: void isp_read_eeprom (unsigned char *data, unsigned char n, unsigned char t) {
;	-----------------------------------------
;	 function isp_read_eeprom
;	-----------------------------------------
_isp_read_eeprom:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
;	isp.c:335: for (i = 0; i < n; i++) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	a
	cjne	@r0,#0x61,00129$
	inc	a
00129$:
	mov	r4,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	a
	cjne	@r0,#0x64,00131$
	inc	a
00131$:
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00108$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00133$
	ljmp	00110$
00133$:
;	isp.c:336: if (t == 'a')
	mov	a,r4
	jz	00104$
;	isp.c:337: isp_send(0x05, 6); // read from data mem _A
	push	ar4
	push	ar3
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0005
	lcall	_isp_send
	dec	sp
	pop	ar3
	pop	ar4
	sjmp	00105$
00104$:
;	isp.c:338: else if (t == 'd')
	mov	a,r3
	jz	00105$
;	isp.c:339: isp_send(0x04, 6); // read _D
	push	ar4
	push	ar3
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0004
	lcall	_isp_send
	dec	sp
	pop	ar3
	pop	ar4
00105$:
;	isp.c:340: data[i] = (unsigned char)(isp_read_14s() & 0xff); // only 8 lsb is valid data - data(8) zero(6)
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_isp_read_14s
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	isp.c:341: isp_send(0x06, 6); // inc address
	push	ar4
	push	ar3
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0006
	lcall	_isp_send
	dec	sp
	pop	ar3
	pop	ar4
;	isp.c:335: for (i = 0; i < n; i++) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	pop	ar3
	ljmp	00108$
00110$:
;	isp.c:343: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_write_pgm'
;------------------------------------------------------------
;n                         Allocated to stack - _bp -3
;slow                      Allocated to stack - _bp -4
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	isp.c:357: void isp_write_pgm (unsigned int *data, unsigned char n, unsigned char slow) {
;	-----------------------------------------
;	 function isp_write_pgm
;	-----------------------------------------
_isp_write_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	isp.c:361: for (i = 0; i < n; i++) {
	mov	r4,#0x00
00108$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jc	00129$
	ljmp	00103$
00129$:
;	isp.c:362: isp_send(0x02, 6); // load data cmd
	push	ar4
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0002
	lcall	_isp_send
	dec	sp
	pop	ar4
;	isp.c:363: isp_send(data[i] << 1, 16); // data
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	dpl,a
	mov	a,r3
	rlc	a
	mov	dph,a
	push	ar4
	mov	a,#0x10
	push	acc
	lcall	_isp_send
	dec	sp
	pop	ar4
;	isp.c:364: if (i != (n - 1))
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00130$
	dec	r7
00130$:
	mov	ar3,r4
	mov	r5,#0x00
	mov	a,r3
	cjne	a,ar6,00131$
	mov	a,r5
	cjne	a,ar7,00131$
	sjmp	00109$
00131$:
;	isp.c:365: isp_send(0x06, 6); // inc PC pointer
	push	ar4
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0006
	lcall	_isp_send
	dec	sp
	pop	ar4
00109$:
;	isp.c:361: for (i = 0; i < n; i++) {
	inc	r4
	ljmp	00108$
00103$:
;	isp.c:367: isp_send(0x08, 6); // begin internal programming cmd, Tpint
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0008
	lcall	_isp_send
	dec	sp
;	isp.c:368: if (slow == 1) // config words
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x01,00105$
;	isp.c:369: DLY_ms(5);
	mov	dptr,#0x0005
	lcall	_DLY_ms
	sjmp	00106$
00105$:
;	isp.c:371: DLY_ms(3);
	mov	dptr,#0x0003
	lcall	_DLY_ms
00106$:
;	isp.c:372: isp_send(0x06, 6); // inc PC pointer
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0006
	lcall	_isp_send
	dec	sp
;	isp.c:373: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_send_config'
;------------------------------------------------------------
;data                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:375: void isp_send_config (unsigned int data)
;	-----------------------------------------
;	 function isp_send_config
;	-----------------------------------------
_isp_send_config:
	mov	r6,dpl
	mov	r7,dph
;	isp.c:377: isp_send(0x00,6);
	push	ar7
	push	ar6
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
	pop	ar6
	pop	ar7
;	isp.c:378: isp_send(data,16);
	mov	a,#0x10
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_isp_send
	dec	sp
;	isp.c:379: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_mass_erase'
;------------------------------------------------------------
;	isp.c:381: void isp_mass_erase (void) {
;	-----------------------------------------
;	 function isp_mass_erase
;	-----------------------------------------
_isp_mass_erase:
;	isp.c:385: isp_send_config(0);
	mov	dptr,#0x0000
	lcall	_isp_send_config
;	isp.c:386: isp_send(0x09, 6);
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0009
	lcall	_isp_send
	dec	sp
;	isp.c:387: DLY_ms(10); // consult Terab in mem prog manual
	mov	dptr,#0x000a
;	isp.c:390: }
	ljmp	_DLY_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_reset_pointer'
;------------------------------------------------------------
;	isp.c:394: void isp_reset_pointer (void)
;	-----------------------------------------
;	 function isp_reset_pointer
;	-----------------------------------------
_isp_reset_pointer:
;	isp.c:397: isp_send(0x16,6);
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0016
	lcall	_isp_send
	dec	sp
;	isp.c:398: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_reset_pointer_16d'
;------------------------------------------------------------
;	isp.c:400: void isp_reset_pointer_16d (void)
;	-----------------------------------------
;	 function isp_reset_pointer_16d
;	-----------------------------------------
_isp_reset_pointer_16d:
;	isp.c:403: isp_send(0x1D,6);
	mov	a,#0x06
	push	acc
	mov	dptr,#0x001d
	lcall	_isp_send
	dec	sp
;	isp.c:404: isp_send(0x0,8);
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:405: isp_send(0x0,8);
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:406: isp_send(0x0,8);
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:407: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_set_pointer_16d'
;------------------------------------------------------------
;addr                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	isp.c:409: void isp_set_pointer_16d(uint32_t addr)
;	-----------------------------------------
;	 function isp_set_pointer_16d
;	-----------------------------------------
_isp_set_pointer_16d:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	isp.c:416: addr = addr << 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	isp.c:418: isp_send(0x1D,6);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x06
	push	acc
	mov	dptr,#0x001d
	lcall	_isp_send
	dec	sp
	pop	ar4
;	isp.c:419: isp_send(addr & 0xff,8); // 0 + lsb
	mov	ar2,r4
	mov	dpl,r2
	mov	dph,#0x00
	push	ar4
	mov	a,#0x08
	push	acc
	lcall	_isp_send
	dec	sp
	pop	ar4
	pop	ar5
;	isp.c:420: isp_send((addr >> 8) & 0xff,8);
	mov	ar2,r5
	mov	dpl,r2
	mov	dph,#0x00
	push	ar5
	push	ar4
	mov	a,#0x08
	push	acc
	lcall	_isp_send
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:421: isp_send((addr >> 16) & 0xff,8); // msb
	mov	ar4,r6
	mov	dpl,r4
	mov	dph,#0x00
	mov	a,#0x08
	push	acc
	lcall	_isp_send
	dec	sp
;	isp.c:422: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_inc_pointer'
;------------------------------------------------------------
;	isp.c:424: void isp_inc_pointer (void)
;	-----------------------------------------
;	 function isp_inc_pointer
;	-----------------------------------------
_isp_inc_pointer:
;	isp.c:427: isp_send(0x06,6);
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0006
	lcall	_isp_send
	dec	sp
;	isp.c:428: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_16'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;out                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:431: unsigned int isp_read_16(void) {
;	-----------------------------------------
;	 function isp_read_16
;	-----------------------------------------
_isp_read_16:
;	isp.c:438: out = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	isp.c:439: ISP_DAT_D_I
	anl	_P1_DIR_PU,#0x7f
	anl	_P1_MOD_OC,#0x7f
;	isp.c:441: for (i=0; i < 16; i++) {
	mov	r5,#0x00
00104$:
;	isp.c:442: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:443: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_DLY_us
;	isp.c:444: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:445: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:446: out = out >> 1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	isp.c:447: if (ISP_DAT_V)
	jnb	_PP17,00105$
;	isp.c:448: out = out | 0x8000;
	orl	ar7,#0x80
00105$:
;	isp.c:441: for (i=0; i < 16; i++) {
	inc	r5
	cjne	r5,#0x10,00122$
00122$:
	jc	00104$
;	isp.c:450: return out;
	mov	dpl,r6
	mov	dph,r7
;	isp.c:451: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_8'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;out                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:453: unsigned int isp_read_8 (void)
;	-----------------------------------------
;	 function isp_read_8
;	-----------------------------------------
_isp_read_8:
;	isp.c:457: out = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	isp.c:458: ISP_DAT_D_I
	anl	_P1_DIR_PU,#0x7f
	anl	_P1_MOD_OC,#0x7f
;	isp.c:460: for (i=0;i<8;i++)
	mov	r5,#0x00
00104$:
;	isp.c:462: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:463: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_DLY_us
;	isp.c:464: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:465: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:466: out = out >> 1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	isp.c:467: if (ISP_DAT_V)
	jnb	_PP17,00105$
;	isp.c:468: out = out | 0x80;
	orl	ar6,#0x80
00105$:
;	isp.c:460: for (i=0;i<8;i++)
	inc	r5
	cjne	r5,#0x08,00122$
00122$:
	jc	00104$
;	isp.c:470: return out;
	mov	dpl,r6
	mov	dph,r7
;	isp.c:471: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_14s'
;------------------------------------------------------------
;out                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:473: unsigned int isp_read_14s(void) {
;	-----------------------------------------
;	 function isp_read_14s
;	-----------------------------------------
_isp_read_14s:
;	isp.c:481: out = isp_read_16();
	lcall	_isp_read_16
	mov	r6,dpl
	mov	r7,dph
;	isp.c:482: out = out & 0x7FFE;
	anl	ar6,#0xfe
	anl	ar7,#0x7f
;	isp.c:483: out = out >> 1;
	mov	dpl,r6
	mov	a,r7
	clr	c
	rrc	a
	xch	a,dpl
	rrc	a
	xch	a,dpl
	mov	dph,a
;	isp.c:484: return out;
;	isp.c:485: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_send'
;------------------------------------------------------------
;num_bits                  Allocated to stack - _bp -3
;data                      Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	isp.c:489: void isp_send (unsigned int data, unsigned char num_bits) {
;	-----------------------------------------
;	 function isp_send
;	-----------------------------------------
_isp_send:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	isp.c:492: ISP_DAT_D_O
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	isp.c:495: for (i = 0; i < num_bits; i++) {
	mov	r5,#0x00
00106$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	jnc	00108$
;	isp.c:496: if (data&0x01)
	mov	a,r6
	jnb	acc.0,00102$
;	isp.c:497: ISP_DAT_1
;	assignBit
	setb	_PP17
	sjmp	00103$
00102$:
;	isp.c:499: ISP_DAT_0
;	assignBit
	clr	_PP17
00103$:
;	isp.c:501: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_DLY_us
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:502: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:504: data = data >> 1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	isp.c:505: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:506: ISP_DAT_0
;	assignBit
	clr	_PP17
;	isp.c:495: for (i = 0; i < num_bits; i++) {
	inc	r5
	sjmp	00106$
00108$:
;	isp.c:509: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_send_24_msb'
;------------------------------------------------------------
;data                      Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	isp.c:512: void isp_send_24_msb (unsigned long data)
;	-----------------------------------------
;	 function isp_send_24_msb
;	-----------------------------------------
_isp_send_24_msb:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	isp.c:515: ISP_DAT_D_O
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	isp.c:517: for (i=0;i<23;i++)
	mov	r3,#0x00
00105$:
;	isp.c:519: if (data&0x400000)
	mov	a,r6
	jnb	acc.6,00102$
;	isp.c:521: ISP_DAT_1
;	assignBit
	setb	_PP17
	sjmp	00103$
00102$:
;	isp.c:525: ISP_DAT_0
;	assignBit
	clr	_PP17
00103$:
;	isp.c:527: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_DLY_us
;	isp.c:528: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:529: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:530: data = data << 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	isp.c:531: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:517: for (i=0;i<23;i++)
	inc	r3
	cjne	r3,#0x17,00123$
00123$:
	jc	00105$
;	isp.c:534: ISP_DAT_0
;	assignBit
	clr	_PP17
;	isp.c:535: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
;	isp.c:536: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:537: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
;	isp.c:538: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:539: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_send_8_msb'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	isp.c:541: void isp_send_8_msb (unsigned char data)
;	-----------------------------------------
;	 function isp_send_8_msb
;	-----------------------------------------
_isp_send_8_msb:
	mov	r7,dpl
;	isp.c:544: ISP_DAT_D_O
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	isp.c:546: for (i=0;i<8;i++)
	mov	r6,#0x00
00105$:
;	isp.c:548: if (data&0x80)
	mov	a,r7
	jnb	acc.7,00102$
;	isp.c:550: ISP_DAT_1
;	assignBit
	setb	_PP17
	sjmp	00103$
00102$:
;	isp.c:554: ISP_DAT_0
;	assignBit
	clr	_PP17
00103$:
;	isp.c:556: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_DLY_us
;	isp.c:557: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:558: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar6
	pop	ar7
;	isp.c:559: data = data << 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	isp.c:560: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:561: ISP_DAT_0
;	assignBit
	clr	_PP17
;	isp.c:546: for (i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00105$
;	isp.c:564: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_8_msb'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;out                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:567: unsigned int isp_read_8_msb (void)
;	-----------------------------------------
;	 function isp_read_8_msb
;	-----------------------------------------
_isp_read_8_msb:
;	isp.c:571: out = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	isp.c:572: ISP_DAT_D_I
	anl	_P1_DIR_PU,#0x7f
	anl	_P1_MOD_OC,#0x7f
;	isp.c:574: for (i=0;i<8;i++)
	mov	r5,#0x00
00104$:
;	isp.c:576: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:577: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_DLY_us
;	isp.c:578: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:579: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:580: out = out << 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	isp.c:581: if (ISP_DAT_V)
	jnb	_PP17,00105$
;	isp.c:582: out = out | 0x1;
	orl	ar6,#0x01
00105$:
;	isp.c:574: for (i=0;i<8;i++)
	inc	r5
	cjne	r5,#0x08,00122$
00122$:
	jc	00104$
;	isp.c:584: return out;
	mov	dpl,r6
	mov	dph,r7
;	isp.c:585: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isp_read_16_msb'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;out                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:587: unsigned int isp_read_16_msb (void)
;	-----------------------------------------
;	 function isp_read_16_msb
;	-----------------------------------------
_isp_read_16_msb:
;	isp.c:591: out = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	isp.c:592: ISP_DAT_D_I
	anl	_P1_DIR_PU,#0x7f
	anl	_P1_MOD_OC,#0x7f
;	isp.c:594: for (i=0;i<16;i++)
	mov	r5,#0x00
00104$:
;	isp.c:596: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:597: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_DLY_us
;	isp.c:598: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:599: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:600: out = out << 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	isp.c:601: if (ISP_DAT_V)
	jnb	_PP17,00105$
;	isp.c:602: out = out | 0x1;
	orl	ar6,#0x01
00105$:
;	isp.c:594: for (i=0;i<16;i++)
	inc	r5
	cjne	r5,#0x10,00122$
00122$:
	jc	00104$
;	isp.c:604: return out;
	mov	dpl,r6
	mov	dph,r7
;	isp.c:605: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_progmode'
;------------------------------------------------------------
;	isp.c:609: unsigned char enter_progmode (void)
;	-----------------------------------------
;	 function enter_progmode
;	-----------------------------------------
_enter_progmode:
;	isp.c:611: ISP_MCLR_0
;	assignBit
	clr	_PP15
;	isp.c:612: DLY_us(300);
	mov	dptr,#0x012c
	lcall	_DLY_us
;	isp.c:613: isp_send('P',8); // 0b01010000
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0050
	lcall	_isp_send
	dec	sp
;	isp.c:614: isp_send('H',8); // 0b01001000
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0048
	lcall	_isp_send
	dec	sp
;	isp.c:615: isp_send('C',8); // 0b01000011
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0043
	lcall	_isp_send
	dec	sp
;	isp.c:616: isp_send('M',8); // 0b01001101
	mov	a,#0x08
	push	acc
	mov	dptr,#0x004d
	lcall	_isp_send
	dec	sp
;	isp.c:618: isp_send(0,1); // 33 clock
	mov	a,#0x01
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:619: return 0;
	mov	dpl,#0x00
;	isp.c:620: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_enter_progmode'
;------------------------------------------------------------
;	isp.c:624: unsigned char p18_enter_progmode (void)
;	-----------------------------------------
;	 function p18_enter_progmode
;	-----------------------------------------
_p18_enter_progmode:
;	isp.c:626: ISP_MCLR_0
;	assignBit
	clr	_PP15
;	isp.c:627: DLY_us(300);
	mov	dptr,#0x012c
	lcall	_DLY_us
;	isp.c:629: isp_send_8_msb('M');
	mov	dpl,#0x4d
	lcall	_isp_send_8_msb
;	isp.c:630: isp_send_8_msb('C');
	mov	dpl,#0x43
	lcall	_isp_send_8_msb
;	isp.c:631: isp_send_8_msb('H');
	mov	dpl,#0x48
	lcall	_isp_send_8_msb
;	isp.c:632: isp_send_8_msb('P');
	mov	dpl,#0x50
	lcall	_isp_send_8_msb
;	isp.c:637: DLY_us(300);
	mov	dptr,#0x012c
	lcall	_DLY_us
;	isp.c:638: ISP_MCLR_1
;	assignBit
	setb	_PP15
;	isp.c:639: return 0;
	mov	dpl,#0x00
;	isp.c:640: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_isp_mass_erase'
;------------------------------------------------------------
;	isp.c:643: void p18_isp_mass_erase (void)
;	-----------------------------------------
;	 function p18_isp_mass_erase
;	-----------------------------------------
_p18_isp_mass_erase:
;	isp.c:645: p18_set_tblptr(0x3C0005);
	mov	dptr,#0x0005
	mov	b,#0x3c
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:646: p18_send_cmd_payload(0x0C,0x0F0F);
	mov	a,#0x0f
	push	acc
	push	acc
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:647: p18_set_tblptr(0x3C0004);
	mov	dptr,#0x0004
	mov	b,#0x3c
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:648: p18_send_cmd_payload(0x0C,0x8F8F);
	mov	a,#0x8f
	push	acc
	push	acc
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:649: p18_send_cmd_payload(0,0x0000);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:650: isp_send(0x00,4);
	mov	a,#0x04
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:651: DLY_ms(20);
	mov	dptr,#0x0014
	lcall	_DLY_ms
;	isp.c:652: isp_send(0x00,16);
	mov	a,#0x10
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:653: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18fj_isp_mass_erase'
;------------------------------------------------------------
;	isp.c:655: void p18fj_isp_mass_erase (void)
;	-----------------------------------------
;	 function p18fj_isp_mass_erase
;	-----------------------------------------
_p18fj_isp_mass_erase:
;	isp.c:657: p18_set_tblptr(0x3C0005);
	mov	dptr,#0x0005
	mov	b,#0x3c
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:658: p18_send_cmd_payload(0x0C,0x0101);
	mov	a,#0x01
	push	acc
	push	acc
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:659: p18_set_tblptr(0x3C0004);
	mov	dptr,#0x0004
	mov	b,#0x3c
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:660: p18_send_cmd_payload(0x0C,0x8080);
	mov	a,#0x80
	push	acc
	push	acc
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:661: p18_send_cmd_payload(0,0x0000);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:662: isp_send(0x00,4);
	mov	a,#0x04
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:663: DLY_ms(600);
	mov	dptr,#0x0258
	lcall	_DLY_ms
;	isp.c:664: isp_send(0x00,16);
	mov	a,#0x10
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:665: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18fk_isp_mass_erase'
;------------------------------------------------------------
;data2                     Allocated to stack - _bp -3
;data3                     Allocated to stack - _bp -4
;data1                     Allocated to registers r7 
;tmp1                      Allocated to registers 
;tmp2                      Allocated to stack - _bp +1
;tmp3                      Allocated to registers 
;------------------------------------------------------------
;	isp.c:668: void p18fk_isp_mass_erase (unsigned char data1, unsigned char data2, unsigned char data3)
;	-----------------------------------------
;	 function p18fk_isp_mass_erase
;	-----------------------------------------
_p18fk_isp_mass_erase:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r7,dpl
;	isp.c:671: tmp1 = data1;
	mov	r6,#0x00
	mov	ar4,r7
;	isp.c:672: tmp1 = (tmp1<<8)|data1;
	mov	ar5,r4
	clr	a
	orl	ar7,a
	mov	a,r5
	orl	ar6,a
;	isp.c:673: tmp2 = data2;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	ar2,r4
;	isp.c:674: tmp2 = (tmp2<<8)|data2;
	mov	ar3,r2
	mov	r2,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r4
	orl	a,r2
	mov	@r0,a
	mov	a,r5
	orl	a,r3
	inc	r0
	mov	@r0,a
;	isp.c:675: tmp3 = data3;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	ar4,r2
;	isp.c:676: tmp3 = (tmp3<<8)|data3;
	mov	ar5,r4
	clr	a
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
;	isp.c:677: p18_set_tblptr(0x3C0004);
	mov	dptr,#0x0004
	mov	b,#0x3c
	clr	a
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_p18_set_tblptr
	pop	ar2
	pop	ar3
;	isp.c:678: p18_send_cmd_payload(0x0C,tmp3);
	push	ar2
	push	ar3
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:679: p18_set_tblptr(0x3C0005);
	mov	dptr,#0x0005
	mov	b,#0x3c
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:680: p18_send_cmd_payload(0x0C,tmp2);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:681: p18_set_tblptr(0x3C0006);
	mov	dptr,#0x0006
	mov	b,#0x3c
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:682: p18_send_cmd_payload(0x0C,tmp1);
	mov	dpl,#0x0c
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:683: p18_send_cmd_payload(0x00,0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:684: isp_send(0x00,4);
	mov	a,#0x04
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:685: DLY_ms(5);
	mov	dptr,#0x0005
	lcall	_DLY_ms
;	isp.c:686: isp_send(0x00,16);
	mov	a,#0x10
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:687: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18fk_isp_write_pgm'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;n                         Allocated to stack - _bp -7
;data                      Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;------------------------------------------------------------
;	isp.c:689: void p18fk_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
;	-----------------------------------------
;	 function p18fk_isp_write_pgm
;	-----------------------------------------
_p18fk_isp_write_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
;	isp.c:693: p18_send_cmd_payload(0,0x8E7F);
	mov	a,#0x7f
	push	acc
	mov	a,#0x8e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:694: p18_send_cmd_payload(0,0x9C7F);
	mov	a,#0x7f
	push	acc
	mov	a,#0x9c
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:695: p18_send_cmd_payload(0,0x847F);
	mov	a,#0x7f
	push	acc
	mov	a,#0x84
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:696: p18_set_tblptr(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p18_set_tblptr
;	isp.c:697: for (i=0;i<n-1;i++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00103$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xff
	mov	r6,a
	mov	a,r3
	addc	a,#0xff
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	isp.c:698: p18_send_cmd_payload(0x0D,data[i]);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	mov	b,#0x02
	mul	ab
	mov	r4,a
	mov	r7,b
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar7
	mov	dpl,#0x0d
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:697: for (i=0;i<n-1;i++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	sjmp	00103$
00101$:
;	isp.c:699: p18_send_cmd_payload(0x0F,data[n-1]);
	dec	r2
	cjne	r2,#0xff,00117$
	dec	r3
00117$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar2
	push	ar3
	mov	dpl,#0x0f
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:700: p_18_modfied_nop(0);
	mov	dpl,#0x00
	lcall	_p_18_modfied_nop
;	isp.c:701: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_isp_write_pgm'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;n                         Allocated to stack - _bp -7
;data                      Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;------------------------------------------------------------
;	isp.c:703: void p18_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
;	-----------------------------------------
;	 function p18_isp_write_pgm
;	-----------------------------------------
_p18_isp_write_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
;	isp.c:707: p18_send_cmd_payload(0,0x8EA6);
	mov	a,#0xa6
	push	acc
	mov	a,#0x8e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:708: p18_send_cmd_payload(0,0x9CA6);
	mov	a,#0xa6
	push	acc
	mov	a,#0x9c
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:709: p18_send_cmd_payload(0,0x84A6);
	mov	a,#0xa6
	push	acc
	mov	a,#0x84
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:710: p18_set_tblptr(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p18_set_tblptr
;	isp.c:711: for (i=0;i<n-1;i++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00103$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xff
	mov	r6,a
	mov	a,r3
	addc	a,#0xff
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	isp.c:712: p18_send_cmd_payload(0x0D,data[i]);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	mov	b,#0x02
	mul	ab
	mov	r4,a
	mov	r7,b
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar7
	mov	dpl,#0x0d
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:711: for (i=0;i<n-1;i++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	sjmp	00103$
00101$:
;	isp.c:713: p18_send_cmd_payload(0x0F,data[n-1]);
	dec	r2
	cjne	r2,#0xff,00117$
	dec	r3
00117$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar2
	push	ar3
	mov	dpl,#0x0f
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:714: p_18_modfied_nop(1);
	mov	dpl,#0x01
	lcall	_p_18_modfied_nop
;	isp.c:715: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_isp_write_cfg'
;------------------------------------------------------------
;data2                     Allocated to stack - _bp -3
;addr                      Allocated to stack - _bp -7
;data1                     Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:717: void p18_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr)
;	-----------------------------------------
;	 function p18_isp_write_cfg
;	-----------------------------------------
_p18_isp_write_cfg:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	isp.c:721: p18_send_cmd_payload(0,0x8EA6);
	push	ar7
	mov	a,#0xa6
	push	acc
	mov	a,#0x8e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:722: p18_send_cmd_payload(0,0x8CA6);
	mov	a,#0xa6
	push	acc
	mov	a,#0x8c
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:723: p18_send_cmd_payload(0,0x84A6);
	mov	a,#0xa6
	push	acc
	mov	a,#0x84
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:724: p18_set_tblptr(addr);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p18_set_tblptr
;	isp.c:725: p18_send_cmd_payload(0x0F,data1);
	mov	r6,#0x00
	push	ar6
	mov	dpl,#0x0f
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:726: p_18_modfied_nop(1);
	mov	dpl,#0x01
	lcall	_p_18_modfied_nop
;	isp.c:727: DLY_ms(5);
	mov	dptr,#0x0005
	lcall	_DLY_ms
;	isp.c:728: p18_set_tblptr(addr+1);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_p18_set_tblptr
;	isp.c:729: i = data2;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
;	isp.c:730: i = i << 8;
	mov	ar7,r6
	mov	r6,#0x00
;	isp.c:731: p18_send_cmd_payload(0x0F,i);
	push	ar6
	push	ar7
	mov	dpl,#0x0f
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:732: p_18_modfied_nop(1);
	mov	dpl,#0x01
	lcall	_p_18_modfied_nop
;	isp.c:733: DLY_ms(5);
	mov	dptr,#0x0005
	lcall	_DLY_ms
;	isp.c:734: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18fk_isp_write_cfg'
;------------------------------------------------------------
;data2                     Allocated to stack - _bp -3
;addr                      Allocated to stack - _bp -7
;data1                     Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:736: void p18fk_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr)
;	-----------------------------------------
;	 function p18fk_isp_write_cfg
;	-----------------------------------------
_p18fk_isp_write_cfg:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	isp.c:740: p18_send_cmd_payload(0,0x8E7F);
	push	ar7
	mov	a,#0x7f
	push	acc
	mov	a,#0x8e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:741: p18_send_cmd_payload(0,0x8C7F);
	mov	a,#0x7f
	push	acc
	mov	a,#0x8c
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:742: p18_set_tblptr(addr);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p18_set_tblptr
;	isp.c:743: p18_send_cmd_payload(0x0F,data1);
	mov	r6,#0x00
	push	ar6
	mov	dpl,#0x0f
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:744: p_18_modfied_nop(1);
	mov	dpl,#0x01
	lcall	_p_18_modfied_nop
;	isp.c:745: DLY_ms(5);
	mov	dptr,#0x0005
	lcall	_DLY_ms
;	isp.c:746: p18_set_tblptr(addr+1);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_p18_set_tblptr
;	isp.c:747: i = data2;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
;	isp.c:748: i = i << 8;
	mov	ar7,r6
	mov	r6,#0x00
;	isp.c:749: p18_send_cmd_payload(0x0F,i);
	push	ar6
	push	ar7
	mov	dpl,#0x0f
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:750: p_18_modfied_nop(1);
	mov	dpl,#0x01
	lcall	_p_18_modfied_nop
;	isp.c:751: DLY_ms(5);
	mov	dptr,#0x0005
	lcall	_DLY_ms
;	isp.c:752: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p_18_modfied_nop'
;------------------------------------------------------------
;nop_long                  Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	isp.c:754: void p_18_modfied_nop (unsigned char nop_long)
;	-----------------------------------------
;	 function p_18_modfied_nop
;	-----------------------------------------
_p_18_modfied_nop:
	mov	r7,dpl
;	isp.c:757: ISP_DAT_D_O
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	isp.c:758: ISP_DAT_0
;	assignBit
	clr	_PP17
;	isp.c:759: for (i=0;i<3;i++)
	mov	r6,#0x00
00104$:
;	isp.c:761: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_DLY_us
;	isp.c:762: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:763: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
	pop	ar6
	pop	ar7
;	isp.c:764: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:759: for (i=0;i<3;i++)
	inc	r6
	cjne	r6,#0x03,00121$
00121$:
	jc	00104$
;	isp.c:766: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	push	ar7
	lcall	_DLY_us
	pop	ar7
;	isp.c:767: ISP_CLK_1
;	assignBit
	setb	_PP16
;	isp.c:768: if (nop_long==1) DLY_ms(4);
	cjne	r7,#0x01,00103$
	mov	dptr,#0x0004
	lcall	_DLY_ms
00103$:
;	isp.c:769: DLY_ms(1);
	mov	dptr,#0x0001
	lcall	_DLY_ms
;	isp.c:770: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:771: DLY_us(ISP_CLK_DELAY);
	mov	dptr,#0x0001
	lcall	_DLY_us
;	isp.c:772: isp_send(0x00,16);
	mov	a,#0x10
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:773: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p_18_isp_read_pgm'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;n                         Allocated to stack - _bp -7
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;tmp1                      Allocated to registers r5 r6 
;tmp2                      Allocated to stack - _bp +4
;------------------------------------------------------------
;	isp.c:775: void p_18_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n)
;	-----------------------------------------
;	 function p_18_isp_read_pgm
;	-----------------------------------------
_p_18_isp_read_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	isp.c:780: p18_set_tblptr(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p18_set_tblptr
;	isp.c:781: for (i=0;i<n;i++)
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00105$
;	isp.c:783: tmp1 =  p18_read_pgm_byte();
	push	ar4
	lcall	_p18_read_pgm_byte
	mov	r3,dpl
	pop	ar4
	mov	ar5,r3
	mov	r6,#0x00
;	isp.c:784: tmp2 =  p18_read_pgm_byte();
	push	ar6
	push	ar5
	push	ar4
	lcall	_p18_read_pgm_byte
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	isp.c:785: tmp2 = tmp2<<8;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
;	isp.c:786: data[i] = tmp1|tmp2;
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar5,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	isp.c:781: for (i=0;i<n;i++)
	inc	r4
	sjmp	00103$
00105$:
;	isp.c:788: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_set_tblptr'
;------------------------------------------------------------
;val                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	isp.c:791: void p18_set_tblptr (unsigned long val)
;	-----------------------------------------
;	 function p18_set_tblptr
;	-----------------------------------------
_p18_set_tblptr:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	isp.c:793: p18_send_cmd_payload(0,0x0E00|((val>>16)&0xFF));
	mov	ar2,r6
	mov	r3,#0x00
	orl	ar3,#0x0e
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:794: p18_send_cmd_payload(0,0x6EF8);
	mov	a,#0xf8
	push	acc
	mov	a,#0x6e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
;	isp.c:795: p18_send_cmd_payload(0,0x0E00|((val>>8)&0xFF));
	mov	ar2,r5
	mov	r3,#0x00
	orl	ar3,#0x0e
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:796: p18_send_cmd_payload(0,0x6EF7);
	mov	a,#0xf7
	push	acc
	mov	a,#0x6e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:797: p18_send_cmd_payload(0,0x0E00|((val>>0)&0xFF));
	mov	r5,#0x00
	orl	ar5,#0x0e
	push	ar4
	push	ar5
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:798: p18_send_cmd_payload(0,0x6EF6);
	mov	a,#0xf6
	push	acc
	mov	a,#0x6e
	push	acc
	mov	dpl,#0x00
	lcall	_p18_send_cmd_payload
	dec	sp
	dec	sp
;	isp.c:799: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_read_pgm_byte'
;------------------------------------------------------------
;	isp.c:802: unsigned char p18_read_pgm_byte (void)
;	-----------------------------------------
;	 function p18_read_pgm_byte
;	-----------------------------------------
_p18_read_pgm_byte:
;	isp.c:804: isp_send(0x09,4);
	mov	a,#0x04
	push	acc
	mov	dptr,#0x0009
	lcall	_isp_send
	dec	sp
;	isp.c:805: isp_send(0x00,8);
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0000
	lcall	_isp_send
	dec	sp
;	isp.c:806: return isp_read_8();
;	isp.c:807: }
	ljmp	_isp_read_8
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_get_ID'
;------------------------------------------------------------
;temp                      Allocated to registers r7 r6 
;------------------------------------------------------------
;	isp.c:809: unsigned int p18_get_ID (void)
;	-----------------------------------------
;	 function p18_get_ID
;	-----------------------------------------
_p18_get_ID:
;	isp.c:813: p18_set_tblptr(0x3FFFFE);
	mov	dptr,#0xfffe
	mov	b,#0x3f
	clr	a
	lcall	_p18_set_tblptr
;	isp.c:814: temp = p18_read_pgm_byte();
	lcall	_p18_read_pgm_byte
;	isp.c:815: temp = temp << 8;
	mov	r6,dpl
	mov	r7,#0x00
;	isp.c:816: temp = temp | p18_read_pgm_byte();
	push	ar7
	push	ar6
	lcall	_p18_read_pgm_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	isp.c:817: return temp;
;	isp.c:818: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_send_cmd_payload'
;------------------------------------------------------------
;payload                   Allocated to stack - _bp -4
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	isp.c:820: void p18_send_cmd_payload (unsigned char cmd, unsigned int payload)
;	-----------------------------------------
;	 function p18_send_cmd_payload
;	-----------------------------------------
_p18_send_cmd_payload:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	isp.c:822: isp_send(cmd,4);
	mov	r6,#0x00
	mov	a,#0x04
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_isp_send
	dec	sp
;	isp.c:823: isp_send(payload,16);
	mov	a,#0x10
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_isp_send
	dec	sp
;	isp.c:824: DLY_us(30);
	mov	dptr,#0x001e
	lcall	_DLY_us
;	isp.c:825: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18_get_cmd_payload'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	isp.c:827: unsigned int p18_get_cmd_payload (unsigned char cmd)
;	-----------------------------------------
;	 function p18_get_cmd_payload
;	-----------------------------------------
_p18_get_cmd_payload:
	mov	r7,dpl
;	isp.c:829: isp_send(cmd,4);
	mov	r6,#0x00
	mov	a,#0x04
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_isp_send
	dec	sp
;	isp.c:830: return isp_read_16();
;	isp.c:831: }
	ljmp	_isp_read_16
;------------------------------------------------------------
;Allocation info for local variables in function 'exit_progmode'
;------------------------------------------------------------
;	isp.c:834: unsigned char exit_progmode (void)
;	-----------------------------------------
;	 function exit_progmode
;	-----------------------------------------
_exit_progmode:
;	isp.c:836: ISP_MCLR_1
;	assignBit
	setb	_PP15
;	isp.c:837: DLY_ms(30);
	mov	dptr,#0x001e
	lcall	_DLY_ms
;	isp.c:838: ISP_MCLR_0
;	assignBit
	clr	_PP15
;	isp.c:839: DLY_ms(30);
	mov	dptr,#0x001e
	lcall	_DLY_ms
;	isp.c:840: ISP_MCLR_1
;	assignBit
	setb	_PP15
;	isp.c:844: ISP_DAT_D_O
	anl	_P1_MOD_OC,#0x7f
	orl	_P1_DIR_PU,#0x80
;	isp.c:845: ISP_CLK_D_O
	anl	_P1_MOD_OC,#0xbf
	orl	_P1_DIR_PU,#0x40
;	isp.c:846: ISP_CLK_0
;	assignBit
	clr	_PP16
;	isp.c:847: ISP_DAT_0
;	assignBit
	clr	_PP17
;	isp.c:851: return 0;
	mov	dpl,#0x00
;	isp.c:852: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_enter_progmode'
;------------------------------------------------------------
;	isp.c:856: unsigned char p16c_enter_progmode (void)
;	-----------------------------------------
;	 function p16c_enter_progmode
;	-----------------------------------------
_p16c_enter_progmode:
;	isp.c:858: ISP_MCLR_0
;	assignBit
	clr	_PP15
;	isp.c:859: DLY_us(300);
	mov	dptr,#0x012c
	lcall	_DLY_us
;	isp.c:860: isp_send_8_msb('M');
	mov	dpl,#0x4d
	lcall	_isp_send_8_msb
;	isp.c:861: isp_send_8_msb('C');
	mov	dpl,#0x43
	lcall	_isp_send_8_msb
;	isp.c:862: isp_send_8_msb('H');
	mov	dpl,#0x48
	lcall	_isp_send_8_msb
;	isp.c:863: isp_send_8_msb('P');
	mov	dpl,#0x50
	lcall	_isp_send_8_msb
;	isp.c:864: DLY_us(300);
	mov	dptr,#0x012c
	lcall	_DLY_us
;	isp.c:865: return 0;
	mov	dpl,#0x00
;	isp.c:866: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_set_pc'
;------------------------------------------------------------
;pc                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	isp.c:868: void p16c_set_pc (unsigned long pc)
;	-----------------------------------------
;	 function p16c_set_pc
;	-----------------------------------------
_p16c_set_pc:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	isp.c:870: isp_send_8_msb(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_isp_send_8_msb
;	isp.c:871: DLY_us(2);
	mov	dptr,#0x0002
	lcall	_DLY_us
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	isp.c:872: isp_send_24_msb(pc);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	isp.c:874: }
	ljmp	_isp_send_24_msb
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_bulk_erase'
;------------------------------------------------------------
;	isp.c:876: void p16c_bulk_erase (void)
;	-----------------------------------------
;	 function p16c_bulk_erase
;	-----------------------------------------
_p16c_bulk_erase:
;	isp.c:878: isp_send_8_msb(0x18);
	mov	dpl,#0x18
	lcall	_isp_send_8_msb
;	isp.c:879: DLY_ms(100);
	mov	dptr,#0x0064
;	isp.c:880: }
	ljmp	_DLY_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_load_nvm'
;------------------------------------------------------------
;inc                       Allocated to stack - _bp -3
;data                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:882: void p16c_load_nvm (unsigned int data, unsigned char inc)
;	-----------------------------------------
;	 function p16c_load_nvm
;	-----------------------------------------
_p16c_load_nvm:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	isp.c:884: if (inc==0) isp_send_8_msb(0x00);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00102$
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_isp_send_8_msb
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	isp.c:885: else isp_send_8_msb(0x02);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	lcall	_isp_send_8_msb
	pop	ar6
	pop	ar7
00103$:
;	isp.c:886: DLY_us(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	lcall	_DLY_us
	pop	ar6
	pop	ar7
;	isp.c:887: isp_send_24_msb(data);
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_isp_send_24_msb
;	isp.c:888: DLY_us(2);
	mov	dptr,#0x0002
	lcall	_DLY_us
;	isp.c:889: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_read_data_nvm'
;------------------------------------------------------------
;inc                       Allocated to registers r7 
;retval                    Allocated to registers r5 r7 
;tmp                       Allocated to registers r6 
;------------------------------------------------------------
;	isp.c:891: unsigned int p16c_read_data_nvm (unsigned char inc)
;	-----------------------------------------
;	 function p16c_read_data_nvm
;	-----------------------------------------
_p16c_read_data_nvm:
;	isp.c:895: if (inc==0) isp_send_8_msb(0xFC);
	mov	a,dpl
	jnz	00102$
	mov	dpl,#0xfc
	lcall	_isp_send_8_msb
	sjmp	00103$
00102$:
;	isp.c:896: else isp_send_8_msb(0xFE);
	mov	dpl,#0xfe
	lcall	_isp_send_8_msb
00103$:
;	isp.c:897: DLY_us(2);
	mov	dptr,#0x0002
	lcall	_DLY_us
;	isp.c:898: tmp = isp_read_8_msb();
	lcall	_isp_read_8_msb
	mov	r6,dpl
;	isp.c:899: retval = isp_read_16_msb();
	push	ar6
	lcall	_isp_read_16_msb
	mov	r5,dpl
	mov	r7,dph
	pop	ar6
;	isp.c:900: retval = retval >> 1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r7,a
;	isp.c:901: if (tmp&0x01) retval = retval | 0x8000;
	mov	a,r6
	jnb	acc.0,00105$
	orl	ar7,#0x80
00105$:
;	isp.c:902: return retval;
	mov	dpl,r5
	mov	dph,r7
;	isp.c:903: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_begin_prog'
;------------------------------------------------------------
;cfg_bit                   Allocated to registers r7 
;------------------------------------------------------------
;	isp.c:905: void p16c_begin_prog (unsigned char cfg_bit)
;	-----------------------------------------
;	 function p16c_begin_prog
;	-----------------------------------------
_p16c_begin_prog:
	mov	r7,dpl
;	isp.c:907: isp_send_8_msb(0xE0);
	mov	dpl,#0xe0
	push	ar7
	lcall	_isp_send_8_msb
;	isp.c:908: DLY_ms(3);
	mov	dptr,#0x0003
	lcall	_DLY_ms
	pop	ar7
;	isp.c:909: if (cfg_bit!=0) DLY_ms(3);
	mov	a,r7
	jz	00103$
	mov	dptr,#0x0003
;	isp.c:910: }
	ljmp	_DLY_ms
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_get_ID'
;------------------------------------------------------------
;	isp.c:912: unsigned int p16c_get_ID (void)
;	-----------------------------------------
;	 function p16c_get_ID
;	-----------------------------------------
_p16c_get_ID:
;	isp.c:914: p16c_set_pc(0x8006);
	mov	dptr,#0x8006
	clr	a
	mov	b,a
	lcall	_p16c_set_pc
;	isp.c:915: return p16c_read_data_nvm(1);
	mov	dpl,#0x01
;	isp.c:916: }
	ljmp	_p16c_read_data_nvm
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_isp_write_pgm'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;n                         Allocated to stack - _bp -7
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	isp.c:918: void p16c_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
;	-----------------------------------------
;	 function p16c_isp_write_pgm
;	-----------------------------------------
_p16c_isp_write_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	isp.c:922: p16c_set_pc(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p16c_set_pc
;	isp.c:923: for (i=0;i<n;i++)
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00101$
;	isp.c:924: p16c_load_nvm(data[i],1);
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar4
	mov	a,#0x01
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	_p16c_load_nvm
	dec	sp
	pop	ar4
;	isp.c:923: for (i=0;i<n;i++)
	inc	r4
	sjmp	00103$
00101$:
;	isp.c:925: p16c_set_pc(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p16c_set_pc
;	isp.c:926: p16c_begin_prog(0);
	mov	dpl,#0x00
	lcall	_p16c_begin_prog
;	isp.c:927: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_isp_read_pgm'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;n                         Allocated to stack - _bp -7
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	isp.c:929: void p16c_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n)
;	-----------------------------------------
;	 function p16c_isp_read_pgm
;	-----------------------------------------
_p16c_isp_read_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	isp.c:934: p16c_set_pc(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p16c_set_pc
;	isp.c:935: for (i=0;i<n;i++)
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00105$
;	isp.c:936: data[i] = p16c_read_data_nvm(1);
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,#0x01
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_p16c_read_data_nvm
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	isp.c:935: for (i=0;i<n;i++)
	inc	r4
	sjmp	00103$
00105$:
;	isp.c:937: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p16c_isp_write_cfg'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;data                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:939: void p16c_isp_write_cfg (unsigned int data, unsigned long addr)
;	-----------------------------------------
;	 function p16c_isp_write_cfg
;	-----------------------------------------
_p16c_isp_write_cfg:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	isp.c:943: p16c_set_pc(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar7
	push	ar6
	lcall	_p16c_set_pc
	pop	ar6
	pop	ar7
;	isp.c:944: p16c_load_nvm(data,0);
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_p16c_load_nvm
	dec	sp
;	isp.c:945: p16c_begin_prog(1);
	mov	dpl,#0x01
	lcall	_p16c_begin_prog
;	isp.c:946: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18q_isp_write_pgm'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;n                         Allocated to stack - _bp -7
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	isp.c:948: void p18q_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
;	-----------------------------------------
;	 function p18q_isp_write_pgm
;	-----------------------------------------
_p18q_isp_write_pgm:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	isp.c:952: p16c_set_pc(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_p16c_set_pc
;	isp.c:953: for (i=0;i<n;i++)
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00105$
;	isp.c:955: isp_send_8_msb(0xE0);
	mov	dpl,#0xe0
	push	ar4
	lcall	_isp_send_8_msb
	pop	ar4
;	isp.c:956: isp_send_24_msb(data[i]);
	mov	a,r4
	mov	b,#0x02
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	push	ar4
	lcall	_isp_send_24_msb
;	isp.c:957: DLY_us(65);
	mov	dptr,#0x0041
	lcall	_DLY_us
	pop	ar4
;	isp.c:953: for (i=0;i<n;i++)
	inc	r4
	sjmp	00103$
00105$:
;	isp.c:959: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'p18q_isp_write_cfg'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -6
;data                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	isp.c:961: void p18q_isp_write_cfg (unsigned int data, unsigned long addr)
;	-----------------------------------------
;	 function p18q_isp_write_cfg
;	-----------------------------------------
_p18q_isp_write_cfg:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	isp.c:965: p16c_set_pc(addr);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar7
	push	ar6
	lcall	_p16c_set_pc
;	isp.c:966: isp_send_8_msb(0xE0);
	mov	dpl,#0xe0
	lcall	_isp_send_8_msb
	pop	ar6
	pop	ar7
;	isp.c:967: isp_send_24_msb(data);
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_isp_send_24_msb
;	isp.c:968: DLY_us(65);
	mov	dptr,#0x0041
	lcall	_DLY_us
;	isp.c:969: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usart_tx_b'
;------------------------------------------------------------
;flush                     Allocated to registers b0 
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	isp.c:972: void usart_tx_b(uint8_t data, __bit flush)
;	-----------------------------------------
;	 function usart_tx_b
;	-----------------------------------------
_usart_tx_b:
;	isp.c:974: CDC_write(data);
	push	bits
	lcall	_CDC_write
	pop	bits
;	isp.c:975: if (flush) CDC_flush();
	jnb	b0,00103$
;	isp.c:976: }
	ljmp	_CDC_flush
00103$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
