;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module usb_handler
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USB_EP0_OUT
	.globl _USB_EP0_IN
	.globl _USB_EP0_SETUP
	.globl _USB_EP_init
	.globl _CDC_EP2_OUT
	.globl _CDC_EP2_IN
	.globl _CDC_EP0_OUT
	.globl _CDC_EP_init
	.globl _CDC_control
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
	.globl _EP2_buffer
	.globl _EP1_buffer
	.globl _EP0_buffer
	.globl _USB_ENUM_OK
	.globl _USB_pDescr
	.globl _USB_SetupLen
	.globl _USB_Addr
	.globl _USB_Config
	.globl _USB_SetupTyp
	.globl _USB_SetupReq
	.globl _USB_init
	.globl _USB_EP0_copyDescr
	.globl _USB_interrupt
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
_USB_SetupReq::
	.ds 1
_USB_SetupTyp::
	.ds 1
_USB_Config::
	.ds 1
_USB_Addr::
	.ds 1
_USB_SetupLen::
	.ds 2
_USB_pDescr::
	.ds 2
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
_USB_ENUM_OK::
	.ds 1
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
;Allocation info for local variables in function 'USB_EP_init'
;------------------------------------------------------------
;	lib\usb_handler.c:18: void USB_EP_init(void) {
;	-----------------------------------------
;	 function USB_EP_init
;	-----------------------------------------
_USB_EP_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lib\usb_handler.c:19: UEP0_DMA    = (uint16_t)EP0_buffer;       // EP0 data transfer address
	mov	r6,#_EP0_buffer
	mov	r7,#(_EP0_buffer >> 8)
	mov	((_UEP0_DMA >> 0) & 0xFF),r6
	mov	((_UEP0_DMA >> 8) & 0xFF),r7
;	lib\usb_handler.c:21: | UEP_T_RES_NAK;              // EP0 IN transaction returns NAK
	mov	_UEP0_CTRL,#0x02
;	lib\usb_handler.c:22: UEP0_T_LEN  = 0;                          // must be zero at start
	mov	_UEP0_T_LEN,#0x00
;	lib\usb_handler.c:23: USB_ENUM_OK = 0;                          // reset ENUM flag
;	assignBit
	clr	_USB_ENUM_OK
;	lib\usb_handler.c:26: USB_INIT_endpoints();                     // custom EP init handler
;	lib\usb_handler.c:28: }
	ljmp	_CDC_EP_init
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_init'
;------------------------------------------------------------
;	lib\usb_handler.c:33: void USB_init(void) {
;	-----------------------------------------
;	 function USB_init
;	-----------------------------------------
_USB_init:
;	lib\usb_handler.c:36: | bUC_DMA_EN;                 // DMA enable
	mov	_USB_CTRL,#0x29
;	lib\usb_handler.c:38: | bUD_PORT_EN;                // enable port, full-speed
	mov	_UDEV_CTRL,#0x81
;	lib\usb_handler.c:40: USB_EP_init();                            // setup endpoints
	lcall	_USB_EP_init
;	lib\usb_handler.c:44: | bUIE_BUS_RST;               // enable device mode USB bus reset interrupt
	mov	_USB_INT_EN,#0x07
;	lib\usb_handler.c:46: USB_INT_FG  = 0x1f;                       // clear interrupt flags
	mov	_USB_INT_FG,#0x1f
;	lib\usb_handler.c:47: IE_USB      = 1;                          // enable USB interrupt
;	assignBit
	setb	_IE_USB
;	lib\usb_handler.c:48: EA          = 1;                          // enable global interrupts
;	assignBit
	setb	_EA
;	lib\usb_handler.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_copyDescr'
;------------------------------------------------------------
;len                       Allocated to registers 
;------------------------------------------------------------
;	lib\usb_handler.c:57: void USB_EP0_copyDescr(uint8_t len) {
;	-----------------------------------------
;	 function USB_EP0_copyDescr
;	-----------------------------------------
_USB_EP0_copyDescr:
;	lib\usb_handler.c:78: __endasm;
	push	acc ; acc -> stack
	push	ar7 ; r7 -> stack
	mov	r7, dpl ; r7 <- len
	inc	_XBUS_AUX ; select dptr1
	mov	dptr, #_EP0_buffer ; dptr1 <- EP0_buffer
	dec	_XBUS_AUX ; select dptr0
	mov	dpl, _USB_pDescr ; dptr0 <- *USB_pDescr
	mov	dph, (_USB_pDescr + 1)
01$:
	clr	a ; acc <- #0
	movc	a, @a+dptr ; acc <- *USB_pDescr[dptr0]
	inc	dptr ; inc dptr0
	.db	0xA5 ; acc -> EP0_buffer[dptr1] & inc dptr1
	djnz	r7, 01$ ; repeat len times
	mov	_USB_pDescr, dpl ; USB_pDescr += len
	mov	(_USB_pDescr + 1), dph
	pop	ar7 ; r7 <- stack
	pop	acc ; acc <- stack
;	lib\usb_handler.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_SETUP'
;------------------------------------------------------------
;len                       Allocated to registers r7 
;------------------------------------------------------------
;	lib\usb_handler.c:86: void USB_EP0_SETUP(void) {
;	-----------------------------------------
;	 function USB_EP0_SETUP
;	-----------------------------------------
_USB_EP0_SETUP:
;	lib\usb_handler.c:87: uint8_t len = 0;                                // default is success and upload 0 length
	mov	r7,#0x00
;	lib\usb_handler.c:88: USB_SetupLen = ((uint16_t)USB_SetupBuf->wLengthH<<8) | (USB_SetupBuf->wLengthL);
	mov	dptr,#(_EP0_buffer + 0x0007)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_EP0_buffer + 0x0006)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	orl	a,r6
	mov	_USB_SetupLen,a
	mov	a,r3
	orl	a,r5
	mov	(_USB_SetupLen + 1),a
;	lib\usb_handler.c:89: USB_SetupReq = USB_SetupBuf->bRequest;
	mov	dptr,#(_EP0_buffer + 0x0001)
	movx	a,@dptr
	mov	_USB_SetupReq,a
;	lib\usb_handler.c:90: USB_SetupTyp = USB_SetupBuf->bRequestType;
	mov	dptr,#_EP0_buffer
	movx	a,@dptr
	mov	_USB_SetupTyp,a
;	lib\usb_handler.c:92: if((USB_SetupTyp & USB_REQ_TYP_MASK) == USB_REQ_TYP_STANDARD) {
	mov	a,_USB_SetupTyp
	anl	a,#0x60
	jz	00284$
	ljmp	00170$
00284$:
;	lib\usb_handler.c:93: switch(USB_SetupReq) {                        // request type
	mov	a,_USB_SetupReq
	mov	r6,a
	add	a,#0xff - 0x0b
	jnc	00285$
	ljmp	00164$
00285$:
	mov	a,r6
	mov	b,a
	add	a,#(00286$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00287$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00286$:
	.db	00125$
	.db	00128$
	.db	00164$
	.db	00145$
	.db	00164$
	.db	00118$
	.db	00101$
	.db	00164$
	.db	00119$
	.db	00122$
	.db	00171$
	.db	00171$
00287$:
	.db	00125$>>8
	.db	00128$>>8
	.db	00164$>>8
	.db	00145$>>8
	.db	00164$>>8
	.db	00118$>>8
	.db	00101$>>8
	.db	00164$>>8
	.db	00119$>>8
	.db	00122$>>8
	.db	00171$>>8
	.db	00171$>>8
;	lib\usb_handler.c:94: case USB_GET_DESCRIPTOR:
00101$:
;	lib\usb_handler.c:95: switch(USB_SetupBuf->wValueH) {
	mov	dptr,#(_EP0_buffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00288$
	sjmp	00102$
00288$:
	cjne	r6,#0x02,00289$
	sjmp	00103$
00289$:
;	lib\usb_handler.c:97: case USB_DESCR_TYP_DEVICE:              // Device Descriptor
	cjne	r6,#0x03,00112$
	sjmp	00104$
00102$:
;	lib\usb_handler.c:98: USB_pDescr = (uint8_t*)&DevDescr;     // put descriptor into out buffer
	mov	_USB_pDescr,#_DevDescr
	mov	(_USB_pDescr + 1),#(_DevDescr >> 8)
;	lib\usb_handler.c:99: len = sizeof(DevDescr);               // descriptor length
	mov	r7,#0x12
;	lib\usb_handler.c:100: break;
;	lib\usb_handler.c:102: case USB_DESCR_TYP_CONFIG:              // Configuration Descriptor
	sjmp	00113$
00103$:
;	lib\usb_handler.c:103: USB_pDescr = (uint8_t*)&CfgDescr;     // put descriptor into out buffer
	mov	_USB_pDescr,#_CfgDescr
	mov	(_USB_pDescr + 1),#(_CfgDescr >> 8)
;	lib\usb_handler.c:104: len = sizeof(CfgDescr);               // descriptor length
	mov	r7,#0x4b
;	lib\usb_handler.c:105: break;
;	lib\usb_handler.c:107: case USB_DESCR_TYP_STRING:
	sjmp	00113$
00104$:
;	lib\usb_handler.c:108: switch(USB_SetupBuf->wValueL) {       // String Descriptor Index
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x04
	jc	00110$
	mov	a,r6
	add	a,r6
;	lib\usb_handler.c:109: case 0:   USB_pDescr = USB_STR_DESCR_i0; break;
	mov	dptr,#00292$
	jmp	@a+dptr
00292$:
	sjmp	00105$
	sjmp	00106$
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
00105$:
	mov	_USB_pDescr,#_LangDescr
	mov	(_USB_pDescr + 1),#(_LangDescr >> 8)
;	lib\usb_handler.c:110: case 1:   USB_pDescr = USB_STR_DESCR_i1; break;
	sjmp	00111$
00106$:
	mov	_USB_pDescr,#_ManufDescr
	mov	(_USB_pDescr + 1),#(_ManufDescr >> 8)
;	lib\usb_handler.c:111: case 2:   USB_pDescr = USB_STR_DESCR_i2; break;
	sjmp	00111$
00107$:
	mov	_USB_pDescr,#_ProdDescr
	mov	(_USB_pDescr + 1),#(_ProdDescr >> 8)
;	lib\usb_handler.c:112: case 3:   USB_pDescr = USB_STR_DESCR_i3; break;
	sjmp	00111$
00108$:
	mov	_USB_pDescr,#_SerDescr
	mov	(_USB_pDescr + 1),#(_SerDescr >> 8)
;	lib\usb_handler.c:114: case 4:   USB_pDescr = USB_STR_DESCR_i4; break;
	sjmp	00111$
00109$:
	mov	_USB_pDescr,#_InterfDescr
	mov	(_USB_pDescr + 1),#(_InterfDescr >> 8)
;	lib\usb_handler.c:134: default:  USB_pDescr = USB_STR_DESCR_ix; break;
	sjmp	00111$
00110$:
	mov	_USB_pDescr,#_SerDescr
	mov	(_USB_pDescr + 1),#(_SerDescr >> 8)
;	lib\usb_handler.c:135: }
00111$:
;	lib\usb_handler.c:136: len = USB_pDescr[0];                  // descriptor length
	mov	dpl,_USB_pDescr
	mov	dph,(_USB_pDescr + 1)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	lib\usb_handler.c:137: break;
;	lib\usb_handler.c:149: default:
	sjmp	00113$
00112$:
;	lib\usb_handler.c:150: len = 0xff;                           // unsupported descriptors or error
	mov	r7,#0xff
;	lib\usb_handler.c:152: }
00113$:
;	lib\usb_handler.c:154: if(len != 0xff) {
	cjne	r7,#0xff,00293$
	ljmp	00171$
00293$:
;	lib\usb_handler.c:155: if(USB_SetupLen > len) USB_SetupLen = len;    // limit length
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,_USB_SetupLen
	mov	a,r6
	subb	a,(_USB_SetupLen + 1)
	jnc	00115$
	mov	_USB_SetupLen,r5
	mov	(_USB_SetupLen + 1),r6
00115$:
;	lib\usb_handler.c:156: len = USB_SetupLen >= EP0_SIZE ? EP0_SIZE : USB_SetupLen;
	mov	r5,_USB_SetupLen
	mov	r6,(_USB_SetupLen + 1)
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	subb	a,#0x00
	mov	b0,c
	jc	00177$
	mov	r5,#0x08
	mov	r6,#0x00
	sjmp	00178$
00177$:
	mov	r5,_USB_SetupLen
	mov	r6,(_USB_SetupLen + 1)
00178$:
	mov	ar7,r5
;	lib\usb_handler.c:157: USB_EP0_copyDescr(len);                 // copy descriptor to EP0
	mov	dpl,r7
	lcall	_USB_EP0_copyDescr
;	lib\usb_handler.c:159: break;
	ljmp	00171$
;	lib\usb_handler.c:161: case USB_SET_ADDRESS:
00118$:
;	lib\usb_handler.c:162: USB_Addr = USB_SetupBuf->wValueL;        // save the assigned address
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	_USB_Addr,a
;	lib\usb_handler.c:163: break;
	ljmp	00171$
;	lib\usb_handler.c:165: case USB_GET_CONFIGURATION:
00119$:
;	lib\usb_handler.c:166: EP0_buffer[0] = USB_Config;
	mov	dptr,#_EP0_buffer
	mov	a,_USB_Config
	movx	@dptr,a
;	lib\usb_handler.c:167: if(USB_SetupLen > 1) USB_SetupLen = 1;
	mov	r5,_USB_SetupLen
	mov	r6,(_USB_SetupLen + 1)
	clr	c
	mov	a,#0x01
	subb	a,r5
	clr	a
	subb	a,r6
	jnc	00121$
	mov	_USB_SetupLen,#0x01
	mov	(_USB_SetupLen + 1),#0x00
00121$:
;	lib\usb_handler.c:168: len = USB_SetupLen;
	mov	r7,_USB_SetupLen
;	lib\usb_handler.c:169: break;
	ljmp	00171$
;	lib\usb_handler.c:171: case USB_SET_CONFIGURATION:
00122$:
;	lib\usb_handler.c:172: USB_Config  = USB_SetupBuf->wValueL;
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	_USB_Config,a
;	lib\usb_handler.c:173: USB_ENUM_OK = 1;
;	assignBit
	setb	_USB_ENUM_OK
;	lib\usb_handler.c:174: break;
	ljmp	00171$
;	lib\usb_handler.c:182: case USB_GET_STATUS:
00125$:
;	lib\usb_handler.c:183: EP0_buffer[0] = 0x00;
	mov	dptr,#_EP0_buffer
	clr	a
	movx	@dptr,a
;	lib\usb_handler.c:184: EP0_buffer[1] = 0x00;
	mov	dptr,#(_EP0_buffer + 0x0001)
	movx	@dptr,a
;	lib\usb_handler.c:185: if(USB_SetupLen > 2) USB_SetupLen = 2;
	mov	r5,_USB_SetupLen
	mov	r6,(_USB_SetupLen + 1)
	clr	c
	mov	a,#0x02
	subb	a,r5
	clr	a
	subb	a,r6
	jnc	00127$
	mov	_USB_SetupLen,#0x02
	mov	(_USB_SetupLen + 1),#0x00
00127$:
;	lib\usb_handler.c:186: len = USB_SetupLen;
	mov	r7,_USB_SetupLen
;	lib\usb_handler.c:187: break;
	ljmp	00171$
;	lib\usb_handler.c:189: case USB_CLEAR_FEATURE:
00128$:
;	lib\usb_handler.c:190: if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_DEVICE) {
	mov	a,_USB_SetupTyp
	anl	a,#0x1f
	jnz	00143$
;	lib\usb_handler.c:191: if(USB_SetupBuf->wValueL == 0x01) {
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00133$
;	lib\usb_handler.c:192: if(((uint8_t*)&CfgDescr)[7] & 0x20) {
	mov	dptr,#(_CfgDescr + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.5,00302$
	ljmp	00171$
00302$:
;	lib\usb_handler.c:195: else len = 0xff;               // failed
	mov	r7,#0xff
	ljmp	00171$
00133$:
;	lib\usb_handler.c:197: else len = 0xff;                 // failed
	mov	r7,#0xff
	ljmp	00171$
00143$:
;	lib\usb_handler.c:199: else if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_ENDP) {
	mov	r5,_USB_SetupTyp
	anl	ar5,#0x1f
	mov	r6,#0x00
	cjne	r5,#0x02,00140$
	cjne	r6,#0x00,00140$
;	lib\usb_handler.c:200: switch(USB_SetupBuf->wIndexL) {
	mov	dptr,#(_EP0_buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00305$
	sjmp	00135$
00305$:
;	lib\usb_handler.c:212: case 0x02:
	cjne	r6,#0x82,00137$
	sjmp	00136$
00135$:
;	lib\usb_handler.c:213: UEP2_CTRL = (UEP2_CTRL & ~(bUEP_R_TOG | MASK_UEP_R_RES)) | UEP_R_RES_ACK;
	anl	_UEP2_CTRL,#0x73
;	lib\usb_handler.c:214: break;
	ljmp	00171$
;	lib\usb_handler.c:217: case 0x82:
00136$:
;	lib\usb_handler.c:218: UEP2_CTRL = (UEP2_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES)) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	lib\usb_handler.c:219: break;
	ljmp	00171$
;	lib\usb_handler.c:241: default:
00137$:
;	lib\usb_handler.c:242: len = 0xff;                 // unsupported endpoint
	mov	r7,#0xff
;	lib\usb_handler.c:244: }
	ljmp	00171$
00140$:
;	lib\usb_handler.c:246: else len = 0xff;                  // unsupported for non-endpoint
	mov	r7,#0xff
;	lib\usb_handler.c:247: break;
	ljmp	00171$
;	lib\usb_handler.c:249: case USB_SET_FEATURE:
00145$:
;	lib\usb_handler.c:250: if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_DEVICE) {
	mov	a,_USB_SetupTyp
	anl	a,#0x1f
	jnz	00162$
;	lib\usb_handler.c:251: if(USB_SetupBuf->wValueL == 0x01) {
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00149$
;	lib\usb_handler.c:252: if( !(((uint8_t*)&CfgDescr)[7] & 0x20) ) len = 0xff;  // failed
	mov	dptr,#(_CfgDescr + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jb	acc.5,00171$
	mov	r7,#0xff
	sjmp	00171$
00149$:
;	lib\usb_handler.c:254: else len = 0xff;                                        // failed
	mov	r7,#0xff
	sjmp	00171$
00162$:
;	lib\usb_handler.c:256: else if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_ENDP) {
	mov	r5,_USB_SetupTyp
	anl	ar5,#0x1f
	mov	r6,#0x00
	cjne	r5,#0x02,00159$
	cjne	r6,#0x00,00159$
;	lib\usb_handler.c:257: if(USB_SetupBuf->wValueL == 0x00) {
	mov	dptr,#(_EP0_buffer + 0x0002)
	movx	a,@dptr
	jnz	00156$
;	lib\usb_handler.c:258: switch(USB_SetupBuf->wIndexL) {
	mov	dptr,#(_EP0_buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00315$
	sjmp	00151$
00315$:
;	lib\usb_handler.c:270: case 0x02:
	cjne	r6,#0x82,00153$
	sjmp	00152$
00151$:
;	lib\usb_handler.c:271: UEP2_CTRL = (UEP2_CTRL & ~bUEP_R_TOG) | UEP_R_RES_STALL;
	mov	a,#0x7f
	anl	a,_UEP2_CTRL
	orl	a,#0x0c
	mov	_UEP2_CTRL,a
;	lib\usb_handler.c:272: break;
;	lib\usb_handler.c:275: case 0x82:
	sjmp	00171$
00152$:
;	lib\usb_handler.c:276: UEP2_CTRL = (UEP2_CTRL & ~bUEP_T_TOG) | UEP_T_RES_STALL;
	mov	a,#0xbf
	anl	a,_UEP2_CTRL
	orl	a,#0x03
	mov	_UEP2_CTRL,a
;	lib\usb_handler.c:277: break;
;	lib\usb_handler.c:299: default:
	sjmp	00171$
00153$:
;	lib\usb_handler.c:300: len = 0xff;               // failed
	mov	r7,#0xff
;	lib\usb_handler.c:302: }
	sjmp	00171$
00156$:
;	lib\usb_handler.c:304: else len = 0xff;                // failed
	mov	r7,#0xff
	sjmp	00171$
00159$:
;	lib\usb_handler.c:306: else len = 0xff;                  // failed
	mov	r7,#0xff
;	lib\usb_handler.c:307: break;
;	lib\usb_handler.c:309: default:
	sjmp	00171$
00164$:
;	lib\usb_handler.c:310: len = 0xff;                       // failed
	mov	r7,#0xff
;	lib\usb_handler.c:312: }
	sjmp	00171$
00170$:
;	lib\usb_handler.c:316: else if((USB_SetupTyp & USB_REQ_TYP_MASK) == USB_REQ_TYP_CLASS) {
	mov	r5,_USB_SetupTyp
	anl	ar5,#0x60
	mov	r6,#0x00
	cjne	r5,#0x20,00167$
	cjne	r6,#0x00,00167$
;	lib\usb_handler.c:317: len = USB_CLASS_SETUP_handler();
	lcall	_CDC_control
	mov	r6,dpl
	mov	ar7,r6
	sjmp	00171$
00167$:
;	lib\usb_handler.c:327: else len = 0xff;
	mov	r7,#0xff
00171$:
;	lib\usb_handler.c:329: if(len == 0xff) {                         // stall
	cjne	r7,#0xff,00173$
;	lib\usb_handler.c:330: USB_SetupReq = 0xff;
	mov	_USB_SetupReq,#0xff
;	lib\usb_handler.c:331: UEP0_CTRL  = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL; // STALL
	mov	_UEP0_CTRL,#0xcf
	ret
00173$:
;	lib\usb_handler.c:334: USB_SetupLen -= len;
	mov	ar5,r7
	mov	r6,#0x00
	mov	r3,_USB_SetupLen
	mov	r4,(_USB_SetupLen + 1)
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	_USB_SetupLen,r3
	mov	(_USB_SetupLen + 1),r4
;	lib\usb_handler.c:335: UEP0_T_LEN    = len;
	mov	_UEP0_T_LEN,r7
;	lib\usb_handler.c:336: UEP0_CTRL     = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;
	mov	_UEP0_CTRL,#0xc0
;	lib\usb_handler.c:338: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_IN'
;------------------------------------------------------------
;len                       Allocated to registers r6 
;------------------------------------------------------------
;	lib\usb_handler.c:341: void USB_EP0_IN(void) {
;	-----------------------------------------
;	 function USB_EP0_IN
;	-----------------------------------------
_USB_EP0_IN:
;	lib\usb_handler.c:358: switch(USB_SetupReq) {
	mov	r7,_USB_SetupReq
	cjne	r7,#0x05,00121$
	sjmp	00102$
00121$:
	cjne	r7,#0x06,00103$
;	lib\usb_handler.c:360: len = USB_SetupLen >= EP0_SIZE ? EP0_SIZE : USB_SetupLen;
	mov	r6,_USB_SetupLen
	mov	r7,(_USB_SetupLen + 1)
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	mov	b0,c
	jc	00107$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00108$
00107$:
	mov	r6,_USB_SetupLen
	mov	r7,(_USB_SetupLen + 1)
00108$:
;	lib\usb_handler.c:361: USB_EP0_copyDescr(len);                     // copy descriptor to EP0                                
	mov	dpl,r6
	lcall	_USB_EP0_copyDescr
;	lib\usb_handler.c:362: USB_SetupLen -= len;
	mov	ar5,r6
	mov	r7,#0x00
	mov	r3,_USB_SetupLen
	mov	r4,(_USB_SetupLen + 1)
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r7
	mov	r4,a
	mov	_USB_SetupLen,r3
	mov	(_USB_SetupLen + 1),r4
;	lib\usb_handler.c:363: UEP0_T_LEN    = len;
	mov	_UEP0_T_LEN,r6
;	lib\usb_handler.c:364: UEP0_CTRL    ^= bUEP_T_TOG;                 // switch between DATA0 and DATA1
	xrl	_UEP0_CTRL,#0x40
;	lib\usb_handler.c:365: break;
;	lib\usb_handler.c:367: case USB_SET_ADDRESS:
	ret
00102$:
;	lib\usb_handler.c:368: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | USB_Addr;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	mov	a,_USB_Addr
	orl	a,r7
	mov	_USB_DEV_AD,a
;	lib\usb_handler.c:369: UEP0_CTRL  = bUEP_R_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
	mov	_UEP0_CTRL,#0x82
;	lib\usb_handler.c:370: break;
;	lib\usb_handler.c:372: default:
	ret
00103$:
;	lib\usb_handler.c:373: UEP0_CTRL  = bUEP_R_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
	mov	_UEP0_CTRL,#0x82
;	lib\usb_handler.c:375: }
;	lib\usb_handler.c:376: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_OUT'
;------------------------------------------------------------
;	lib\usb_handler.c:379: void USB_EP0_OUT(void) {
;	-----------------------------------------
;	 function USB_EP0_OUT
;	-----------------------------------------
_USB_EP0_OUT:
;	lib\usb_handler.c:381: if((USB_SetupTyp & USB_REQ_TYP_MASK) == USB_REQ_TYP_CLASS) {
	mov	r6,_USB_SetupTyp
	anl	ar6,#0x60
	mov	r7,#0x00
	cjne	r6,#0x20,00102$
	cjne	r7,#0x00,00102$
;	lib\usb_handler.c:382: USB_CLASS_OUT_handler();
;	lib\usb_handler.c:383: return;
	ljmp	_CDC_EP0_OUT
00102$:
;	lib\usb_handler.c:394: UEP0_CTRL  = bUEP_T_TOG | UEP_T_RES_ACK | UEP_R_RES_ACK;
	mov	_UEP0_CTRL,#0x40
;	lib\usb_handler.c:395: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_interrupt'
;------------------------------------------------------------
;callIndex                 Allocated to registers r7 
;------------------------------------------------------------
;	lib\usb_handler.c:402: void USB_interrupt(void) {
;	-----------------------------------------
;	 function USB_interrupt
;	-----------------------------------------
_USB_interrupt:
;	lib\usb_handler.c:405: if(UIF_TRANSFER) {
	jnb	_UIF_TRANSFER,00114$
;	lib\usb_handler.c:407: uint8_t callIndex = USB_INT_ST & MASK_UIS_ENDP;
	mov	r7,_USB_INT_ST
	anl	ar7,#0x0f
;	lib\usb_handler.c:408: switch (USB_INT_ST & MASK_UIS_TOKEN) {
	mov	r5,_USB_INT_ST
	anl	ar5,#0x30
	mov	r6,#0x00
	cjne	r5,#0x00,00162$
	cjne	r6,#0x00,00162$
	sjmp	00107$
00162$:
	cjne	r5,#0x20,00163$
	cjne	r6,#0x00,00163$
	sjmp	00102$
00163$:
	cjne	r5,#0x30,00112$
	cjne	r6,#0x00,00112$
;	lib\usb_handler.c:411: EP0_SETUP_callback();
	lcall	_USB_EP0_SETUP
;	lib\usb_handler.c:412: break;
;	lib\usb_handler.c:414: case UIS_TOKEN_IN:
	sjmp	00112$
00102$:
;	lib\usb_handler.c:415: switch (callIndex) {
	cjne	r7,#0x00,00166$
	sjmp	00103$
00166$:
;	lib\usb_handler.c:416: case 0: EP0_IN_callback(); break;
	cjne	r7,#0x02,00112$
	sjmp	00104$
00103$:
	lcall	_USB_EP0_IN
;	lib\usb_handler.c:421: case 2: EP2_IN_callback(); break;
	sjmp	00112$
00104$:
	lcall	_CDC_EP2_IN
;	lib\usb_handler.c:433: case UIS_TOKEN_OUT:
	sjmp	00112$
00107$:
;	lib\usb_handler.c:434: switch (callIndex) {
	cjne	r7,#0x00,00168$
	sjmp	00108$
00168$:
;	lib\usb_handler.c:435: case 0: EP0_OUT_callback(); break;
	cjne	r7,#0x02,00112$
	sjmp	00109$
00108$:
	lcall	_USB_EP0_OUT
;	lib\usb_handler.c:440: case 2: EP2_OUT_callback(); break;
	sjmp	00112$
00109$:
	lcall	_CDC_EP2_OUT
;	lib\usb_handler.c:451: }
00112$:
;	lib\usb_handler.c:452: UIF_TRANSFER = 0;                       // clear interrupt flag
;	assignBit
	clr	_UIF_TRANSFER
00114$:
;	lib\usb_handler.c:456: if(UIF_SUSPEND) {
;	lib\usb_handler.c:457: UIF_SUSPEND = 0;                        // clear interrupt flag
;	assignBit
	jbc	_UIF_SUSPEND,00170$
	sjmp	00116$
00170$:
00116$:
;	lib\usb_handler.c:472: if(UIF_BUS_RST) {
	jnb	_UIF_BUS_RST,00119$
;	lib\usb_handler.c:476: USB_EP_init();                          // reset endpoints
	lcall	_USB_EP_init
;	lib\usb_handler.c:477: USB_DEV_AD = 0x00;                      // reset device address
	mov	_USB_DEV_AD,#0x00
;	lib\usb_handler.c:478: USB_INT_FG = 0x1f;                      // clear all interrupt flags
	mov	_USB_INT_FG,#0x1f
00119$:
;	lib\usb_handler.c:480: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
