                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module isp
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _p16c_get_ID
                                     12 	.globl _isp_send_24_msb
                                     13 	.globl _CDC_write
                                     14 	.globl _CDC_read
                                     15 	.globl _CDC_flush
                                     16 	.globl _DLY_ms
                                     17 	.globl _DLY_us
                                     18 	.globl _PP37
                                     19 	.globl _PP36
                                     20 	.globl _PP35
                                     21 	.globl _PP34
                                     22 	.globl _PP33
                                     23 	.globl _PP32
                                     24 	.globl _PP31
                                     25 	.globl _PP30
                                     26 	.globl _PP17
                                     27 	.globl _PP16
                                     28 	.globl _PP15
                                     29 	.globl _PP14
                                     30 	.globl _PP13
                                     31 	.globl _PP12
                                     32 	.globl _PP11
                                     33 	.globl _PP10
                                     34 	.globl _UIF_BUS_RST
                                     35 	.globl _UIF_DETECT
                                     36 	.globl _UIF_TRANSFER
                                     37 	.globl _UIF_SUSPEND
                                     38 	.globl _UIF_HST_SOF
                                     39 	.globl _UIF_FIFO_OV
                                     40 	.globl _U_SIE_FREE
                                     41 	.globl _U_TOG_OK
                                     42 	.globl _U_IS_NAK
                                     43 	.globl _ADC_CHAN0
                                     44 	.globl _ADC_CHAN1
                                     45 	.globl _CMP_CHAN
                                     46 	.globl _ADC_START
                                     47 	.globl _ADC_IF
                                     48 	.globl _CMP_IF
                                     49 	.globl _CMPO
                                     50 	.globl _U1RI
                                     51 	.globl _U1TI
                                     52 	.globl _U1RB8
                                     53 	.globl _U1TB8
                                     54 	.globl _U1REN
                                     55 	.globl _U1SMOD
                                     56 	.globl _U1SM0
                                     57 	.globl _S0_R_FIFO
                                     58 	.globl _S0_T_FIFO
                                     59 	.globl _S0_FREE
                                     60 	.globl _S0_IF_BYTE
                                     61 	.globl _S0_IF_FIRST
                                     62 	.globl _S0_IF_OV
                                     63 	.globl _S0_FST_ACT
                                     64 	.globl _CP_RL2
                                     65 	.globl _C_T2
                                     66 	.globl _TR2
                                     67 	.globl _EXEN2
                                     68 	.globl _TCLK
                                     69 	.globl _RCLK
                                     70 	.globl _EXF2
                                     71 	.globl _CAP1F
                                     72 	.globl _TF2
                                     73 	.globl _RI
                                     74 	.globl _TI
                                     75 	.globl _RB8
                                     76 	.globl _TB8
                                     77 	.globl _REN
                                     78 	.globl _SM2
                                     79 	.globl _SM1
                                     80 	.globl _SM0
                                     81 	.globl _IT0
                                     82 	.globl _IE0
                                     83 	.globl _IT1
                                     84 	.globl _IE1
                                     85 	.globl _TR0
                                     86 	.globl _TF0
                                     87 	.globl _TR1
                                     88 	.globl _TF1
                                     89 	.globl _RXD
                                     90 	.globl _PWM1_
                                     91 	.globl _TXD
                                     92 	.globl _PWM2_
                                     93 	.globl _AIN3
                                     94 	.globl _VBUS1
                                     95 	.globl _INT0
                                     96 	.globl _TXD1_
                                     97 	.globl _INT1
                                     98 	.globl _T0
                                     99 	.globl _RXD1_
                                    100 	.globl _PWM2
                                    101 	.globl _T1
                                    102 	.globl _UDP
                                    103 	.globl _UDM
                                    104 	.globl _TIN0
                                    105 	.globl _CAP1
                                    106 	.globl _T2
                                    107 	.globl _AIN0
                                    108 	.globl _VBUS2
                                    109 	.globl _TIN1
                                    110 	.globl _CAP2
                                    111 	.globl _T2EX
                                    112 	.globl _RXD_
                                    113 	.globl _TXD_
                                    114 	.globl _AIN1
                                    115 	.globl _UCC1
                                    116 	.globl _TIN2
                                    117 	.globl _SCS
                                    118 	.globl _CAP1_
                                    119 	.globl _T2_
                                    120 	.globl _AIN2
                                    121 	.globl _UCC2
                                    122 	.globl _TIN3
                                    123 	.globl _PWM1
                                    124 	.globl _MOSI
                                    125 	.globl _TIN4
                                    126 	.globl _RXD1
                                    127 	.globl _MISO
                                    128 	.globl _TIN5
                                    129 	.globl _TXD1
                                    130 	.globl _SCK
                                    131 	.globl _IE_SPI0
                                    132 	.globl _IE_TKEY
                                    133 	.globl _IE_USB
                                    134 	.globl _IE_ADC
                                    135 	.globl _IE_UART1
                                    136 	.globl _IE_PWMX
                                    137 	.globl _IE_GPIO
                                    138 	.globl _IE_WDOG
                                    139 	.globl _PX0
                                    140 	.globl _PT0
                                    141 	.globl _PX1
                                    142 	.globl _PT1
                                    143 	.globl _PS
                                    144 	.globl _PT2
                                    145 	.globl _PL_FLAG
                                    146 	.globl _PH_FLAG
                                    147 	.globl _EX0
                                    148 	.globl _ET0
                                    149 	.globl _EX1
                                    150 	.globl _ET1
                                    151 	.globl _ES
                                    152 	.globl _ET2
                                    153 	.globl _E_DIS
                                    154 	.globl _EA
                                    155 	.globl _P
                                    156 	.globl _F1
                                    157 	.globl _OV
                                    158 	.globl _RS0
                                    159 	.globl _RS1
                                    160 	.globl _F0
                                    161 	.globl _AC
                                    162 	.globl _CY
                                    163 	.globl _UEP1_DMA_H
                                    164 	.globl _UEP1_DMA_L
                                    165 	.globl _UEP1_DMA
                                    166 	.globl _UEP0_DMA_H
                                    167 	.globl _UEP0_DMA_L
                                    168 	.globl _UEP0_DMA
                                    169 	.globl _UEP2_3_MOD
                                    170 	.globl _UEP4_1_MOD
                                    171 	.globl _UEP3_DMA_H
                                    172 	.globl _UEP3_DMA_L
                                    173 	.globl _UEP3_DMA
                                    174 	.globl _UEP2_DMA_H
                                    175 	.globl _UEP2_DMA_L
                                    176 	.globl _UEP2_DMA
                                    177 	.globl _USB_DEV_AD
                                    178 	.globl _USB_CTRL
                                    179 	.globl _USB_INT_EN
                                    180 	.globl _UEP4_T_LEN
                                    181 	.globl _UEP4_CTRL
                                    182 	.globl _UEP0_T_LEN
                                    183 	.globl _UEP0_CTRL
                                    184 	.globl _USB_RX_LEN
                                    185 	.globl _USB_MIS_ST
                                    186 	.globl _USB_INT_ST
                                    187 	.globl _USB_INT_FG
                                    188 	.globl _UEP3_T_LEN
                                    189 	.globl _UEP3_CTRL
                                    190 	.globl _UEP2_T_LEN
                                    191 	.globl _UEP2_CTRL
                                    192 	.globl _UEP1_T_LEN
                                    193 	.globl _UEP1_CTRL
                                    194 	.globl _UDEV_CTRL
                                    195 	.globl _USB_C_CTRL
                                    196 	.globl _TKEY_DATH
                                    197 	.globl _TKEY_DATL
                                    198 	.globl _TKEY_DAT
                                    199 	.globl _TKEY_CTRL
                                    200 	.globl _ADC_DATA
                                    201 	.globl _ADC_CFG
                                    202 	.globl _ADC_CTRL
                                    203 	.globl _SBAUD1
                                    204 	.globl _SBUF1
                                    205 	.globl _SCON1
                                    206 	.globl _SPI0_SETUP
                                    207 	.globl _SPI0_CK_SE
                                    208 	.globl _SPI0_CTRL
                                    209 	.globl _SPI0_DATA
                                    210 	.globl _SPI0_STAT
                                    211 	.globl _PWM_CK_SE
                                    212 	.globl _PWM_CTRL
                                    213 	.globl _PWM_DATA1
                                    214 	.globl _PWM_DATA2
                                    215 	.globl _T2CAP1H
                                    216 	.globl _T2CAP1L
                                    217 	.globl _T2CAP1
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _T2COUNT
                                    221 	.globl _RCAP2H
                                    222 	.globl _RCAP2L
                                    223 	.globl _RCAP2
                                    224 	.globl _T2MOD
                                    225 	.globl _T2CON
                                    226 	.globl _SBUF
                                    227 	.globl _SCON
                                    228 	.globl _TH1
                                    229 	.globl _TH0
                                    230 	.globl _TL1
                                    231 	.globl _TL0
                                    232 	.globl _TMOD
                                    233 	.globl _TCON
                                    234 	.globl _XBUS_AUX
                                    235 	.globl _PIN_FUNC
                                    236 	.globl _P3_DIR_PU
                                    237 	.globl _P3_MOD_OC
                                    238 	.globl _P3
                                    239 	.globl _P2
                                    240 	.globl _P1_DIR_PU
                                    241 	.globl _P1_MOD_OC
                                    242 	.globl _P1
                                    243 	.globl _ROM_CTRL
                                    244 	.globl _ROM_DATA_H
                                    245 	.globl _ROM_DATA_L
                                    246 	.globl _ROM_DATA
                                    247 	.globl _ROM_ADDR_H
                                    248 	.globl _ROM_ADDR_L
                                    249 	.globl _ROM_ADDR
                                    250 	.globl _GPIO_IE
                                    251 	.globl _IP_EX
                                    252 	.globl _IE_EX
                                    253 	.globl _IP
                                    254 	.globl _IE
                                    255 	.globl _WDOG_COUNT
                                    256 	.globl _RESET_KEEP
                                    257 	.globl _WAKE_CTRL
                                    258 	.globl _CLOCK_CFG
                                    259 	.globl _PCON
                                    260 	.globl _GLOBAL_CFG
                                    261 	.globl _SAFE_MOD
                                    262 	.globl _DPH
                                    263 	.globl _DPL
                                    264 	.globl _SP
                                    265 	.globl _B
                                    266 	.globl _ACC
                                    267 	.globl _PSW
                                    268 	.globl _flash_buffer
                                    269 	.globl _rx_message
                                    270 	.globl _EP2_buffer
                                    271 	.globl _EP1_buffer
                                    272 	.globl _EP0_buffer
                                    273 	.globl _addr
                                    274 	.globl _cfg_val
                                    275 	.globl _eeprom_buf
                                    276 	.globl _rx_message_ptr
                                    277 	.globl _rx_state
                                    278 	.globl _bytes_to_receive
                                    279 	.globl _i
                                    280 	.globl _rx
                                    281 	.globl _ISP
                                    282 	.globl _rx_state_machine
                                    283 	.globl _isp_read_pgm
                                    284 	.globl _isp_read_eeprom
                                    285 	.globl _isp_write_pgm
                                    286 	.globl _isp_send_config
                                    287 	.globl _isp_mass_erase
                                    288 	.globl _isp_reset_pointer
                                    289 	.globl _isp_reset_pointer_16d
                                    290 	.globl _isp_set_pointer_16d
                                    291 	.globl _isp_inc_pointer
                                    292 	.globl _isp_read_16
                                    293 	.globl _isp_read_8
                                    294 	.globl _isp_read_14s
                                    295 	.globl _isp_send
                                    296 	.globl _isp_send_8_msb
                                    297 	.globl _isp_read_8_msb
                                    298 	.globl _isp_read_16_msb
                                    299 	.globl _enter_progmode
                                    300 	.globl _p18_enter_progmode
                                    301 	.globl _p18_isp_mass_erase
                                    302 	.globl _p18fj_isp_mass_erase
                                    303 	.globl _p18fk_isp_mass_erase
                                    304 	.globl _p18fk_isp_write_pgm
                                    305 	.globl _p18_isp_write_pgm
                                    306 	.globl _p18_isp_write_cfg
                                    307 	.globl _p18fk_isp_write_cfg
                                    308 	.globl _p_18_modfied_nop
                                    309 	.globl _p_18_isp_read_pgm
                                    310 	.globl _p18_set_tblptr
                                    311 	.globl _p18_read_pgm_byte
                                    312 	.globl _p18_get_ID
                                    313 	.globl _p18_send_cmd_payload
                                    314 	.globl _p18_get_cmd_payload
                                    315 	.globl _exit_progmode
                                    316 	.globl _p16c_enter_progmode
                                    317 	.globl _p16c_set_pc
                                    318 	.globl _p16c_bulk_erase
                                    319 	.globl _p16c_load_nvm
                                    320 	.globl _p16c_read_data_nvm
                                    321 	.globl _p16c_begin_prog
                                    322 	.globl _p16c_isp_write_pgm
                                    323 	.globl _p16c_isp_read_pgm
                                    324 	.globl _p16c_isp_write_cfg
                                    325 	.globl _p18q_isp_write_pgm
                                    326 	.globl _p18q_isp_write_cfg
                                    327 	.globl _usart_tx_b
                                    328 ;--------------------------------------------------------
                                    329 ; special function registers
                                    330 ;--------------------------------------------------------
                                    331 	.area RSEG    (ABS,DATA)
      000000                        332 	.org 0x0000
                           0000D0   333 _PSW	=	0x00d0
                           0000E0   334 _ACC	=	0x00e0
                           0000F0   335 _B	=	0x00f0
                           000081   336 _SP	=	0x0081
                           000082   337 _DPL	=	0x0082
                           000083   338 _DPH	=	0x0083
                           0000A1   339 _SAFE_MOD	=	0x00a1
                           0000B1   340 _GLOBAL_CFG	=	0x00b1
                           000087   341 _PCON	=	0x0087
                           0000B9   342 _CLOCK_CFG	=	0x00b9
                           0000A9   343 _WAKE_CTRL	=	0x00a9
                           0000FE   344 _RESET_KEEP	=	0x00fe
                           0000FF   345 _WDOG_COUNT	=	0x00ff
                           0000A8   346 _IE	=	0x00a8
                           0000B8   347 _IP	=	0x00b8
                           0000E8   348 _IE_EX	=	0x00e8
                           0000E9   349 _IP_EX	=	0x00e9
                           0000C7   350 _GPIO_IE	=	0x00c7
                           008584   351 _ROM_ADDR	=	0x8584
                           000084   352 _ROM_ADDR_L	=	0x0084
                           000085   353 _ROM_ADDR_H	=	0x0085
                           008F8E   354 _ROM_DATA	=	0x8f8e
                           00008E   355 _ROM_DATA_L	=	0x008e
                           00008F   356 _ROM_DATA_H	=	0x008f
                           000086   357 _ROM_CTRL	=	0x0086
                           000090   358 _P1	=	0x0090
                           000092   359 _P1_MOD_OC	=	0x0092
                           000093   360 _P1_DIR_PU	=	0x0093
                           0000A0   361 _P2	=	0x00a0
                           0000B0   362 _P3	=	0x00b0
                           000096   363 _P3_MOD_OC	=	0x0096
                           000097   364 _P3_DIR_PU	=	0x0097
                           0000C6   365 _PIN_FUNC	=	0x00c6
                           0000A2   366 _XBUS_AUX	=	0x00a2
                           000088   367 _TCON	=	0x0088
                           000089   368 _TMOD	=	0x0089
                           00008A   369 _TL0	=	0x008a
                           00008B   370 _TL1	=	0x008b
                           00008C   371 _TH0	=	0x008c
                           00008D   372 _TH1	=	0x008d
                           000098   373 _SCON	=	0x0098
                           000099   374 _SBUF	=	0x0099
                           0000C8   375 _T2CON	=	0x00c8
                           0000C9   376 _T2MOD	=	0x00c9
                           00CBCA   377 _RCAP2	=	0xcbca
                           0000CA   378 _RCAP2L	=	0x00ca
                           0000CB   379 _RCAP2H	=	0x00cb
                           00CDCC   380 _T2COUNT	=	0xcdcc
                           0000CC   381 _TL2	=	0x00cc
                           0000CD   382 _TH2	=	0x00cd
                           00CFCE   383 _T2CAP1	=	0xcfce
                           0000CE   384 _T2CAP1L	=	0x00ce
                           0000CF   385 _T2CAP1H	=	0x00cf
                           00009B   386 _PWM_DATA2	=	0x009b
                           00009C   387 _PWM_DATA1	=	0x009c
                           00009D   388 _PWM_CTRL	=	0x009d
                           00009E   389 _PWM_CK_SE	=	0x009e
                           0000F8   390 _SPI0_STAT	=	0x00f8
                           0000F9   391 _SPI0_DATA	=	0x00f9
                           0000FA   392 _SPI0_CTRL	=	0x00fa
                           0000FB   393 _SPI0_CK_SE	=	0x00fb
                           0000FC   394 _SPI0_SETUP	=	0x00fc
                           0000C0   395 _SCON1	=	0x00c0
                           0000C1   396 _SBUF1	=	0x00c1
                           0000C2   397 _SBAUD1	=	0x00c2
                           000080   398 _ADC_CTRL	=	0x0080
                           00009A   399 _ADC_CFG	=	0x009a
                           00009F   400 _ADC_DATA	=	0x009f
                           0000C3   401 _TKEY_CTRL	=	0x00c3
                           00C5C4   402 _TKEY_DAT	=	0xc5c4
                           0000C4   403 _TKEY_DATL	=	0x00c4
                           0000C5   404 _TKEY_DATH	=	0x00c5
                           000091   405 _USB_C_CTRL	=	0x0091
                           0000D1   406 _UDEV_CTRL	=	0x00d1
                           0000D2   407 _UEP1_CTRL	=	0x00d2
                           0000D3   408 _UEP1_T_LEN	=	0x00d3
                           0000D4   409 _UEP2_CTRL	=	0x00d4
                           0000D5   410 _UEP2_T_LEN	=	0x00d5
                           0000D6   411 _UEP3_CTRL	=	0x00d6
                           0000D7   412 _UEP3_T_LEN	=	0x00d7
                           0000D8   413 _USB_INT_FG	=	0x00d8
                           0000D9   414 _USB_INT_ST	=	0x00d9
                           0000DA   415 _USB_MIS_ST	=	0x00da
                           0000DB   416 _USB_RX_LEN	=	0x00db
                           0000DC   417 _UEP0_CTRL	=	0x00dc
                           0000DD   418 _UEP0_T_LEN	=	0x00dd
                           0000DE   419 _UEP4_CTRL	=	0x00de
                           0000DF   420 _UEP4_T_LEN	=	0x00df
                           0000E1   421 _USB_INT_EN	=	0x00e1
                           0000E2   422 _USB_CTRL	=	0x00e2
                           0000E3   423 _USB_DEV_AD	=	0x00e3
                           00E5E4   424 _UEP2_DMA	=	0xe5e4
                           0000E4   425 _UEP2_DMA_L	=	0x00e4
                           0000E5   426 _UEP2_DMA_H	=	0x00e5
                           00E7E6   427 _UEP3_DMA	=	0xe7e6
                           0000E6   428 _UEP3_DMA_L	=	0x00e6
                           0000E7   429 _UEP3_DMA_H	=	0x00e7
                           0000EA   430 _UEP4_1_MOD	=	0x00ea
                           0000EB   431 _UEP2_3_MOD	=	0x00eb
                           00EDEC   432 _UEP0_DMA	=	0xedec
                           0000EC   433 _UEP0_DMA_L	=	0x00ec
                           0000ED   434 _UEP0_DMA_H	=	0x00ed
                           00EFEE   435 _UEP1_DMA	=	0xefee
                           0000EE   436 _UEP1_DMA_L	=	0x00ee
                           0000EF   437 _UEP1_DMA_H	=	0x00ef
                                    438 ;--------------------------------------------------------
                                    439 ; special function bits
                                    440 ;--------------------------------------------------------
                                    441 	.area RSEG    (ABS,DATA)
      000000                        442 	.org 0x0000
                           0000D7   443 _CY	=	0x00d7
                           0000D6   444 _AC	=	0x00d6
                           0000D5   445 _F0	=	0x00d5
                           0000D4   446 _RS1	=	0x00d4
                           0000D3   447 _RS0	=	0x00d3
                           0000D2   448 _OV	=	0x00d2
                           0000D1   449 _F1	=	0x00d1
                           0000D0   450 _P	=	0x00d0
                           0000AF   451 _EA	=	0x00af
                           0000AE   452 _E_DIS	=	0x00ae
                           0000AD   453 _ET2	=	0x00ad
                           0000AC   454 _ES	=	0x00ac
                           0000AB   455 _ET1	=	0x00ab
                           0000AA   456 _EX1	=	0x00aa
                           0000A9   457 _ET0	=	0x00a9
                           0000A8   458 _EX0	=	0x00a8
                           0000BF   459 _PH_FLAG	=	0x00bf
                           0000BE   460 _PL_FLAG	=	0x00be
                           0000BD   461 _PT2	=	0x00bd
                           0000BC   462 _PS	=	0x00bc
                           0000BB   463 _PT1	=	0x00bb
                           0000BA   464 _PX1	=	0x00ba
                           0000B9   465 _PT0	=	0x00b9
                           0000B8   466 _PX0	=	0x00b8
                           0000EF   467 _IE_WDOG	=	0x00ef
                           0000EE   468 _IE_GPIO	=	0x00ee
                           0000ED   469 _IE_PWMX	=	0x00ed
                           0000EC   470 _IE_UART1	=	0x00ec
                           0000EB   471 _IE_ADC	=	0x00eb
                           0000EA   472 _IE_USB	=	0x00ea
                           0000E9   473 _IE_TKEY	=	0x00e9
                           0000E8   474 _IE_SPI0	=	0x00e8
                           000097   475 _SCK	=	0x0097
                           000097   476 _TXD1	=	0x0097
                           000097   477 _TIN5	=	0x0097
                           000096   478 _MISO	=	0x0096
                           000096   479 _RXD1	=	0x0096
                           000096   480 _TIN4	=	0x0096
                           000095   481 _MOSI	=	0x0095
                           000095   482 _PWM1	=	0x0095
                           000095   483 _TIN3	=	0x0095
                           000095   484 _UCC2	=	0x0095
                           000095   485 _AIN2	=	0x0095
                           000094   486 _T2_	=	0x0094
                           000094   487 _CAP1_	=	0x0094
                           000094   488 _SCS	=	0x0094
                           000094   489 _TIN2	=	0x0094
                           000094   490 _UCC1	=	0x0094
                           000094   491 _AIN1	=	0x0094
                           000093   492 _TXD_	=	0x0093
                           000092   493 _RXD_	=	0x0092
                           000091   494 _T2EX	=	0x0091
                           000091   495 _CAP2	=	0x0091
                           000091   496 _TIN1	=	0x0091
                           000091   497 _VBUS2	=	0x0091
                           000091   498 _AIN0	=	0x0091
                           000090   499 _T2	=	0x0090
                           000090   500 _CAP1	=	0x0090
                           000090   501 _TIN0	=	0x0090
                           0000B7   502 _UDM	=	0x00b7
                           0000B6   503 _UDP	=	0x00b6
                           0000B5   504 _T1	=	0x00b5
                           0000B4   505 _PWM2	=	0x00b4
                           0000B4   506 _RXD1_	=	0x00b4
                           0000B4   507 _T0	=	0x00b4
                           0000B3   508 _INT1	=	0x00b3
                           0000B2   509 _TXD1_	=	0x00b2
                           0000B2   510 _INT0	=	0x00b2
                           0000B2   511 _VBUS1	=	0x00b2
                           0000B2   512 _AIN3	=	0x00b2
                           0000B1   513 _PWM2_	=	0x00b1
                           0000B1   514 _TXD	=	0x00b1
                           0000B0   515 _PWM1_	=	0x00b0
                           0000B0   516 _RXD	=	0x00b0
                           00008F   517 _TF1	=	0x008f
                           00008E   518 _TR1	=	0x008e
                           00008D   519 _TF0	=	0x008d
                           00008C   520 _TR0	=	0x008c
                           00008B   521 _IE1	=	0x008b
                           00008A   522 _IT1	=	0x008a
                           000089   523 _IE0	=	0x0089
                           000088   524 _IT0	=	0x0088
                           00009F   525 _SM0	=	0x009f
                           00009E   526 _SM1	=	0x009e
                           00009D   527 _SM2	=	0x009d
                           00009C   528 _REN	=	0x009c
                           00009B   529 _TB8	=	0x009b
                           00009A   530 _RB8	=	0x009a
                           000099   531 _TI	=	0x0099
                           000098   532 _RI	=	0x0098
                           0000CF   533 _TF2	=	0x00cf
                           0000CF   534 _CAP1F	=	0x00cf
                           0000CE   535 _EXF2	=	0x00ce
                           0000CD   536 _RCLK	=	0x00cd
                           0000CC   537 _TCLK	=	0x00cc
                           0000CB   538 _EXEN2	=	0x00cb
                           0000CA   539 _TR2	=	0x00ca
                           0000C9   540 _C_T2	=	0x00c9
                           0000C8   541 _CP_RL2	=	0x00c8
                           0000FF   542 _S0_FST_ACT	=	0x00ff
                           0000FE   543 _S0_IF_OV	=	0x00fe
                           0000FD   544 _S0_IF_FIRST	=	0x00fd
                           0000FC   545 _S0_IF_BYTE	=	0x00fc
                           0000FB   546 _S0_FREE	=	0x00fb
                           0000FA   547 _S0_T_FIFO	=	0x00fa
                           0000F8   548 _S0_R_FIFO	=	0x00f8
                           0000C7   549 _U1SM0	=	0x00c7
                           0000C5   550 _U1SMOD	=	0x00c5
                           0000C4   551 _U1REN	=	0x00c4
                           0000C3   552 _U1TB8	=	0x00c3
                           0000C2   553 _U1RB8	=	0x00c2
                           0000C1   554 _U1TI	=	0x00c1
                           0000C0   555 _U1RI	=	0x00c0
                           000087   556 _CMPO	=	0x0087
                           000086   557 _CMP_IF	=	0x0086
                           000085   558 _ADC_IF	=	0x0085
                           000084   559 _ADC_START	=	0x0084
                           000083   560 _CMP_CHAN	=	0x0083
                           000081   561 _ADC_CHAN1	=	0x0081
                           000080   562 _ADC_CHAN0	=	0x0080
                           0000DF   563 _U_IS_NAK	=	0x00df
                           0000DE   564 _U_TOG_OK	=	0x00de
                           0000DD   565 _U_SIE_FREE	=	0x00dd
                           0000DC   566 _UIF_FIFO_OV	=	0x00dc
                           0000DB   567 _UIF_HST_SOF	=	0x00db
                           0000DA   568 _UIF_SUSPEND	=	0x00da
                           0000D9   569 _UIF_TRANSFER	=	0x00d9
                           0000D8   570 _UIF_DETECT	=	0x00d8
                           0000D8   571 _UIF_BUS_RST	=	0x00d8
                           000090   572 _PP10	=	0x0090
                           000091   573 _PP11	=	0x0091
                           000092   574 _PP12	=	0x0092
                           000093   575 _PP13	=	0x0093
                           000094   576 _PP14	=	0x0094
                           000095   577 _PP15	=	0x0095
                           000096   578 _PP16	=	0x0096
                           000097   579 _PP17	=	0x0097
                           0000B0   580 _PP30	=	0x00b0
                           0000B1   581 _PP31	=	0x00b1
                           0000B2   582 _PP32	=	0x00b2
                           0000B3   583 _PP33	=	0x00b3
                           0000B4   584 _PP34	=	0x00b4
                           0000B5   585 _PP35	=	0x00b5
                           0000B6   586 _PP36	=	0x00b6
                           0000B7   587 _PP37	=	0x00b7
                                    588 ;--------------------------------------------------------
                                    589 ; overlayable register banks
                                    590 ;--------------------------------------------------------
                                    591 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        592 	.ds 8
                                    593 ;--------------------------------------------------------
                                    594 ; overlayable bit register bank
                                    595 ;--------------------------------------------------------
                                    596 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        597 bits:
      000021                        598 	.ds 1
                           008000   599 	b0 = bits[0]
                           008100   600 	b1 = bits[1]
                           008200   601 	b2 = bits[2]
                           008300   602 	b3 = bits[3]
                           008400   603 	b4 = bits[4]
                           008500   604 	b5 = bits[5]
                           008600   605 	b6 = bits[6]
                           008700   606 	b7 = bits[7]
                                    607 ;--------------------------------------------------------
                                    608 ; internal ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area DSEG    (DATA)
      000008                        611 _rx::
      000008                        612 	.ds 1
      000009                        613 _i::
      000009                        614 	.ds 1
      00000A                        615 _bytes_to_receive::
      00000A                        616 	.ds 1
      00000B                        617 _rx_state::
      00000B                        618 	.ds 1
      00000C                        619 _rx_message_ptr::
      00000C                        620 	.ds 1
      00000D                        621 _eeprom_buf::
      00000D                        622 	.ds 3
      000010                        623 _cfg_val::
      000010                        624 	.ds 2
      000012                        625 _addr::
      000012                        626 	.ds 4
                                    627 ;--------------------------------------------------------
                                    628 ; overlayable items in internal ram
                                    629 ;--------------------------------------------------------
                                    630 ;--------------------------------------------------------
                                    631 ; indirectly addressable internal ram data
                                    632 ;--------------------------------------------------------
                                    633 	.area ISEG    (DATA)
                                    634 ;--------------------------------------------------------
                                    635 ; absolute internal ram data
                                    636 ;--------------------------------------------------------
                                    637 	.area IABS    (ABS,DATA)
                                    638 	.area IABS    (ABS,DATA)
                                    639 ;--------------------------------------------------------
                                    640 ; bit data
                                    641 ;--------------------------------------------------------
                                    642 	.area BSEG    (BIT)
                                    643 ;--------------------------------------------------------
                                    644 ; paged external ram data
                                    645 ;--------------------------------------------------------
                                    646 	.area PSEG    (PAG,XDATA)
                                    647 ;--------------------------------------------------------
                                    648 ; uninitialized external ram data
                                    649 ;--------------------------------------------------------
                                    650 	.area XSEG    (XDATA)
                           000000   651 _EP0_buffer	=	0x0000
                           00000A   652 _EP1_buffer	=	0x000a
                           000014   653 _EP2_buffer	=	0x0014
      000001                        654 _rx_message::
      000001                        655 	.ds 140
      00008D                        656 _flash_buffer::
      00008D                        657 	.ds 128
                                    658 ;--------------------------------------------------------
                                    659 ; absolute external ram data
                                    660 ;--------------------------------------------------------
                                    661 	.area XABS    (ABS,XDATA)
                                    662 ;--------------------------------------------------------
                                    663 ; initialized external ram data
                                    664 ;--------------------------------------------------------
                                    665 	.area XISEG   (XDATA)
                                    666 	.area HOME    (CODE)
                                    667 	.area GSINIT0 (CODE)
                                    668 	.area GSINIT1 (CODE)
                                    669 	.area GSINIT2 (CODE)
                                    670 	.area GSINIT3 (CODE)
                                    671 	.area GSINIT4 (CODE)
                                    672 	.area GSINIT5 (CODE)
                                    673 	.area GSINIT  (CODE)
                                    674 	.area GSFINAL (CODE)
                                    675 	.area CSEG    (CODE)
                                    676 ;--------------------------------------------------------
                                    677 ; global & static initialisations
                                    678 ;--------------------------------------------------------
                                    679 	.area HOME    (CODE)
                                    680 	.area GSINIT  (CODE)
                                    681 	.area GSFINAL (CODE)
                                    682 	.area GSINIT  (CODE)
                                    683 ;	isp.c:13: unsigned char rx = 0;
      0000A2 75 08 00         [24]  684 	mov	_rx,#0x00
                                    685 ;	isp.c:14: unsigned char i = 0;
      0000A5 75 09 00         [24]  686 	mov	_i,#0x00
                                    687 ;	isp.c:16: unsigned char bytes_to_receive = 0;
      0000A8 75 0A 00         [24]  688 	mov	_bytes_to_receive,#0x00
                                    689 ;	isp.c:17: unsigned char rx_state = 0;
      0000AB 75 0B 00         [24]  690 	mov	_rx_state,#0x00
                                    691 ;	isp.c:19: unsigned char rx_message_ptr = 0;
      0000AE 75 0C 00         [24]  692 	mov	_rx_message_ptr,#0x00
                                    693 ;--------------------------------------------------------
                                    694 ; Home
                                    695 ;--------------------------------------------------------
                                    696 	.area HOME    (CODE)
                                    697 	.area HOME    (CODE)
                                    698 ;--------------------------------------------------------
                                    699 ; code
                                    700 ;--------------------------------------------------------
                                    701 	.area CSEG    (CODE)
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'ISP'
                                    704 ;------------------------------------------------------------
                                    705 ;	isp.c:25: void ISP(void) {
                                    706 ;	-----------------------------------------
                                    707 ;	 function ISP
                                    708 ;	-----------------------------------------
      0000B6                        709 _ISP:
                           000007   710 	ar7 = 0x07
                           000006   711 	ar6 = 0x06
                           000005   712 	ar5 = 0x05
                           000004   713 	ar4 = 0x04
                           000003   714 	ar3 = 0x03
                           000002   715 	ar2 = 0x02
                           000001   716 	ar1 = 0x01
                           000000   717 	ar0 = 0x00
                                    718 ;	isp.c:27: ISP_CLK_D_O
      0000B6 53 92 BF         [24]  719 	anl	_P1_MOD_OC,#0xbf
      0000B9 43 93 40         [24]  720 	orl	_P1_DIR_PU,#0x40
                                    721 ;	isp.c:28: ISP_DAT_D_O
      0000BC 53 92 7F         [24]  722 	anl	_P1_MOD_OC,#0x7f
      0000BF 43 93 80         [24]  723 	orl	_P1_DIR_PU,#0x80
                                    724 ;	isp.c:30: ISP_DAT_0
                                    725 ;	assignBit
      0000C2 C2 97            [12]  726 	clr	_PP17
                                    727 ;	isp.c:31: ISP_CLK_0
                                    728 ;	assignBit
      0000C4 C2 96            [12]  729 	clr	_PP16
                                    730 ;	isp.c:32: ISP_MCLR_D_O
      0000C6 53 92 DF         [24]  731 	anl	_P1_MOD_OC,#0xdf
      0000C9 43 93 20         [24]  732 	orl	_P1_DIR_PU,#0x20
                                    733 ;	isp.c:33: ISP_MCLR_1
                                    734 ;	assignBit
      0000CC D2 95            [12]  735 	setb	_PP15
                                    736 ;	isp.c:35: rx_state = 0;
      0000CE 75 0B 00         [24]  737 	mov	_rx_state,#0x00
                                    738 ;	isp.c:37: PIN_high(P14);
                                    739 ;	assignBit
      0000D1 D2 94            [12]  740 	setb	_PP14
                                    741 ;	isp.c:38: DLY_ms(1000);
      0000D3 90 03 E8         [24]  742 	mov	dptr,#0x03e8
      0000D6 12 1C 22         [24]  743 	lcall	_DLY_ms
                                    744 ;	isp.c:39: PIN_low(P14);
                                    745 ;	assignBit
      0000D9 C2 94            [12]  746 	clr	_PP14
                                    747 ;	isp.c:41: while(1) {
      0000DB                        748 00152$:
                                    749 ;	isp.c:42: if(CDC_available()) {
      0000DB 90 01 15         [24]  750 	mov	dptr,#_CDC_readByteCount
      0000DE E0               [24]  751 	movx	a,@dptr
      0000DF 60 FA            [24]  752 	jz	00152$
                                    753 ;	isp.c:45: PP14 = 1;
                                    754 ;	assignBit
      0000E1 D2 94            [12]  755 	setb	_PP14
                                    756 ;	isp.c:46: rx = CDC_read();
      0000E3 12 1C BA         [24]  757 	lcall	_CDC_read
      0000E6 85 82 08         [24]  758 	mov	_rx,dpl
                                    759 ;	isp.c:48: rx_state = rx_state_machine (rx_state,rx);
      0000E9 C0 08            [24]  760 	push	_rx
      0000EB 85 0B 82         [24]  761 	mov	dpl,_rx_state
      0000EE 12 0C 0F         [24]  762 	lcall	_rx_state_machine
      0000F1 85 82 0B         [24]  763 	mov	_rx_state,dpl
      0000F4 15 81            [12]  764 	dec	sp
                                    765 ;	isp.c:49: if (rx_state==3) {
      0000F6 74 03            [12]  766 	mov	a,#0x03
      0000F8 B5 0B 02         [24]  767 	cjne	a,_rx_state,00403$
      0000FB 80 03            [24]  768 	sjmp	00404$
      0000FD                        769 00403$:
      0000FD 02 0C 0A         [24]  770 	ljmp	00148$
      000100                        771 00404$:
                                    772 ;	isp.c:51: switch (rx_message[0]) {
      000100 90 00 01         [24]  773 	mov	dptr,#_rx_message
      000103 E0               [24]  774 	movx	a,@dptr
      000104 FF               [12]  775 	mov	r7,a
      000105 BF 01 03         [24]  776 	cjne	r7,#0x01,00405$
      000108 02 01 B6         [24]  777 	ljmp	00101$
      00010B                        778 00405$:
      00010B BF 02 03         [24]  779 	cjne	r7,#0x02,00406$
      00010E 02 01 CA         [24]  780 	ljmp	00102$
      000111                        781 00406$:
      000111 BF 03 03         [24]  782 	cjne	r7,#0x03,00407$
      000114 02 01 DE         [24]  783 	ljmp	00103$
      000117                        784 00407$:
      000117 BF 04 03         [24]  785 	cjne	r7,#0x04,00408$
      00011A 02 01 F2         [24]  786 	ljmp	00104$
      00011D                        787 00408$:
      00011D BF 05 03         [24]  788 	cjne	r7,#0x05,00409$
      000120 02 02 09         [24]  789 	ljmp	00105$
      000123                        790 00409$:
      000123 BF 06 03         [24]  791 	cjne	r7,#0x06,00410$
      000126 02 02 2F         [24]  792 	ljmp	00107$
      000129                        793 00410$:
      000129 BF 07 03         [24]  794 	cjne	r7,#0x07,00411$
      00012C 02 02 A0         [24]  795 	ljmp	00109$
      00012F                        796 00411$:
      00012F BF 08 03         [24]  797 	cjne	r7,#0x08,00412$
      000132 02 02 B4         [24]  798 	ljmp	00110$
      000135                        799 00412$:
      000135 BF 09 03         [24]  800 	cjne	r7,#0x09,00413$
      000138 02 03 5F         [24]  801 	ljmp	00112$
      00013B                        802 00413$:
      00013B BF 0A 03         [24]  803 	cjne	r7,#0x0a,00414$
      00013E 02 03 73         [24]  804 	ljmp	00114$
      000141                        805 00414$:
      000141 BF 0C 03         [24]  806 	cjne	r7,#0x0c,00415$
      000144 02 04 12         [24]  807 	ljmp	00121$
      000147                        808 00415$:
      000147 BF 0D 03         [24]  809 	cjne	r7,#0x0d,00416$
      00014A 02 03 73         [24]  810 	ljmp	00114$
      00014D                        811 00416$:
      00014D BF 10 03         [24]  812 	cjne	r7,#0x10,00417$
      000150 02 04 52         [24]  813 	ljmp	00122$
      000153                        814 00417$:
      000153 BF 11 03         [24]  815 	cjne	r7,#0x11,00418$
      000156 02 04 66         [24]  816 	ljmp	00123$
      000159                        817 00418$:
      000159 BF 12 03         [24]  818 	cjne	r7,#0x12,00419$
      00015C 02 05 23         [24]  819 	ljmp	00125$
      00015F                        820 00419$:
      00015F BF 13 03         [24]  821 	cjne	r7,#0x13,00420$
      000162 02 06 10         [24]  822 	ljmp	00127$
      000165                        823 00420$:
      000165 BF 14 03         [24]  824 	cjne	r7,#0x14,00421$
      000168 02 06 24         [24]  825 	ljmp	00128$
      00016B                        826 00421$:
      00016B BF 23 03         [24]  827 	cjne	r7,#0x23,00422$
      00016E 02 06 94         [24]  828 	ljmp	00129$
      000171                        829 00422$:
      000171 BF 30 03         [24]  830 	cjne	r7,#0x30,00423$
      000174 02 06 A8         [24]  831 	ljmp	00130$
      000177                        832 00423$:
      000177 BF 31 03         [24]  833 	cjne	r7,#0x31,00424$
      00017A 02 06 D5         [24]  834 	ljmp	00131$
      00017D                        835 00424$:
      00017D BF 32 03         [24]  836 	cjne	r7,#0x32,00425$
      000180 02 07 C2         [24]  837 	ljmp	00133$
      000183                        838 00425$:
      000183 BF 40 03         [24]  839 	cjne	r7,#0x40,00426$
      000186 02 08 32         [24]  840 	ljmp	00134$
      000189                        841 00426$:
      000189 BF 41 03         [24]  842 	cjne	r7,#0x41,00427$
      00018C 02 08 46         [24]  843 	ljmp	00135$
      00018F                        844 00427$:
      00018F BF 42 03         [24]  845 	cjne	r7,#0x42,00428$
      000192 02 09 03         [24]  846 	ljmp	00137$
      000195                        847 00428$:
      000195 BF 43 03         [24]  848 	cjne	r7,#0x43,00429$
      000198 02 09 F0         [24]  849 	ljmp	00139$
      00019B                        850 00429$:
      00019B BF 44 03         [24]  851 	cjne	r7,#0x44,00430$
      00019E 02 0A 0D         [24]  852 	ljmp	00140$
      0001A1                        853 00430$:
      0001A1 BF 45 03         [24]  854 	cjne	r7,#0x45,00431$
      0001A4 02 0A 8D         [24]  855 	ljmp	00141$
      0001A7                        856 00431$:
      0001A7 BF 46 03         [24]  857 	cjne	r7,#0x46,00432$
      0001AA 02 0B 0D         [24]  858 	ljmp	00142$
      0001AD                        859 00432$:
      0001AD BF FF 03         [24]  860 	cjne	r7,#0xff,00433$
      0001B0 02 0B F9         [24]  861 	ljmp	00144$
      0001B3                        862 00433$:
      0001B3 02 0C 0A         [24]  863 	ljmp	00148$
                                    864 ;	isp.c:53: case 0x01: // prog_enter_progmode
      0001B6                        865 00101$:
                                    866 ;	isp.c:54: enter_progmode();
      0001B6 12 11 73         [24]  867 	lcall	_enter_progmode
                                    868 ;	isp.c:55: usart_tx_b (0x81, TRUE);
      0001B9 D2 F0            [12]  869 	setb	b[0]
      0001BB 85 F0 21         [24]  870 	mov	bits,b
      0001BE 75 82 81         [24]  871 	mov	dpl,#0x81
      0001C1 12 1B F6         [24]  872 	lcall	_usart_tx_b
                                    873 ;	isp.c:56: rx_state = 0;
      0001C4 75 0B 00         [24]  874 	mov	_rx_state,#0x00
                                    875 ;	isp.c:57: break;
      0001C7 02 0C 0A         [24]  876 	ljmp	00148$
                                    877 ;	isp.c:59: case 0x02: // prog_exit_progmode
      0001CA                        878 00102$:
                                    879 ;	isp.c:60: exit_progmode();
      0001CA 12 18 D5         [24]  880 	lcall	_exit_progmode
                                    881 ;	isp.c:61: usart_tx_b (0x82, TRUE);
      0001CD D2 F0            [12]  882 	setb	b[0]
      0001CF 85 F0 21         [24]  883 	mov	bits,b
      0001D2 75 82 82         [24]  884 	mov	dpl,#0x82
      0001D5 12 1B F6         [24]  885 	lcall	_usart_tx_b
                                    886 ;	isp.c:62: rx_state = 0;
      0001D8 75 0B 00         [24]  887 	mov	_rx_state,#0x00
                                    888 ;	isp.c:63: break;
      0001DB 02 0C 0A         [24]  889 	ljmp	00148$
                                    890 ;	isp.c:65: case 0x03: // p16a_rst_pointer A
      0001DE                        891 00103$:
                                    892 ;	isp.c:66: isp_reset_pointer();
      0001DE 12 0E BE         [24]  893 	lcall	_isp_reset_pointer
                                    894 ;	isp.c:67: usart_tx_b (0x83, TRUE);
      0001E1 D2 F0            [12]  895 	setb	b[0]
      0001E3 85 F0 21         [24]  896 	mov	bits,b
      0001E6 75 82 83         [24]  897 	mov	dpl,#0x83
      0001E9 12 1B F6         [24]  898 	lcall	_usart_tx_b
                                    899 ;	isp.c:68: rx_state = 0;
      0001EC 75 0B 00         [24]  900 	mov	_rx_state,#0x00
                                    901 ;	isp.c:69: break;
      0001EF 02 0C 0A         [24]  902 	ljmp	00148$
                                    903 ;	isp.c:71: case 0x04: // p16a_load_config
      0001F2                        904 00104$:
                                    905 ;	isp.c:72: isp_send_config(0);
      0001F2 90 00 00         [24]  906 	mov	dptr,#0x0000
      0001F5 12 0E 80         [24]  907 	lcall	_isp_send_config
                                    908 ;	isp.c:73: usart_tx_b (0x84, TRUE);
      0001F8 D2 F0            [12]  909 	setb	b[0]
      0001FA 85 F0 21         [24]  910 	mov	bits,b
      0001FD 75 82 84         [24]  911 	mov	dpl,#0x84
      000200 12 1B F6         [24]  912 	lcall	_usart_tx_b
                                    913 ;	isp.c:74: rx_state = 0;
      000203 75 0B 00         [24]  914 	mov	_rx_state,#0x00
                                    915 ;	isp.c:75: break;
      000206 02 0C 0A         [24]  916 	ljmp	00148$
                                    917 ;	isp.c:77: case 0x05: // p16a_inc_pointer
      000209                        918 00105$:
                                    919 ;	isp.c:78: for (i=0;i<rx_message[2];i++)
      000209 75 09 00         [24]  920 	mov	_i,#0x00
      00020C                        921 00155$:
      00020C 90 00 03         [24]  922 	mov	dptr,#(_rx_message + 0x0002)
      00020F E0               [24]  923 	movx	a,@dptr
      000210 FF               [12]  924 	mov	r7,a
      000211 C3               [12]  925 	clr	c
      000212 E5 09            [12]  926 	mov	a,_i
      000214 9F               [12]  927 	subb	a,r7
      000215 50 07            [24]  928 	jnc	00106$
                                    929 ;	isp.c:79: isp_inc_pointer();
      000217 12 0F 68         [24]  930 	lcall	_isp_inc_pointer
                                    931 ;	isp.c:78: for (i=0;i<rx_message[2];i++)
      00021A 05 09            [12]  932 	inc	_i
      00021C 80 EE            [24]  933 	sjmp	00155$
      00021E                        934 00106$:
                                    935 ;	isp.c:80: usart_tx_b (0x85, TRUE);
      00021E D2 F0            [12]  936 	setb	b[0]
      000220 85 F0 21         [24]  937 	mov	bits,b
      000223 75 82 85         [24]  938 	mov	dpl,#0x85
      000226 12 1B F6         [24]  939 	lcall	_usart_tx_b
                                    940 ;	isp.c:81: rx_state = 0;
      000229 75 0B 00         [24]  941 	mov	_rx_state,#0x00
                                    942 ;	isp.c:82: break;
      00022C 02 0C 0A         [24]  943 	ljmp	00148$
                                    944 ;	isp.c:84: case 0x06: // p16a_read_page
      00022F                        945 00107$:
                                    946 ;	isp.c:85: isp_read_pgm(flash_buffer, rx_message[2]);
      00022F 90 00 03         [24]  947 	mov	dptr,#(_rx_message + 0x0002)
      000232 E0               [24]  948 	movx	a,@dptr
      000233 FF               [12]  949 	mov	r7,a
      000234 C0 07            [24]  950 	push	ar7
      000236 90 00 8D         [24]  951 	mov	dptr,#_flash_buffer
      000239 75 F0 00         [24]  952 	mov	b,#0x00
      00023C 12 0C 7A         [24]  953 	lcall	_isp_read_pgm
      00023F 15 81            [12]  954 	dec	sp
                                    955 ;	isp.c:86: usart_tx_b(0x86, FALSE);
      000241 C2 F0            [12]  956 	clr	b[0]
      000243 85 F0 21         [24]  957 	mov	bits,b
      000246 75 82 86         [24]  958 	mov	dpl,#0x86
      000249 12 1B F6         [24]  959 	lcall	_usart_tx_b
                                    960 ;	isp.c:87: for (i = 0; i < rx_message[2]; i++) {
      00024C 75 09 00         [24]  961 	mov	_i,#0x00
      00024F                        962 00158$:
      00024F 90 00 03         [24]  963 	mov	dptr,#(_rx_message + 0x0002)
      000252 E0               [24]  964 	movx	a,@dptr
      000253 FF               [12]  965 	mov	r7,a
      000254 C3               [12]  966 	clr	c
      000255 E5 09            [12]  967 	mov	a,_i
      000257 9F               [12]  968 	subb	a,r7
      000258 50 3D            [24]  969 	jnc	00108$
                                    970 ;	isp.c:91: usart_tx_b(flash_buffer[i] & 0xFF, FALSE);
      00025A E5 09            [12]  971 	mov	a,_i
      00025C 75 F0 02         [24]  972 	mov	b,#0x02
      00025F A4               [48]  973 	mul	ab
      000260 24 8D            [12]  974 	add	a,#_flash_buffer
      000262 F5 82            [12]  975 	mov	dpl,a
      000264 74 00            [12]  976 	mov	a,#(_flash_buffer >> 8)
      000266 35 F0            [12]  977 	addc	a,b
      000268 F5 83            [12]  978 	mov	dph,a
      00026A E0               [24]  979 	movx	a,@dptr
      00026B FF               [12]  980 	mov	r7,a
      00026C C2 F0            [12]  981 	clr	b[0]
      00026E 85 F0 21         [24]  982 	mov	bits,b
      000271 8F 82            [24]  983 	mov	dpl,r7
      000273 12 1B F6         [24]  984 	lcall	_usart_tx_b
                                    985 ;	isp.c:92: usart_tx_b(flash_buffer[i] >> 8, FALSE);
      000276 E5 09            [12]  986 	mov	a,_i
      000278 75 F0 02         [24]  987 	mov	b,#0x02
      00027B A4               [48]  988 	mul	ab
      00027C 24 8D            [12]  989 	add	a,#_flash_buffer
      00027E F5 82            [12]  990 	mov	dpl,a
      000280 74 00            [12]  991 	mov	a,#(_flash_buffer >> 8)
      000282 35 F0            [12]  992 	addc	a,b
      000284 F5 83            [12]  993 	mov	dph,a
      000286 E0               [24]  994 	movx	a,@dptr
      000287 A3               [24]  995 	inc	dptr
      000288 E0               [24]  996 	movx	a,@dptr
      000289 F5 82            [12]  997 	mov	dpl,a
      00028B C2 F0            [12]  998 	clr	b[0]
      00028D 85 F0 21         [24]  999 	mov	bits,b
      000290 12 1B F6         [24] 1000 	lcall	_usart_tx_b
                                   1001 ;	isp.c:87: for (i = 0; i < rx_message[2]; i++) {
      000293 05 09            [12] 1002 	inc	_i
      000295 80 B8            [24] 1003 	sjmp	00158$
      000297                       1004 00108$:
                                   1005 ;	isp.c:94: CDC_flush();
      000297 12 1C 3C         [24] 1006 	lcall	_CDC_flush
                                   1007 ;	isp.c:95: rx_state = 0;
      00029A 75 0B 00         [24] 1008 	mov	_rx_state,#0x00
                                   1009 ;	isp.c:96: break;
      00029D 02 0C 0A         [24] 1010 	ljmp	00148$
                                   1011 ;	isp.c:98: case 0x07: // p16a_mass_erase
      0002A0                       1012 00109$:
                                   1013 ;	isp.c:99: isp_mass_erase();
      0002A0 12 0E A6         [24] 1014 	lcall	_isp_mass_erase
                                   1015 ;	isp.c:100: usart_tx_b (0x87, TRUE);
      0002A3 D2 F0            [12] 1016 	setb	b[0]
      0002A5 85 F0 21         [24] 1017 	mov	bits,b
      0002A8 75 82 87         [24] 1018 	mov	dpl,#0x87
      0002AB 12 1B F6         [24] 1019 	lcall	_usart_tx_b
                                   1020 ;	isp.c:101: rx_state = 0;
      0002AE 75 0B 00         [24] 1021 	mov	_rx_state,#0x00
                                   1022 ;	isp.c:102: break;
      0002B1 02 0C 0A         [24] 1023 	ljmp	00148$
                                   1024 ;	isp.c:104: case 0x08: // p16a_program_page
      0002B4                       1025 00110$:
                                   1026 ;	isp.c:105: for (i = 0; i < rx_message[2] / 2; i++)
      0002B4 75 09 00         [24] 1027 	mov	_i,#0x00
      0002B7                       1028 00161$:
      0002B7 90 00 03         [24] 1029 	mov	dptr,#(_rx_message + 0x0002)
      0002BA E0               [24] 1030 	movx	a,@dptr
      0002BB FF               [12] 1031 	mov	r7,a
      0002BC 7E 00            [12] 1032 	mov	r6,#0x00
      0002BE 74 02            [12] 1033 	mov	a,#0x02
      0002C0 C0 E0            [24] 1034 	push	acc
      0002C2 E4               [12] 1035 	clr	a
      0002C3 C0 E0            [24] 1036 	push	acc
      0002C5 8F 82            [24] 1037 	mov	dpl,r7
      0002C7 8E 83            [24] 1038 	mov	dph,r6
      0002C9 12 21 DA         [24] 1039 	lcall	__divsint
      0002CC AE 82            [24] 1040 	mov	r6,dpl
      0002CE AF 83            [24] 1041 	mov	r7,dph
      0002D0 15 81            [12] 1042 	dec	sp
      0002D2 15 81            [12] 1043 	dec	sp
      0002D4 AC 09            [24] 1044 	mov	r4,_i
      0002D6 7D 00            [12] 1045 	mov	r5,#0x00
      0002D8 C3               [12] 1046 	clr	c
      0002D9 EC               [12] 1047 	mov	a,r4
      0002DA 9E               [12] 1048 	subb	a,r6
      0002DB ED               [12] 1049 	mov	a,r5
      0002DC 64 80            [12] 1050 	xrl	a,#0x80
      0002DE 8F F0            [24] 1051 	mov	b,r7
      0002E0 63 F0 80         [24] 1052 	xrl	b,#0x80
      0002E3 95 F0            [12] 1053 	subb	a,b
      0002E5 50 51            [24] 1054 	jnc	00111$
                                   1055 ;	isp.c:106: flash_buffer[i] = (((unsigned int)(rx_message[(2 * i) + 1 + 4])) << 8) +
      0002E7 E5 09            [12] 1056 	mov	a,_i
      0002E9 75 F0 02         [24] 1057 	mov	b,#0x02
      0002EC A4               [48] 1058 	mul	ab
      0002ED 24 8D            [12] 1059 	add	a,#_flash_buffer
      0002EF FA               [12] 1060 	mov	r2,a
      0002F0 74 00            [12] 1061 	mov	a,#(_flash_buffer >> 8)
      0002F2 35 F0            [12] 1062 	addc	a,b
      0002F4 FB               [12] 1063 	mov	r3,a
      0002F5 EC               [12] 1064 	mov	a,r4
      0002F6 2C               [12] 1065 	add	a,r4
      0002F7 FC               [12] 1066 	mov	r4,a
      0002F8 ED               [12] 1067 	mov	a,r5
      0002F9 33               [12] 1068 	rlc	a
      0002FA FD               [12] 1069 	mov	r5,a
      0002FB 74 05            [12] 1070 	mov	a,#0x05
      0002FD 2C               [12] 1071 	add	a,r4
      0002FE F8               [12] 1072 	mov	r0,a
      0002FF E4               [12] 1073 	clr	a
      000300 3D               [12] 1074 	addc	a,r5
      000301 F9               [12] 1075 	mov	r1,a
      000302 E8               [12] 1076 	mov	a,r0
      000303 24 01            [12] 1077 	add	a,#_rx_message
      000305 F5 82            [12] 1078 	mov	dpl,a
      000307 E9               [12] 1079 	mov	a,r1
      000308 34 00            [12] 1080 	addc	a,#(_rx_message >> 8)
      00030A F5 83            [12] 1081 	mov	dph,a
      00030C E0               [24] 1082 	movx	a,@dptr
      00030D F9               [12] 1083 	mov	r1,a
      00030E 78 00            [12] 1084 	mov	r0,#0x00
                                   1085 ;	isp.c:107: (((unsigned int)(rx_message[(2 * i) + 0 + 4])) << 0);
      000310 74 04            [12] 1086 	mov	a,#0x04
      000312 2C               [12] 1087 	add	a,r4
      000313 FC               [12] 1088 	mov	r4,a
      000314 E4               [12] 1089 	clr	a
      000315 3D               [12] 1090 	addc	a,r5
      000316 FD               [12] 1091 	mov	r5,a
      000317 EC               [12] 1092 	mov	a,r4
      000318 24 01            [12] 1093 	add	a,#_rx_message
      00031A F5 82            [12] 1094 	mov	dpl,a
      00031C ED               [12] 1095 	mov	a,r5
      00031D 34 00            [12] 1096 	addc	a,#(_rx_message >> 8)
      00031F F5 83            [12] 1097 	mov	dph,a
      000321 E0               [24] 1098 	movx	a,@dptr
      000322 FD               [12] 1099 	mov	r5,a
      000323 7C 00            [12] 1100 	mov	r4,#0x00
      000325 28               [12] 1101 	add	a,r0
      000326 F8               [12] 1102 	mov	r0,a
      000327 EC               [12] 1103 	mov	a,r4
      000328 39               [12] 1104 	addc	a,r1
      000329 F9               [12] 1105 	mov	r1,a
      00032A 8A 82            [24] 1106 	mov	dpl,r2
      00032C 8B 83            [24] 1107 	mov	dph,r3
      00032E E8               [12] 1108 	mov	a,r0
      00032F F0               [24] 1109 	movx	@dptr,a
      000330 E9               [12] 1110 	mov	a,r1
      000331 A3               [24] 1111 	inc	dptr
      000332 F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	isp.c:105: for (i = 0; i < rx_message[2] / 2; i++)
      000333 05 09            [12] 1114 	inc	_i
      000335 02 02 B7         [24] 1115 	ljmp	00161$
      000338                       1116 00111$:
                                   1117 ;	isp.c:108: isp_write_pgm(flash_buffer, rx_message[2] / 2, rx_message[3]);
      000338 90 00 04         [24] 1118 	mov	dptr,#(_rx_message + 0x0003)
      00033B E0               [24] 1119 	movx	a,@dptr
      00033C FD               [12] 1120 	mov	r5,a
      00033D C0 05            [24] 1121 	push	ar5
      00033F C0 06            [24] 1122 	push	ar6
      000341 90 00 8D         [24] 1123 	mov	dptr,#_flash_buffer
      000344 75 F0 00         [24] 1124 	mov	b,#0x00
      000347 12 0D B9         [24] 1125 	lcall	_isp_write_pgm
      00034A 15 81            [12] 1126 	dec	sp
      00034C 15 81            [12] 1127 	dec	sp
                                   1128 ;	isp.c:110: usart_tx_b(0x88, TRUE);
      00034E D2 F0            [12] 1129 	setb	b[0]
      000350 85 F0 21         [24] 1130 	mov	bits,b
      000353 75 82 88         [24] 1131 	mov	dpl,#0x88
      000356 12 1B F6         [24] 1132 	lcall	_usart_tx_b
                                   1133 ;	isp.c:111: rx_state = 0;
      000359 75 0B 00         [24] 1134 	mov	_rx_state,#0x00
                                   1135 ;	isp.c:112: break;
      00035C 02 0C 0A         [24] 1136 	ljmp	00148$
                                   1137 ;	isp.c:114: case 0x09: // p16a_rst_pointer D
      00035F                       1138 00112$:
                                   1139 ;	isp.c:115: isp_reset_pointer_16d();
      00035F 12 0E CB         [24] 1140 	lcall	_isp_reset_pointer_16d
                                   1141 ;	isp.c:116: usart_tx_b (0x89, TRUE);
      000362 D2 F0            [12] 1142 	setb	b[0]
      000364 85 F0 21         [24] 1143 	mov	bits,b
      000367 75 82 89         [24] 1144 	mov	dpl,#0x89
      00036A 12 1B F6         [24] 1145 	lcall	_usart_tx_b
                                   1146 ;	isp.c:117: rx_state = 0;
      00036D 75 0B 00         [24] 1147 	mov	_rx_state,#0x00
                                   1148 ;	isp.c:118: break;
      000370 02 0C 0A         [24] 1149 	ljmp	00148$
                                   1150 ;	isp.c:121: case 0x0d: // p16a_read_eeprom D
      000373                       1151 00114$:
                                   1152 ;	isp.c:122: eeprom_buf = (unsigned char *)flash_buffer;
      000373 75 0D 8D         [24] 1153 	mov	_eeprom_buf,#_flash_buffer
      000376 75 0E 00         [24] 1154 	mov	(_eeprom_buf + 1),#(_flash_buffer >> 8)
      000379 75 0F 00         [24] 1155 	mov	(_eeprom_buf + 2),#0x00
                                   1156 ;	isp.c:123: if (rx_message[0] == 0x0a) {
      00037C 90 00 01         [24] 1157 	mov	dptr,#_rx_message
      00037F E0               [24] 1158 	movx	a,@dptr
      000380 FF               [12] 1159 	mov	r7,a
      000381 BF 0A 28         [24] 1160 	cjne	r7,#0x0a,00118$
                                   1161 ;	isp.c:124: isp_read_eeprom(eeprom_buf, rx_message[2], 'a');
      000384 90 00 03         [24] 1162 	mov	dptr,#(_rx_message + 0x0002)
      000387 E0               [24] 1163 	movx	a,@dptr
      000388 FE               [12] 1164 	mov	r6,a
      000389 74 61            [12] 1165 	mov	a,#0x61
      00038B C0 E0            [24] 1166 	push	acc
      00038D C0 06            [24] 1167 	push	ar6
      00038F 85 0D 82         [24] 1168 	mov	dpl,_eeprom_buf
      000392 85 0E 83         [24] 1169 	mov	dph,(_eeprom_buf + 1)
      000395 85 0F F0         [24] 1170 	mov	b,(_eeprom_buf + 2)
      000398 12 0C F5         [24] 1171 	lcall	_isp_read_eeprom
      00039B 15 81            [12] 1172 	dec	sp
      00039D 15 81            [12] 1173 	dec	sp
                                   1174 ;	isp.c:125: usart_tx_b(0x8a, FALSE);
      00039F C2 F0            [12] 1175 	clr	b[0]
      0003A1 85 F0 21         [24] 1176 	mov	bits,b
      0003A4 75 82 8A         [24] 1177 	mov	dpl,#0x8a
      0003A7 12 1B F6         [24] 1178 	lcall	_usart_tx_b
      0003AA 80 29            [24] 1179 	sjmp	00119$
      0003AC                       1180 00118$:
                                   1181 ;	isp.c:127: else if (rx_message[0] == 0x0d) {
      0003AC BF 0D 26         [24] 1182 	cjne	r7,#0x0d,00119$
                                   1183 ;	isp.c:128: isp_read_eeprom(eeprom_buf, rx_message[2], 'd');
      0003AF 90 00 03         [24] 1184 	mov	dptr,#(_rx_message + 0x0002)
      0003B2 E0               [24] 1185 	movx	a,@dptr
      0003B3 FF               [12] 1186 	mov	r7,a
      0003B4 74 64            [12] 1187 	mov	a,#0x64
      0003B6 C0 E0            [24] 1188 	push	acc
      0003B8 C0 07            [24] 1189 	push	ar7
      0003BA 85 0D 82         [24] 1190 	mov	dpl,_eeprom_buf
      0003BD 85 0E 83         [24] 1191 	mov	dph,(_eeprom_buf + 1)
      0003C0 85 0F F0         [24] 1192 	mov	b,(_eeprom_buf + 2)
      0003C3 12 0C F5         [24] 1193 	lcall	_isp_read_eeprom
      0003C6 15 81            [12] 1194 	dec	sp
      0003C8 15 81            [12] 1195 	dec	sp
                                   1196 ;	isp.c:129: usart_tx_b(0x8d, FALSE);
      0003CA C2 F0            [12] 1197 	clr	b[0]
      0003CC 85 F0 21         [24] 1198 	mov	bits,b
      0003CF 75 82 8D         [24] 1199 	mov	dpl,#0x8d
      0003D2 12 1B F6         [24] 1200 	lcall	_usart_tx_b
      0003D5                       1201 00119$:
                                   1202 ;	isp.c:131: for (i = 0; i < rx_message[2]; i++) {
      0003D5 75 09 00         [24] 1203 	mov	_i,#0x00
      0003D8                       1204 00164$:
      0003D8 90 00 03         [24] 1205 	mov	dptr,#(_rx_message + 0x0002)
      0003DB E0               [24] 1206 	movx	a,@dptr
      0003DC FF               [12] 1207 	mov	r7,a
      0003DD C3               [12] 1208 	clr	c
      0003DE E5 09            [12] 1209 	mov	a,_i
      0003E0 9F               [12] 1210 	subb	a,r7
      0003E1 50 26            [24] 1211 	jnc	00120$
                                   1212 ;	isp.c:132: usart_tx_b(*eeprom_buf++, FALSE);
      0003E3 AD 0D            [24] 1213 	mov	r5,_eeprom_buf
      0003E5 AE 0E            [24] 1214 	mov	r6,(_eeprom_buf + 1)
      0003E7 AF 0F            [24] 1215 	mov	r7,(_eeprom_buf + 2)
      0003E9 8D 82            [24] 1216 	mov	dpl,r5
      0003EB 8E 83            [24] 1217 	mov	dph,r6
      0003ED 8F F0            [24] 1218 	mov	b,r7
      0003EF 12 21 BE         [24] 1219 	lcall	__gptrget
      0003F2 FD               [12] 1220 	mov	r5,a
      0003F3 05 0D            [12] 1221 	inc	_eeprom_buf
      0003F5 E4               [12] 1222 	clr	a
      0003F6 B5 0D 02         [24] 1223 	cjne	a,_eeprom_buf,00442$
      0003F9 05 0E            [12] 1224 	inc	(_eeprom_buf + 1)
      0003FB                       1225 00442$:
      0003FB C2 F0            [12] 1226 	clr	b[0]
      0003FD 85 F0 21         [24] 1227 	mov	bits,b
      000400 8D 82            [24] 1228 	mov	dpl,r5
      000402 12 1B F6         [24] 1229 	lcall	_usart_tx_b
                                   1230 ;	isp.c:131: for (i = 0; i < rx_message[2]; i++) {
      000405 05 09            [12] 1231 	inc	_i
      000407 80 CF            [24] 1232 	sjmp	00164$
      000409                       1233 00120$:
                                   1234 ;	isp.c:134: CDC_flush();
      000409 12 1C 3C         [24] 1235 	lcall	_CDC_flush
                                   1236 ;	isp.c:135: rx_state = 0;
      00040C 75 0B 00         [24] 1237 	mov	_rx_state,#0x00
                                   1238 ;	isp.c:136: break;
      00040F 02 0C 0A         [24] 1239 	ljmp	00148$
                                   1240 ;	isp.c:138: case 0x0c: // p16d_set_pointer
      000412                       1241 00121$:
                                   1242 ;	isp.c:140: isp_set_pointer_16d((uint32_t)rx_message[2] + (uint32_t)(rx_message[3] << 8));
      000412 90 00 03         [24] 1243 	mov	dptr,#(_rx_message + 0x0002)
      000415 E0               [24] 1244 	movx	a,@dptr
      000416 FF               [12] 1245 	mov	r7,a
      000417 7E 00            [12] 1246 	mov	r6,#0x00
      000419 7D 00            [12] 1247 	mov	r5,#0x00
      00041B 7C 00            [12] 1248 	mov	r4,#0x00
      00041D 90 00 04         [24] 1249 	mov	dptr,#(_rx_message + 0x0003)
      000420 E0               [24] 1250 	movx	a,@dptr
      000421 FA               [12] 1251 	mov	r2,a
      000422 7B 00            [12] 1252 	mov	r3,#0x00
      000424 8B 00            [24] 1253 	mov	ar0,r3
      000426 EA               [12] 1254 	mov	a,r2
      000427 F9               [12] 1255 	mov	r1,a
      000428 33               [12] 1256 	rlc	a
      000429 95 E0            [12] 1257 	subb	a,acc
      00042B FA               [12] 1258 	mov	r2,a
      00042C FB               [12] 1259 	mov	r3,a
      00042D E8               [12] 1260 	mov	a,r0
      00042E 2F               [12] 1261 	add	a,r7
      00042F FF               [12] 1262 	mov	r7,a
      000430 E9               [12] 1263 	mov	a,r1
      000431 3E               [12] 1264 	addc	a,r6
      000432 FE               [12] 1265 	mov	r6,a
      000433 EA               [12] 1266 	mov	a,r2
      000434 3D               [12] 1267 	addc	a,r5
      000435 FD               [12] 1268 	mov	r5,a
      000436 EB               [12] 1269 	mov	a,r3
      000437 3C               [12] 1270 	addc	a,r4
      000438 8F 82            [24] 1271 	mov	dpl,r7
      00043A 8E 83            [24] 1272 	mov	dph,r6
      00043C 8D F0            [24] 1273 	mov	b,r5
      00043E 12 0E FC         [24] 1274 	lcall	_isp_set_pointer_16d
                                   1275 ;	isp.c:141: usart_tx_b (0x8c, TRUE);
      000441 D2 F0            [12] 1276 	setb	b[0]
      000443 85 F0 21         [24] 1277 	mov	bits,b
      000446 75 82 8C         [24] 1278 	mov	dpl,#0x8c
      000449 12 1B F6         [24] 1279 	lcall	_usart_tx_b
                                   1280 ;	isp.c:142: rx_state = 0;
      00044C 75 0B 00         [24] 1281 	mov	_rx_state,#0x00
                                   1282 ;	isp.c:143: break;
      00044F 02 0C 0A         [24] 1283 	ljmp	00148$
                                   1284 ;	isp.c:145: case 0x10: // prog_enter_progmode
      000452                       1285 00122$:
                                   1286 ;	isp.c:146: p18_enter_progmode();
      000452 12 11 BB         [24] 1287 	lcall	_p18_enter_progmode
                                   1288 ;	isp.c:147: usart_tx_b (0x90, TRUE);
      000455 D2 F0            [12] 1289 	setb	b[0]
      000457 85 F0 21         [24] 1290 	mov	bits,b
      00045A 75 82 90         [24] 1291 	mov	dpl,#0x90
      00045D 12 1B F6         [24] 1292 	lcall	_usart_tx_b
                                   1293 ;	isp.c:148: rx_state = 0;
      000460 75 0B 00         [24] 1294 	mov	_rx_state,#0x00
                                   1295 ;	isp.c:149: break;
      000463 02 0C 0A         [24] 1296 	ljmp	00148$
                                   1297 ;	isp.c:151: case 0x11: // p18a_read_page
      000466                       1298 00123$:
                                   1299 ;	isp.c:152: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000466 90 00 04         [24] 1300 	mov	dptr,#(_rx_message + 0x0003)
      000469 E0               [24] 1301 	movx	a,@dptr
      00046A FF               [12] 1302 	mov	r7,a
      00046B 7E 00            [12] 1303 	mov	r6,#0x00
      00046D 8E 04            [24] 1304 	mov	ar4,r6
      00046F 8F 05            [24] 1305 	mov	ar5,r7
      000471 7F 00            [12] 1306 	mov	r7,#0x00
      000473 90 00 05         [24] 1307 	mov	dptr,#(_rx_message + 0x0004)
      000476 E0               [24] 1308 	movx	a,@dptr
      000477 F8               [12] 1309 	mov	r0,a
      000478 79 00            [12] 1310 	mov	r1,#0x00
      00047A 7A 00            [12] 1311 	mov	r2,#0x00
      00047C 8A 03            [24] 1312 	mov	ar3,r2
      00047E 89 02            [24] 1313 	mov	ar2,r1
      000480 88 01            [24] 1314 	mov	ar1,r0
      000482 E4               [12] 1315 	clr	a
      000483 2F               [12] 1316 	add	a,r7
      000484 FF               [12] 1317 	mov	r7,a
      000485 E9               [12] 1318 	mov	a,r1
      000486 3E               [12] 1319 	addc	a,r6
      000487 FE               [12] 1320 	mov	r6,a
      000488 EA               [12] 1321 	mov	a,r2
      000489 3D               [12] 1322 	addc	a,r5
      00048A FD               [12] 1323 	mov	r5,a
      00048B EB               [12] 1324 	mov	a,r3
      00048C 3C               [12] 1325 	addc	a,r4
      00048D FC               [12] 1326 	mov	r4,a
      00048E 90 00 06         [24] 1327 	mov	dptr,#(_rx_message + 0x0005)
      000491 E0               [24] 1328 	movx	a,@dptr
      000492 F8               [12] 1329 	mov	r0,a
      000493 E4               [12] 1330 	clr	a
      000494 F9               [12] 1331 	mov	r1,a
      000495 FB               [12] 1332 	mov	r3,a
      000496 E8               [12] 1333 	mov	a,r0
      000497 2F               [12] 1334 	add	a,r7
      000498 F5 12            [12] 1335 	mov	_addr,a
      00049A E9               [12] 1336 	mov	a,r1
      00049B 3E               [12] 1337 	addc	a,r6
      00049C F5 13            [12] 1338 	mov	(_addr + 1),a
      00049E EA               [12] 1339 	mov	a,r2
      00049F 3D               [12] 1340 	addc	a,r5
      0004A0 F5 14            [12] 1341 	mov	(_addr + 2),a
      0004A2 EB               [12] 1342 	mov	a,r3
      0004A3 3C               [12] 1343 	addc	a,r4
      0004A4 F5 15            [12] 1344 	mov	(_addr + 3),a
                                   1345 ;	isp.c:153: p_18_isp_read_pgm (flash_buffer, addr, rx_message[2]);
      0004A6 90 00 03         [24] 1346 	mov	dptr,#(_rx_message + 0x0002)
      0004A9 E0               [24] 1347 	movx	a,@dptr
      0004AA FF               [12] 1348 	mov	r7,a
      0004AB C0 07            [24] 1349 	push	ar7
      0004AD C0 12            [24] 1350 	push	_addr
      0004AF C0 13            [24] 1351 	push	(_addr + 1)
      0004B1 C0 14            [24] 1352 	push	(_addr + 2)
      0004B3 C0 15            [24] 1353 	push	(_addr + 3)
      0004B5 90 00 8D         [24] 1354 	mov	dptr,#_flash_buffer
      0004B8 75 F0 00         [24] 1355 	mov	b,#0x00
      0004BB 12 17 29         [24] 1356 	lcall	_p_18_isp_read_pgm
      0004BE E5 81            [12] 1357 	mov	a,sp
      0004C0 24 FB            [12] 1358 	add	a,#0xfb
      0004C2 F5 81            [12] 1359 	mov	sp,a
                                   1360 ;	isp.c:154: usart_tx_b (0x91, FALSE);
      0004C4 C2 F0            [12] 1361 	clr	b[0]
      0004C6 85 F0 21         [24] 1362 	mov	bits,b
      0004C9 75 82 91         [24] 1363 	mov	dpl,#0x91
      0004CC 12 1B F6         [24] 1364 	lcall	_usart_tx_b
                                   1365 ;	isp.c:155: for (i=0;i<rx_message[2];i++) {
      0004CF 75 09 00         [24] 1366 	mov	_i,#0x00
      0004D2                       1367 00167$:
      0004D2 90 00 03         [24] 1368 	mov	dptr,#(_rx_message + 0x0002)
      0004D5 E0               [24] 1369 	movx	a,@dptr
      0004D6 FF               [12] 1370 	mov	r7,a
      0004D7 C3               [12] 1371 	clr	c
      0004D8 E5 09            [12] 1372 	mov	a,_i
      0004DA 9F               [12] 1373 	subb	a,r7
      0004DB 50 3D            [24] 1374 	jnc	00124$
                                   1375 ;	isp.c:156: usart_tx_b (flash_buffer[i]&0xFF, FALSE);
      0004DD E5 09            [12] 1376 	mov	a,_i
      0004DF 75 F0 02         [24] 1377 	mov	b,#0x02
      0004E2 A4               [48] 1378 	mul	ab
      0004E3 24 8D            [12] 1379 	add	a,#_flash_buffer
      0004E5 F5 82            [12] 1380 	mov	dpl,a
      0004E7 74 00            [12] 1381 	mov	a,#(_flash_buffer >> 8)
      0004E9 35 F0            [12] 1382 	addc	a,b
      0004EB F5 83            [12] 1383 	mov	dph,a
      0004ED E0               [24] 1384 	movx	a,@dptr
      0004EE FF               [12] 1385 	mov	r7,a
      0004EF C2 F0            [12] 1386 	clr	b[0]
      0004F1 85 F0 21         [24] 1387 	mov	bits,b
      0004F4 8F 82            [24] 1388 	mov	dpl,r7
      0004F6 12 1B F6         [24] 1389 	lcall	_usart_tx_b
                                   1390 ;	isp.c:157: usart_tx_b (flash_buffer[i]>>8, FALSE);
      0004F9 E5 09            [12] 1391 	mov	a,_i
      0004FB 75 F0 02         [24] 1392 	mov	b,#0x02
      0004FE A4               [48] 1393 	mul	ab
      0004FF 24 8D            [12] 1394 	add	a,#_flash_buffer
      000501 F5 82            [12] 1395 	mov	dpl,a
      000503 74 00            [12] 1396 	mov	a,#(_flash_buffer >> 8)
      000505 35 F0            [12] 1397 	addc	a,b
      000507 F5 83            [12] 1398 	mov	dph,a
      000509 E0               [24] 1399 	movx	a,@dptr
      00050A A3               [24] 1400 	inc	dptr
      00050B E0               [24] 1401 	movx	a,@dptr
      00050C F5 82            [12] 1402 	mov	dpl,a
      00050E C2 F0            [12] 1403 	clr	b[0]
      000510 85 F0 21         [24] 1404 	mov	bits,b
      000513 12 1B F6         [24] 1405 	lcall	_usart_tx_b
                                   1406 ;	isp.c:155: for (i=0;i<rx_message[2];i++) {
      000516 05 09            [12] 1407 	inc	_i
      000518 80 B8            [24] 1408 	sjmp	00167$
      00051A                       1409 00124$:
                                   1410 ;	isp.c:159: CDC_flush();
      00051A 12 1C 3C         [24] 1411 	lcall	_CDC_flush
                                   1412 ;	isp.c:160: rx_state = 0;
      00051D 75 0B 00         [24] 1413 	mov	_rx_state,#0x00
                                   1414 ;	isp.c:161: break;
      000520 02 0C 0A         [24] 1415 	ljmp	00148$
                                   1416 ;	isp.c:163: case 0x12: // p18a_write_page
      000523                       1417 00125$:
                                   1418 ;	isp.c:164: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000523 90 00 04         [24] 1419 	mov	dptr,#(_rx_message + 0x0003)
      000526 E0               [24] 1420 	movx	a,@dptr
      000527 FF               [12] 1421 	mov	r7,a
      000528 7E 00            [12] 1422 	mov	r6,#0x00
      00052A 8E 04            [24] 1423 	mov	ar4,r6
      00052C 8F 05            [24] 1424 	mov	ar5,r7
      00052E 7F 00            [12] 1425 	mov	r7,#0x00
      000530 90 00 05         [24] 1426 	mov	dptr,#(_rx_message + 0x0004)
      000533 E0               [24] 1427 	movx	a,@dptr
      000534 F8               [12] 1428 	mov	r0,a
      000535 79 00            [12] 1429 	mov	r1,#0x00
      000537 7A 00            [12] 1430 	mov	r2,#0x00
      000539 8A 03            [24] 1431 	mov	ar3,r2
      00053B 89 02            [24] 1432 	mov	ar2,r1
      00053D 88 01            [24] 1433 	mov	ar1,r0
      00053F E4               [12] 1434 	clr	a
      000540 2F               [12] 1435 	add	a,r7
      000541 FF               [12] 1436 	mov	r7,a
      000542 E9               [12] 1437 	mov	a,r1
      000543 3E               [12] 1438 	addc	a,r6
      000544 FE               [12] 1439 	mov	r6,a
      000545 EA               [12] 1440 	mov	a,r2
      000546 3D               [12] 1441 	addc	a,r5
      000547 FD               [12] 1442 	mov	r5,a
      000548 EB               [12] 1443 	mov	a,r3
      000549 3C               [12] 1444 	addc	a,r4
      00054A FC               [12] 1445 	mov	r4,a
      00054B 90 00 06         [24] 1446 	mov	dptr,#(_rx_message + 0x0005)
      00054E E0               [24] 1447 	movx	a,@dptr
      00054F F8               [12] 1448 	mov	r0,a
      000550 E4               [12] 1449 	clr	a
      000551 F9               [12] 1450 	mov	r1,a
      000552 FB               [12] 1451 	mov	r3,a
      000553 E8               [12] 1452 	mov	a,r0
      000554 2F               [12] 1453 	add	a,r7
      000555 F5 12            [12] 1454 	mov	_addr,a
      000557 E9               [12] 1455 	mov	a,r1
      000558 3E               [12] 1456 	addc	a,r6
      000559 F5 13            [12] 1457 	mov	(_addr + 1),a
      00055B EA               [12] 1458 	mov	a,r2
      00055C 3D               [12] 1459 	addc	a,r5
      00055D F5 14            [12] 1460 	mov	(_addr + 2),a
      00055F EB               [12] 1461 	mov	a,r3
      000560 3C               [12] 1462 	addc	a,r4
      000561 F5 15            [12] 1463 	mov	(_addr + 3),a
                                   1464 ;	isp.c:165: for (i=0;i<rx_message[2]/2;i++)
      000563 8F 09            [24] 1465 	mov	_i,r7
      000565                       1466 00170$:
      000565 90 00 03         [24] 1467 	mov	dptr,#(_rx_message + 0x0002)
      000568 E0               [24] 1468 	movx	a,@dptr
      000569 FF               [12] 1469 	mov	r7,a
      00056A 7E 00            [12] 1470 	mov	r6,#0x00
      00056C 74 02            [12] 1471 	mov	a,#0x02
      00056E C0 E0            [24] 1472 	push	acc
      000570 E4               [12] 1473 	clr	a
      000571 C0 E0            [24] 1474 	push	acc
      000573 8F 82            [24] 1475 	mov	dpl,r7
      000575 8E 83            [24] 1476 	mov	dph,r6
      000577 12 21 DA         [24] 1477 	lcall	__divsint
      00057A AE 82            [24] 1478 	mov	r6,dpl
      00057C AF 83            [24] 1479 	mov	r7,dph
      00057E 15 81            [12] 1480 	dec	sp
      000580 15 81            [12] 1481 	dec	sp
      000582 AC 09            [24] 1482 	mov	r4,_i
      000584 7D 00            [12] 1483 	mov	r5,#0x00
      000586 C3               [12] 1484 	clr	c
      000587 EC               [12] 1485 	mov	a,r4
      000588 9E               [12] 1486 	subb	a,r6
      000589 ED               [12] 1487 	mov	a,r5
      00058A 64 80            [12] 1488 	xrl	a,#0x80
      00058C 8F F0            [24] 1489 	mov	b,r7
      00058E 63 F0 80         [24] 1490 	xrl	b,#0x80
      000591 95 F0            [12] 1491 	subb	a,b
      000593 50 51            [24] 1492 	jnc	00126$
                                   1493 ;	isp.c:166: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
      000595 E5 09            [12] 1494 	mov	a,_i
      000597 75 F0 02         [24] 1495 	mov	b,#0x02
      00059A A4               [48] 1496 	mul	ab
      00059B 24 8D            [12] 1497 	add	a,#_flash_buffer
      00059D FA               [12] 1498 	mov	r2,a
      00059E 74 00            [12] 1499 	mov	a,#(_flash_buffer >> 8)
      0005A0 35 F0            [12] 1500 	addc	a,b
      0005A2 FB               [12] 1501 	mov	r3,a
      0005A3 EC               [12] 1502 	mov	a,r4
      0005A4 2C               [12] 1503 	add	a,r4
      0005A5 FC               [12] 1504 	mov	r4,a
      0005A6 ED               [12] 1505 	mov	a,r5
      0005A7 33               [12] 1506 	rlc	a
      0005A8 FD               [12] 1507 	mov	r5,a
      0005A9 74 07            [12] 1508 	mov	a,#0x07
      0005AB 2C               [12] 1509 	add	a,r4
      0005AC F8               [12] 1510 	mov	r0,a
      0005AD E4               [12] 1511 	clr	a
      0005AE 3D               [12] 1512 	addc	a,r5
      0005AF F9               [12] 1513 	mov	r1,a
      0005B0 E8               [12] 1514 	mov	a,r0
      0005B1 24 01            [12] 1515 	add	a,#_rx_message
      0005B3 F5 82            [12] 1516 	mov	dpl,a
      0005B5 E9               [12] 1517 	mov	a,r1
      0005B6 34 00            [12] 1518 	addc	a,#(_rx_message >> 8)
      0005B8 F5 83            [12] 1519 	mov	dph,a
      0005BA E0               [24] 1520 	movx	a,@dptr
      0005BB F9               [12] 1521 	mov	r1,a
      0005BC 78 00            [12] 1522 	mov	r0,#0x00
      0005BE 74 06            [12] 1523 	mov	a,#0x06
      0005C0 2C               [12] 1524 	add	a,r4
      0005C1 FC               [12] 1525 	mov	r4,a
      0005C2 E4               [12] 1526 	clr	a
      0005C3 3D               [12] 1527 	addc	a,r5
      0005C4 FD               [12] 1528 	mov	r5,a
      0005C5 EC               [12] 1529 	mov	a,r4
      0005C6 24 01            [12] 1530 	add	a,#_rx_message
      0005C8 F5 82            [12] 1531 	mov	dpl,a
      0005CA ED               [12] 1532 	mov	a,r5
      0005CB 34 00            [12] 1533 	addc	a,#(_rx_message >> 8)
      0005CD F5 83            [12] 1534 	mov	dph,a
      0005CF E0               [24] 1535 	movx	a,@dptr
      0005D0 FD               [12] 1536 	mov	r5,a
      0005D1 7C 00            [12] 1537 	mov	r4,#0x00
      0005D3 28               [12] 1538 	add	a,r0
      0005D4 F8               [12] 1539 	mov	r0,a
      0005D5 EC               [12] 1540 	mov	a,r4
      0005D6 39               [12] 1541 	addc	a,r1
      0005D7 F9               [12] 1542 	mov	r1,a
      0005D8 8A 82            [24] 1543 	mov	dpl,r2
      0005DA 8B 83            [24] 1544 	mov	dph,r3
      0005DC E8               [12] 1545 	mov	a,r0
      0005DD F0               [24] 1546 	movx	@dptr,a
      0005DE E9               [12] 1547 	mov	a,r1
      0005DF A3               [24] 1548 	inc	dptr
      0005E0 F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	isp.c:165: for (i=0;i<rx_message[2]/2;i++)
      0005E1 05 09            [12] 1551 	inc	_i
      0005E3 02 05 65         [24] 1552 	ljmp	00170$
      0005E6                       1553 00126$:
                                   1554 ;	isp.c:167: p18_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
      0005E6 C0 06            [24] 1555 	push	ar6
      0005E8 C0 12            [24] 1556 	push	_addr
      0005EA C0 13            [24] 1557 	push	(_addr + 1)
      0005EC C0 14            [24] 1558 	push	(_addr + 2)
      0005EE C0 15            [24] 1559 	push	(_addr + 3)
      0005F0 90 00 8D         [24] 1560 	mov	dptr,#_flash_buffer
      0005F3 75 F0 00         [24] 1561 	mov	b,#0x00
      0005F6 12 14 7C         [24] 1562 	lcall	_p18_isp_write_pgm
      0005F9 E5 81            [12] 1563 	mov	a,sp
      0005FB 24 FB            [12] 1564 	add	a,#0xfb
      0005FD F5 81            [12] 1565 	mov	sp,a
                                   1566 ;	isp.c:168: usart_tx_b (0x92, TRUE);
      0005FF D2 F0            [12] 1567 	setb	b[0]
      000601 85 F0 21         [24] 1568 	mov	bits,b
      000604 75 82 92         [24] 1569 	mov	dpl,#0x92
      000607 12 1B F6         [24] 1570 	lcall	_usart_tx_b
                                   1571 ;	isp.c:169: rx_state = 0;
      00060A 75 0B 00         [24] 1572 	mov	_rx_state,#0x00
                                   1573 ;	isp.c:170: break;
      00060D 02 0C 0A         [24] 1574 	ljmp	00148$
                                   1575 ;	isp.c:172: case 0x13: // p18a_mass_erase
      000610                       1576 00127$:
                                   1577 ;	isp.c:173: p18_isp_mass_erase();
      000610 12 11 E7         [24] 1578 	lcall	_p18_isp_mass_erase
                                   1579 ;	isp.c:174: usart_tx_b (0x93, TRUE);
      000613 D2 F0            [12] 1580 	setb	b[0]
      000615 85 F0 21         [24] 1581 	mov	bits,b
      000618 75 82 93         [24] 1582 	mov	dpl,#0x93
      00061B 12 1B F6         [24] 1583 	lcall	_usart_tx_b
                                   1584 ;	isp.c:175: rx_state = 0;
      00061E 75 0B 00         [24] 1585 	mov	_rx_state,#0x00
                                   1586 ;	isp.c:176: break;
      000621 02 0C 0A         [24] 1587 	ljmp	00148$
                                   1588 ;	isp.c:178: case 0x14: // p18a_write_cfg
      000624                       1589 00128$:
                                   1590 ;	isp.c:179: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000624 90 00 04         [24] 1591 	mov	dptr,#(_rx_message + 0x0003)
      000627 E0               [24] 1592 	movx	a,@dptr
      000628 FF               [12] 1593 	mov	r7,a
      000629 7E 00            [12] 1594 	mov	r6,#0x00
      00062B 8E 04            [24] 1595 	mov	ar4,r6
      00062D 8F 05            [24] 1596 	mov	ar5,r7
      00062F 7F 00            [12] 1597 	mov	r7,#0x00
      000631 90 00 05         [24] 1598 	mov	dptr,#(_rx_message + 0x0004)
      000634 E0               [24] 1599 	movx	a,@dptr
      000635 F8               [12] 1600 	mov	r0,a
      000636 79 00            [12] 1601 	mov	r1,#0x00
      000638 7A 00            [12] 1602 	mov	r2,#0x00
      00063A 8A 03            [24] 1603 	mov	ar3,r2
      00063C 89 02            [24] 1604 	mov	ar2,r1
      00063E 88 01            [24] 1605 	mov	ar1,r0
      000640 E4               [12] 1606 	clr	a
      000641 2F               [12] 1607 	add	a,r7
      000642 FF               [12] 1608 	mov	r7,a
      000643 E9               [12] 1609 	mov	a,r1
      000644 3E               [12] 1610 	addc	a,r6
      000645 FE               [12] 1611 	mov	r6,a
      000646 EA               [12] 1612 	mov	a,r2
      000647 3D               [12] 1613 	addc	a,r5
      000648 FD               [12] 1614 	mov	r5,a
      000649 EB               [12] 1615 	mov	a,r3
      00064A 3C               [12] 1616 	addc	a,r4
      00064B FC               [12] 1617 	mov	r4,a
      00064C 90 00 06         [24] 1618 	mov	dptr,#(_rx_message + 0x0005)
      00064F E0               [24] 1619 	movx	a,@dptr
      000650 F8               [12] 1620 	mov	r0,a
      000651 E4               [12] 1621 	clr	a
      000652 F9               [12] 1622 	mov	r1,a
      000653 FB               [12] 1623 	mov	r3,a
      000654 E8               [12] 1624 	mov	a,r0
      000655 2F               [12] 1625 	add	a,r7
      000656 F5 12            [12] 1626 	mov	_addr,a
      000658 E9               [12] 1627 	mov	a,r1
      000659 3E               [12] 1628 	addc	a,r6
      00065A F5 13            [12] 1629 	mov	(_addr + 1),a
      00065C EA               [12] 1630 	mov	a,r2
      00065D 3D               [12] 1631 	addc	a,r5
      00065E F5 14            [12] 1632 	mov	(_addr + 2),a
      000660 EB               [12] 1633 	mov	a,r3
      000661 3C               [12] 1634 	addc	a,r4
      000662 F5 15            [12] 1635 	mov	(_addr + 3),a
                                   1636 ;	isp.c:180: p18_isp_write_cfg (rx_message[6],rx_message[7], addr);
      000664 90 00 08         [24] 1637 	mov	dptr,#(_rx_message + 0x0007)
      000667 E0               [24] 1638 	movx	a,@dptr
      000668 FF               [12] 1639 	mov	r7,a
      000669 90 00 07         [24] 1640 	mov	dptr,#(_rx_message + 0x0006)
      00066C E0               [24] 1641 	movx	a,@dptr
      00066D FE               [12] 1642 	mov	r6,a
      00066E C0 12            [24] 1643 	push	_addr
      000670 C0 13            [24] 1644 	push	(_addr + 1)
      000672 C0 14            [24] 1645 	push	(_addr + 2)
      000674 C0 15            [24] 1646 	push	(_addr + 3)
      000676 C0 07            [24] 1647 	push	ar7
      000678 8E 82            [24] 1648 	mov	dpl,r6
      00067A 12 15 81         [24] 1649 	lcall	_p18_isp_write_cfg
      00067D E5 81            [12] 1650 	mov	a,sp
      00067F 24 FB            [12] 1651 	add	a,#0xfb
      000681 F5 81            [12] 1652 	mov	sp,a
                                   1653 ;	isp.c:181: usart_tx_b (0x94, TRUE);
      000683 D2 F0            [12] 1654 	setb	b[0]
      000685 85 F0 21         [24] 1655 	mov	bits,b
      000688 75 82 94         [24] 1656 	mov	dpl,#0x94
      00068B 12 1B F6         [24] 1657 	lcall	_usart_tx_b
                                   1658 ;	isp.c:182: rx_state = 0;
      00068E 75 0B 00         [24] 1659 	mov	_rx_state,#0x00
                                   1660 ;	isp.c:183: break;
      000691 02 0C 0A         [24] 1661 	ljmp	00148$
                                   1662 ;	isp.c:185: case 0x23: // p18b_mass_erase
      000694                       1663 00129$:
                                   1664 ;	isp.c:186: p18fj_isp_mass_erase();
      000694 12 12 49         [24] 1665 	lcall	_p18fj_isp_mass_erase
                                   1666 ;	isp.c:187: usart_tx_b (0xA3, TRUE);
      000697 D2 F0            [12] 1667 	setb	b[0]
      000699 85 F0 21         [24] 1668 	mov	bits,b
      00069C 75 82 A3         [24] 1669 	mov	dpl,#0xa3
      00069F 12 1B F6         [24] 1670 	lcall	_usart_tx_b
                                   1671 ;	isp.c:188: rx_state = 0;
      0006A2 75 0B 00         [24] 1672 	mov	_rx_state,#0x00
                                   1673 ;	isp.c:189: break;
      0006A5 02 0C 0A         [24] 1674 	ljmp	00148$
                                   1675 ;	isp.c:191: case 0x30: // p18d_mass_erase_part
      0006A8                       1676 00130$:
                                   1677 ;	isp.c:192: p18fk_isp_mass_erase (rx_message[2], rx_message[3], rx_message[4]);
      0006A8 90 00 05         [24] 1678 	mov	dptr,#(_rx_message + 0x0004)
      0006AB E0               [24] 1679 	movx	a,@dptr
      0006AC FF               [12] 1680 	mov	r7,a
      0006AD 90 00 04         [24] 1681 	mov	dptr,#(_rx_message + 0x0003)
      0006B0 E0               [24] 1682 	movx	a,@dptr
      0006B1 FE               [12] 1683 	mov	r6,a
      0006B2 90 00 03         [24] 1684 	mov	dptr,#(_rx_message + 0x0002)
      0006B5 E0               [24] 1685 	movx	a,@dptr
      0006B6 FD               [12] 1686 	mov	r5,a
      0006B7 C0 07            [24] 1687 	push	ar7
      0006B9 C0 06            [24] 1688 	push	ar6
      0006BB 8D 82            [24] 1689 	mov	dpl,r5
      0006BD 12 12 AB         [24] 1690 	lcall	_p18fk_isp_mass_erase
      0006C0 15 81            [12] 1691 	dec	sp
      0006C2 15 81            [12] 1692 	dec	sp
                                   1693 ;	isp.c:193: usart_tx_b (0xB0, TRUE);
      0006C4 D2 F0            [12] 1694 	setb	b[0]
      0006C6 85 F0 21         [24] 1695 	mov	bits,b
      0006C9 75 82 B0         [24] 1696 	mov	dpl,#0xb0
      0006CC 12 1B F6         [24] 1697 	lcall	_usart_tx_b
                                   1698 ;	isp.c:194: rx_state = 0;
      0006CF 75 0B 00         [24] 1699 	mov	_rx_state,#0x00
                                   1700 ;	isp.c:195: break;
      0006D2 02 0C 0A         [24] 1701 	ljmp	00148$
                                   1702 ;	isp.c:197: case 0x31: // p18d_write_page
      0006D5                       1703 00131$:
                                   1704 ;	isp.c:198: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      0006D5 90 00 04         [24] 1705 	mov	dptr,#(_rx_message + 0x0003)
      0006D8 E0               [24] 1706 	movx	a,@dptr
      0006D9 FF               [12] 1707 	mov	r7,a
      0006DA 7E 00            [12] 1708 	mov	r6,#0x00
      0006DC 8E 04            [24] 1709 	mov	ar4,r6
      0006DE 8F 05            [24] 1710 	mov	ar5,r7
      0006E0 7F 00            [12] 1711 	mov	r7,#0x00
      0006E2 90 00 05         [24] 1712 	mov	dptr,#(_rx_message + 0x0004)
      0006E5 E0               [24] 1713 	movx	a,@dptr
      0006E6 F8               [12] 1714 	mov	r0,a
      0006E7 79 00            [12] 1715 	mov	r1,#0x00
      0006E9 7A 00            [12] 1716 	mov	r2,#0x00
      0006EB 8A 03            [24] 1717 	mov	ar3,r2
      0006ED 89 02            [24] 1718 	mov	ar2,r1
      0006EF 88 01            [24] 1719 	mov	ar1,r0
      0006F1 E4               [12] 1720 	clr	a
      0006F2 2F               [12] 1721 	add	a,r7
      0006F3 FF               [12] 1722 	mov	r7,a
      0006F4 E9               [12] 1723 	mov	a,r1
      0006F5 3E               [12] 1724 	addc	a,r6
      0006F6 FE               [12] 1725 	mov	r6,a
      0006F7 EA               [12] 1726 	mov	a,r2
      0006F8 3D               [12] 1727 	addc	a,r5
      0006F9 FD               [12] 1728 	mov	r5,a
      0006FA EB               [12] 1729 	mov	a,r3
      0006FB 3C               [12] 1730 	addc	a,r4
      0006FC FC               [12] 1731 	mov	r4,a
      0006FD 90 00 06         [24] 1732 	mov	dptr,#(_rx_message + 0x0005)
      000700 E0               [24] 1733 	movx	a,@dptr
      000701 F8               [12] 1734 	mov	r0,a
      000702 E4               [12] 1735 	clr	a
      000703 F9               [12] 1736 	mov	r1,a
      000704 FB               [12] 1737 	mov	r3,a
      000705 E8               [12] 1738 	mov	a,r0
      000706 2F               [12] 1739 	add	a,r7
      000707 F5 12            [12] 1740 	mov	_addr,a
      000709 E9               [12] 1741 	mov	a,r1
      00070A 3E               [12] 1742 	addc	a,r6
      00070B F5 13            [12] 1743 	mov	(_addr + 1),a
      00070D EA               [12] 1744 	mov	a,r2
      00070E 3D               [12] 1745 	addc	a,r5
      00070F F5 14            [12] 1746 	mov	(_addr + 2),a
      000711 EB               [12] 1747 	mov	a,r3
      000712 3C               [12] 1748 	addc	a,r4
      000713 F5 15            [12] 1749 	mov	(_addr + 3),a
                                   1750 ;	isp.c:199: for (i=0;i<rx_message[2]/2;i++)
      000715 8F 09            [24] 1751 	mov	_i,r7
      000717                       1752 00173$:
      000717 90 00 03         [24] 1753 	mov	dptr,#(_rx_message + 0x0002)
      00071A E0               [24] 1754 	movx	a,@dptr
      00071B FF               [12] 1755 	mov	r7,a
      00071C 7E 00            [12] 1756 	mov	r6,#0x00
      00071E 74 02            [12] 1757 	mov	a,#0x02
      000720 C0 E0            [24] 1758 	push	acc
      000722 E4               [12] 1759 	clr	a
      000723 C0 E0            [24] 1760 	push	acc
      000725 8F 82            [24] 1761 	mov	dpl,r7
      000727 8E 83            [24] 1762 	mov	dph,r6
      000729 12 21 DA         [24] 1763 	lcall	__divsint
      00072C AE 82            [24] 1764 	mov	r6,dpl
      00072E AF 83            [24] 1765 	mov	r7,dph
      000730 15 81            [12] 1766 	dec	sp
      000732 15 81            [12] 1767 	dec	sp
      000734 AC 09            [24] 1768 	mov	r4,_i
      000736 7D 00            [12] 1769 	mov	r5,#0x00
      000738 C3               [12] 1770 	clr	c
      000739 EC               [12] 1771 	mov	a,r4
      00073A 9E               [12] 1772 	subb	a,r6
      00073B ED               [12] 1773 	mov	a,r5
      00073C 64 80            [12] 1774 	xrl	a,#0x80
      00073E 8F F0            [24] 1775 	mov	b,r7
      000740 63 F0 80         [24] 1776 	xrl	b,#0x80
      000743 95 F0            [12] 1777 	subb	a,b
      000745 50 51            [24] 1778 	jnc	00132$
                                   1779 ;	isp.c:200: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
      000747 E5 09            [12] 1780 	mov	a,_i
      000749 75 F0 02         [24] 1781 	mov	b,#0x02
      00074C A4               [48] 1782 	mul	ab
      00074D 24 8D            [12] 1783 	add	a,#_flash_buffer
      00074F FA               [12] 1784 	mov	r2,a
      000750 74 00            [12] 1785 	mov	a,#(_flash_buffer >> 8)
      000752 35 F0            [12] 1786 	addc	a,b
      000754 FB               [12] 1787 	mov	r3,a
      000755 EC               [12] 1788 	mov	a,r4
      000756 2C               [12] 1789 	add	a,r4
      000757 FC               [12] 1790 	mov	r4,a
      000758 ED               [12] 1791 	mov	a,r5
      000759 33               [12] 1792 	rlc	a
      00075A FD               [12] 1793 	mov	r5,a
      00075B 74 07            [12] 1794 	mov	a,#0x07
      00075D 2C               [12] 1795 	add	a,r4
      00075E F8               [12] 1796 	mov	r0,a
      00075F E4               [12] 1797 	clr	a
      000760 3D               [12] 1798 	addc	a,r5
      000761 F9               [12] 1799 	mov	r1,a
      000762 E8               [12] 1800 	mov	a,r0
      000763 24 01            [12] 1801 	add	a,#_rx_message
      000765 F5 82            [12] 1802 	mov	dpl,a
      000767 E9               [12] 1803 	mov	a,r1
      000768 34 00            [12] 1804 	addc	a,#(_rx_message >> 8)
      00076A F5 83            [12] 1805 	mov	dph,a
      00076C E0               [24] 1806 	movx	a,@dptr
      00076D F9               [12] 1807 	mov	r1,a
      00076E 78 00            [12] 1808 	mov	r0,#0x00
      000770 74 06            [12] 1809 	mov	a,#0x06
      000772 2C               [12] 1810 	add	a,r4
      000773 FC               [12] 1811 	mov	r4,a
      000774 E4               [12] 1812 	clr	a
      000775 3D               [12] 1813 	addc	a,r5
      000776 FD               [12] 1814 	mov	r5,a
      000777 EC               [12] 1815 	mov	a,r4
      000778 24 01            [12] 1816 	add	a,#_rx_message
      00077A F5 82            [12] 1817 	mov	dpl,a
      00077C ED               [12] 1818 	mov	a,r5
      00077D 34 00            [12] 1819 	addc	a,#(_rx_message >> 8)
      00077F F5 83            [12] 1820 	mov	dph,a
      000781 E0               [24] 1821 	movx	a,@dptr
      000782 FD               [12] 1822 	mov	r5,a
      000783 7C 00            [12] 1823 	mov	r4,#0x00
      000785 28               [12] 1824 	add	a,r0
      000786 F8               [12] 1825 	mov	r0,a
      000787 EC               [12] 1826 	mov	a,r4
      000788 39               [12] 1827 	addc	a,r1
      000789 F9               [12] 1828 	mov	r1,a
      00078A 8A 82            [24] 1829 	mov	dpl,r2
      00078C 8B 83            [24] 1830 	mov	dph,r3
      00078E E8               [12] 1831 	mov	a,r0
      00078F F0               [24] 1832 	movx	@dptr,a
      000790 E9               [12] 1833 	mov	a,r1
      000791 A3               [24] 1834 	inc	dptr
      000792 F0               [24] 1835 	movx	@dptr,a
                                   1836 ;	isp.c:199: for (i=0;i<rx_message[2]/2;i++)
      000793 05 09            [12] 1837 	inc	_i
      000795 02 07 17         [24] 1838 	ljmp	00173$
      000798                       1839 00132$:
                                   1840 ;	isp.c:201: p18fk_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
      000798 C0 06            [24] 1841 	push	ar6
      00079A C0 12            [24] 1842 	push	_addr
      00079C C0 13            [24] 1843 	push	(_addr + 1)
      00079E C0 14            [24] 1844 	push	(_addr + 2)
      0007A0 C0 15            [24] 1845 	push	(_addr + 3)
      0007A2 90 00 8D         [24] 1846 	mov	dptr,#_flash_buffer
      0007A5 75 F0 00         [24] 1847 	mov	b,#0x00
      0007A8 12 13 77         [24] 1848 	lcall	_p18fk_isp_write_pgm
      0007AB E5 81            [12] 1849 	mov	a,sp
      0007AD 24 FB            [12] 1850 	add	a,#0xfb
      0007AF F5 81            [12] 1851 	mov	sp,a
                                   1852 ;	isp.c:202: usart_tx_b (0xB1, TRUE);
      0007B1 D2 F0            [12] 1853 	setb	b[0]
      0007B3 85 F0 21         [24] 1854 	mov	bits,b
      0007B6 75 82 B1         [24] 1855 	mov	dpl,#0xb1
      0007B9 12 1B F6         [24] 1856 	lcall	_usart_tx_b
                                   1857 ;	isp.c:203: rx_state = 0;
      0007BC 75 0B 00         [24] 1858 	mov	_rx_state,#0x00
                                   1859 ;	isp.c:204: break;
      0007BF 02 0C 0A         [24] 1860 	ljmp	00148$
                                   1861 ;	isp.c:206: case 0x32: // p18d_write_cfg
      0007C2                       1862 00133$:
                                   1863 ;	isp.c:207: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      0007C2 90 00 04         [24] 1864 	mov	dptr,#(_rx_message + 0x0003)
      0007C5 E0               [24] 1865 	movx	a,@dptr
      0007C6 FF               [12] 1866 	mov	r7,a
      0007C7 7E 00            [12] 1867 	mov	r6,#0x00
      0007C9 8E 04            [24] 1868 	mov	ar4,r6
      0007CB 8F 05            [24] 1869 	mov	ar5,r7
      0007CD 7F 00            [12] 1870 	mov	r7,#0x00
      0007CF 90 00 05         [24] 1871 	mov	dptr,#(_rx_message + 0x0004)
      0007D2 E0               [24] 1872 	movx	a,@dptr
      0007D3 F8               [12] 1873 	mov	r0,a
      0007D4 79 00            [12] 1874 	mov	r1,#0x00
      0007D6 7A 00            [12] 1875 	mov	r2,#0x00
      0007D8 8A 03            [24] 1876 	mov	ar3,r2
      0007DA 89 02            [24] 1877 	mov	ar2,r1
      0007DC 88 01            [24] 1878 	mov	ar1,r0
      0007DE E4               [12] 1879 	clr	a
      0007DF 2F               [12] 1880 	add	a,r7
      0007E0 FF               [12] 1881 	mov	r7,a
      0007E1 E9               [12] 1882 	mov	a,r1
      0007E2 3E               [12] 1883 	addc	a,r6
      0007E3 FE               [12] 1884 	mov	r6,a
      0007E4 EA               [12] 1885 	mov	a,r2
      0007E5 3D               [12] 1886 	addc	a,r5
      0007E6 FD               [12] 1887 	mov	r5,a
      0007E7 EB               [12] 1888 	mov	a,r3
      0007E8 3C               [12] 1889 	addc	a,r4
      0007E9 FC               [12] 1890 	mov	r4,a
      0007EA 90 00 06         [24] 1891 	mov	dptr,#(_rx_message + 0x0005)
      0007ED E0               [24] 1892 	movx	a,@dptr
      0007EE F8               [12] 1893 	mov	r0,a
      0007EF E4               [12] 1894 	clr	a
      0007F0 F9               [12] 1895 	mov	r1,a
      0007F1 FB               [12] 1896 	mov	r3,a
      0007F2 E8               [12] 1897 	mov	a,r0
      0007F3 2F               [12] 1898 	add	a,r7
      0007F4 F5 12            [12] 1899 	mov	_addr,a
      0007F6 E9               [12] 1900 	mov	a,r1
      0007F7 3E               [12] 1901 	addc	a,r6
      0007F8 F5 13            [12] 1902 	mov	(_addr + 1),a
      0007FA EA               [12] 1903 	mov	a,r2
      0007FB 3D               [12] 1904 	addc	a,r5
      0007FC F5 14            [12] 1905 	mov	(_addr + 2),a
      0007FE EB               [12] 1906 	mov	a,r3
      0007FF 3C               [12] 1907 	addc	a,r4
      000800 F5 15            [12] 1908 	mov	(_addr + 3),a
                                   1909 ;	isp.c:208: p18fk_isp_write_cfg (rx_message[6],rx_message[7], addr);
      000802 90 00 08         [24] 1910 	mov	dptr,#(_rx_message + 0x0007)
      000805 E0               [24] 1911 	movx	a,@dptr
      000806 FF               [12] 1912 	mov	r7,a
      000807 90 00 07         [24] 1913 	mov	dptr,#(_rx_message + 0x0006)
      00080A E0               [24] 1914 	movx	a,@dptr
      00080B FE               [12] 1915 	mov	r6,a
      00080C C0 12            [24] 1916 	push	_addr
      00080E C0 13            [24] 1917 	push	(_addr + 1)
      000810 C0 14            [24] 1918 	push	(_addr + 2)
      000812 C0 15            [24] 1919 	push	(_addr + 3)
      000814 C0 07            [24] 1920 	push	ar7
      000816 8E 82            [24] 1921 	mov	dpl,r6
      000818 12 16 31         [24] 1922 	lcall	_p18fk_isp_write_cfg
      00081B E5 81            [12] 1923 	mov	a,sp
      00081D 24 FB            [12] 1924 	add	a,#0xfb
      00081F F5 81            [12] 1925 	mov	sp,a
                                   1926 ;	isp.c:209: usart_tx_b (0xB2, TRUE);
      000821 D2 F0            [12] 1927 	setb	b[0]
      000823 85 F0 21         [24] 1928 	mov	bits,b
      000826 75 82 B2         [24] 1929 	mov	dpl,#0xb2
      000829 12 1B F6         [24] 1930 	lcall	_usart_tx_b
                                   1931 ;	isp.c:210: rx_state = 0;
      00082C 75 0B 00         [24] 1932 	mov	_rx_state,#0x00
                                   1933 ;	isp.c:211: break;
      00082F 02 0C 0A         [24] 1934 	ljmp	00148$
                                   1935 ;	isp.c:213: case 0x40: // prog_enter_progmode
      000832                       1936 00134$:
                                   1937 ;	isp.c:214: p16c_enter_progmode();
      000832 12 18 FB         [24] 1938 	lcall	_p16c_enter_progmode
                                   1939 ;	isp.c:215: usart_tx_b (0xC0, TRUE);
      000835 D2 F0            [12] 1940 	setb	b[0]
      000837 85 F0 21         [24] 1941 	mov	bits,b
      00083A 75 82 C0         [24] 1942 	mov	dpl,#0xc0
      00083D 12 1B F6         [24] 1943 	lcall	_usart_tx_b
                                   1944 ;	isp.c:216: rx_state = 0;
      000840 75 0B 00         [24] 1945 	mov	_rx_state,#0x00
                                   1946 ;	isp.c:217: break;
      000843 02 0C 0A         [24] 1947 	ljmp	00148$
                                   1948 ;	isp.c:219: case 0x41: // p16c_read_page
      000846                       1949 00135$:
                                   1950 ;	isp.c:220: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000846 90 00 04         [24] 1951 	mov	dptr,#(_rx_message + 0x0003)
      000849 E0               [24] 1952 	movx	a,@dptr
      00084A FF               [12] 1953 	mov	r7,a
      00084B 7E 00            [12] 1954 	mov	r6,#0x00
      00084D 8E 04            [24] 1955 	mov	ar4,r6
      00084F 8F 05            [24] 1956 	mov	ar5,r7
      000851 7F 00            [12] 1957 	mov	r7,#0x00
      000853 90 00 05         [24] 1958 	mov	dptr,#(_rx_message + 0x0004)
      000856 E0               [24] 1959 	movx	a,@dptr
      000857 F8               [12] 1960 	mov	r0,a
      000858 79 00            [12] 1961 	mov	r1,#0x00
      00085A 7A 00            [12] 1962 	mov	r2,#0x00
      00085C 8A 03            [24] 1963 	mov	ar3,r2
      00085E 89 02            [24] 1964 	mov	ar2,r1
      000860 88 01            [24] 1965 	mov	ar1,r0
      000862 E4               [12] 1966 	clr	a
      000863 2F               [12] 1967 	add	a,r7
      000864 FF               [12] 1968 	mov	r7,a
      000865 E9               [12] 1969 	mov	a,r1
      000866 3E               [12] 1970 	addc	a,r6
      000867 FE               [12] 1971 	mov	r6,a
      000868 EA               [12] 1972 	mov	a,r2
      000869 3D               [12] 1973 	addc	a,r5
      00086A FD               [12] 1974 	mov	r5,a
      00086B EB               [12] 1975 	mov	a,r3
      00086C 3C               [12] 1976 	addc	a,r4
      00086D FC               [12] 1977 	mov	r4,a
      00086E 90 00 06         [24] 1978 	mov	dptr,#(_rx_message + 0x0005)
      000871 E0               [24] 1979 	movx	a,@dptr
      000872 F8               [12] 1980 	mov	r0,a
      000873 E4               [12] 1981 	clr	a
      000874 F9               [12] 1982 	mov	r1,a
      000875 FB               [12] 1983 	mov	r3,a
      000876 E8               [12] 1984 	mov	a,r0
      000877 2F               [12] 1985 	add	a,r7
      000878 F5 12            [12] 1986 	mov	_addr,a
      00087A E9               [12] 1987 	mov	a,r1
      00087B 3E               [12] 1988 	addc	a,r6
      00087C F5 13            [12] 1989 	mov	(_addr + 1),a
      00087E EA               [12] 1990 	mov	a,r2
      00087F 3D               [12] 1991 	addc	a,r5
      000880 F5 14            [12] 1992 	mov	(_addr + 2),a
      000882 EB               [12] 1993 	mov	a,r3
      000883 3C               [12] 1994 	addc	a,r4
      000884 F5 15            [12] 1995 	mov	(_addr + 3),a
                                   1996 ;	isp.c:221: p16c_isp_read_pgm (flash_buffer, addr, rx_message[2]);
      000886 90 00 03         [24] 1997 	mov	dptr,#(_rx_message + 0x0002)
      000889 E0               [24] 1998 	movx	a,@dptr
      00088A FF               [12] 1999 	mov	r7,a
      00088B C0 07            [24] 2000 	push	ar7
      00088D C0 12            [24] 2001 	push	_addr
      00088F C0 13            [24] 2002 	push	(_addr + 1)
      000891 C0 14            [24] 2003 	push	(_addr + 2)
      000893 C0 15            [24] 2004 	push	(_addr + 3)
      000895 90 00 8D         [24] 2005 	mov	dptr,#_flash_buffer
      000898 75 F0 00         [24] 2006 	mov	b,#0x00
      00089B 12 1A 96         [24] 2007 	lcall	_p16c_isp_read_pgm
      00089E E5 81            [12] 2008 	mov	a,sp
      0008A0 24 FB            [12] 2009 	add	a,#0xfb
      0008A2 F5 81            [12] 2010 	mov	sp,a
                                   2011 ;	isp.c:222: usart_tx_b (0xC1, FALSE);
      0008A4 C2 F0            [12] 2012 	clr	b[0]
      0008A6 85 F0 21         [24] 2013 	mov	bits,b
      0008A9 75 82 C1         [24] 2014 	mov	dpl,#0xc1
      0008AC 12 1B F6         [24] 2015 	lcall	_usart_tx_b
                                   2016 ;	isp.c:223: for (i=0;i<rx_message[2];i++) {
      0008AF 75 09 00         [24] 2017 	mov	_i,#0x00
      0008B2                       2018 00176$:
      0008B2 90 00 03         [24] 2019 	mov	dptr,#(_rx_message + 0x0002)
      0008B5 E0               [24] 2020 	movx	a,@dptr
      0008B6 FF               [12] 2021 	mov	r7,a
      0008B7 C3               [12] 2022 	clr	c
      0008B8 E5 09            [12] 2023 	mov	a,_i
      0008BA 9F               [12] 2024 	subb	a,r7
      0008BB 50 3D            [24] 2025 	jnc	00136$
                                   2026 ;	isp.c:224: usart_tx_b (flash_buffer[i]&0xFF, FALSE);
      0008BD E5 09            [12] 2027 	mov	a,_i
      0008BF 75 F0 02         [24] 2028 	mov	b,#0x02
      0008C2 A4               [48] 2029 	mul	ab
      0008C3 24 8D            [12] 2030 	add	a,#_flash_buffer
      0008C5 F5 82            [12] 2031 	mov	dpl,a
      0008C7 74 00            [12] 2032 	mov	a,#(_flash_buffer >> 8)
      0008C9 35 F0            [12] 2033 	addc	a,b
      0008CB F5 83            [12] 2034 	mov	dph,a
      0008CD E0               [24] 2035 	movx	a,@dptr
      0008CE FF               [12] 2036 	mov	r7,a
      0008CF C2 F0            [12] 2037 	clr	b[0]
      0008D1 85 F0 21         [24] 2038 	mov	bits,b
      0008D4 8F 82            [24] 2039 	mov	dpl,r7
      0008D6 12 1B F6         [24] 2040 	lcall	_usart_tx_b
                                   2041 ;	isp.c:225: usart_tx_b (flash_buffer[i]>>8, FALSE);
      0008D9 E5 09            [12] 2042 	mov	a,_i
      0008DB 75 F0 02         [24] 2043 	mov	b,#0x02
      0008DE A4               [48] 2044 	mul	ab
      0008DF 24 8D            [12] 2045 	add	a,#_flash_buffer
      0008E1 F5 82            [12] 2046 	mov	dpl,a
      0008E3 74 00            [12] 2047 	mov	a,#(_flash_buffer >> 8)
      0008E5 35 F0            [12] 2048 	addc	a,b
      0008E7 F5 83            [12] 2049 	mov	dph,a
      0008E9 E0               [24] 2050 	movx	a,@dptr
      0008EA A3               [24] 2051 	inc	dptr
      0008EB E0               [24] 2052 	movx	a,@dptr
      0008EC F5 82            [12] 2053 	mov	dpl,a
      0008EE C2 F0            [12] 2054 	clr	b[0]
      0008F0 85 F0 21         [24] 2055 	mov	bits,b
      0008F3 12 1B F6         [24] 2056 	lcall	_usart_tx_b
                                   2057 ;	isp.c:223: for (i=0;i<rx_message[2];i++) {
      0008F6 05 09            [12] 2058 	inc	_i
      0008F8 80 B8            [24] 2059 	sjmp	00176$
      0008FA                       2060 00136$:
                                   2061 ;	isp.c:227: CDC_flush();
      0008FA 12 1C 3C         [24] 2062 	lcall	_CDC_flush
                                   2063 ;	isp.c:228: rx_state = 0;
      0008FD 75 0B 00         [24] 2064 	mov	_rx_state,#0x00
                                   2065 ;	isp.c:229: break;
      000900 02 0C 0A         [24] 2066 	ljmp	00148$
                                   2067 ;	isp.c:231: case 0x42: // p16c_write_page
      000903                       2068 00137$:
                                   2069 ;	isp.c:232: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000903 90 00 04         [24] 2070 	mov	dptr,#(_rx_message + 0x0003)
      000906 E0               [24] 2071 	movx	a,@dptr
      000907 FF               [12] 2072 	mov	r7,a
      000908 7E 00            [12] 2073 	mov	r6,#0x00
      00090A 8E 04            [24] 2074 	mov	ar4,r6
      00090C 8F 05            [24] 2075 	mov	ar5,r7
      00090E 7F 00            [12] 2076 	mov	r7,#0x00
      000910 90 00 05         [24] 2077 	mov	dptr,#(_rx_message + 0x0004)
      000913 E0               [24] 2078 	movx	a,@dptr
      000914 F8               [12] 2079 	mov	r0,a
      000915 79 00            [12] 2080 	mov	r1,#0x00
      000917 7A 00            [12] 2081 	mov	r2,#0x00
      000919 8A 03            [24] 2082 	mov	ar3,r2
      00091B 89 02            [24] 2083 	mov	ar2,r1
      00091D 88 01            [24] 2084 	mov	ar1,r0
      00091F E4               [12] 2085 	clr	a
      000920 2F               [12] 2086 	add	a,r7
      000921 FF               [12] 2087 	mov	r7,a
      000922 E9               [12] 2088 	mov	a,r1
      000923 3E               [12] 2089 	addc	a,r6
      000924 FE               [12] 2090 	mov	r6,a
      000925 EA               [12] 2091 	mov	a,r2
      000926 3D               [12] 2092 	addc	a,r5
      000927 FD               [12] 2093 	mov	r5,a
      000928 EB               [12] 2094 	mov	a,r3
      000929 3C               [12] 2095 	addc	a,r4
      00092A FC               [12] 2096 	mov	r4,a
      00092B 90 00 06         [24] 2097 	mov	dptr,#(_rx_message + 0x0005)
      00092E E0               [24] 2098 	movx	a,@dptr
      00092F F8               [12] 2099 	mov	r0,a
      000930 E4               [12] 2100 	clr	a
      000931 F9               [12] 2101 	mov	r1,a
      000932 FB               [12] 2102 	mov	r3,a
      000933 E8               [12] 2103 	mov	a,r0
      000934 2F               [12] 2104 	add	a,r7
      000935 F5 12            [12] 2105 	mov	_addr,a
      000937 E9               [12] 2106 	mov	a,r1
      000938 3E               [12] 2107 	addc	a,r6
      000939 F5 13            [12] 2108 	mov	(_addr + 1),a
      00093B EA               [12] 2109 	mov	a,r2
      00093C 3D               [12] 2110 	addc	a,r5
      00093D F5 14            [12] 2111 	mov	(_addr + 2),a
      00093F EB               [12] 2112 	mov	a,r3
      000940 3C               [12] 2113 	addc	a,r4
      000941 F5 15            [12] 2114 	mov	(_addr + 3),a
                                   2115 ;	isp.c:233: for (i=0;i<rx_message[2]/2;i++)
      000943 8F 09            [24] 2116 	mov	_i,r7
      000945                       2117 00179$:
      000945 90 00 03         [24] 2118 	mov	dptr,#(_rx_message + 0x0002)
      000948 E0               [24] 2119 	movx	a,@dptr
      000949 FF               [12] 2120 	mov	r7,a
      00094A 7E 00            [12] 2121 	mov	r6,#0x00
      00094C 74 02            [12] 2122 	mov	a,#0x02
      00094E C0 E0            [24] 2123 	push	acc
      000950 E4               [12] 2124 	clr	a
      000951 C0 E0            [24] 2125 	push	acc
      000953 8F 82            [24] 2126 	mov	dpl,r7
      000955 8E 83            [24] 2127 	mov	dph,r6
      000957 12 21 DA         [24] 2128 	lcall	__divsint
      00095A AE 82            [24] 2129 	mov	r6,dpl
      00095C AF 83            [24] 2130 	mov	r7,dph
      00095E 15 81            [12] 2131 	dec	sp
      000960 15 81            [12] 2132 	dec	sp
      000962 AC 09            [24] 2133 	mov	r4,_i
      000964 7D 00            [12] 2134 	mov	r5,#0x00
      000966 C3               [12] 2135 	clr	c
      000967 EC               [12] 2136 	mov	a,r4
      000968 9E               [12] 2137 	subb	a,r6
      000969 ED               [12] 2138 	mov	a,r5
      00096A 64 80            [12] 2139 	xrl	a,#0x80
      00096C 8F F0            [24] 2140 	mov	b,r7
      00096E 63 F0 80         [24] 2141 	xrl	b,#0x80
      000971 95 F0            [12] 2142 	subb	a,b
      000973 50 51            [24] 2143 	jnc	00138$
                                   2144 ;	isp.c:234: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
      000975 E5 09            [12] 2145 	mov	a,_i
      000977 75 F0 02         [24] 2146 	mov	b,#0x02
      00097A A4               [48] 2147 	mul	ab
      00097B 24 8D            [12] 2148 	add	a,#_flash_buffer
      00097D FA               [12] 2149 	mov	r2,a
      00097E 74 00            [12] 2150 	mov	a,#(_flash_buffer >> 8)
      000980 35 F0            [12] 2151 	addc	a,b
      000982 FB               [12] 2152 	mov	r3,a
      000983 EC               [12] 2153 	mov	a,r4
      000984 2C               [12] 2154 	add	a,r4
      000985 FC               [12] 2155 	mov	r4,a
      000986 ED               [12] 2156 	mov	a,r5
      000987 33               [12] 2157 	rlc	a
      000988 FD               [12] 2158 	mov	r5,a
      000989 74 07            [12] 2159 	mov	a,#0x07
      00098B 2C               [12] 2160 	add	a,r4
      00098C F8               [12] 2161 	mov	r0,a
      00098D E4               [12] 2162 	clr	a
      00098E 3D               [12] 2163 	addc	a,r5
      00098F F9               [12] 2164 	mov	r1,a
      000990 E8               [12] 2165 	mov	a,r0
      000991 24 01            [12] 2166 	add	a,#_rx_message
      000993 F5 82            [12] 2167 	mov	dpl,a
      000995 E9               [12] 2168 	mov	a,r1
      000996 34 00            [12] 2169 	addc	a,#(_rx_message >> 8)
      000998 F5 83            [12] 2170 	mov	dph,a
      00099A E0               [24] 2171 	movx	a,@dptr
      00099B F9               [12] 2172 	mov	r1,a
      00099C 78 00            [12] 2173 	mov	r0,#0x00
      00099E 74 06            [12] 2174 	mov	a,#0x06
      0009A0 2C               [12] 2175 	add	a,r4
      0009A1 FC               [12] 2176 	mov	r4,a
      0009A2 E4               [12] 2177 	clr	a
      0009A3 3D               [12] 2178 	addc	a,r5
      0009A4 FD               [12] 2179 	mov	r5,a
      0009A5 EC               [12] 2180 	mov	a,r4
      0009A6 24 01            [12] 2181 	add	a,#_rx_message
      0009A8 F5 82            [12] 2182 	mov	dpl,a
      0009AA ED               [12] 2183 	mov	a,r5
      0009AB 34 00            [12] 2184 	addc	a,#(_rx_message >> 8)
      0009AD F5 83            [12] 2185 	mov	dph,a
      0009AF E0               [24] 2186 	movx	a,@dptr
      0009B0 FD               [12] 2187 	mov	r5,a
      0009B1 7C 00            [12] 2188 	mov	r4,#0x00
      0009B3 28               [12] 2189 	add	a,r0
      0009B4 F8               [12] 2190 	mov	r0,a
      0009B5 EC               [12] 2191 	mov	a,r4
      0009B6 39               [12] 2192 	addc	a,r1
      0009B7 F9               [12] 2193 	mov	r1,a
      0009B8 8A 82            [24] 2194 	mov	dpl,r2
      0009BA 8B 83            [24] 2195 	mov	dph,r3
      0009BC E8               [12] 2196 	mov	a,r0
      0009BD F0               [24] 2197 	movx	@dptr,a
      0009BE E9               [12] 2198 	mov	a,r1
      0009BF A3               [24] 2199 	inc	dptr
      0009C0 F0               [24] 2200 	movx	@dptr,a
                                   2201 ;	isp.c:233: for (i=0;i<rx_message[2]/2;i++)
      0009C1 05 09            [12] 2202 	inc	_i
      0009C3 02 09 45         [24] 2203 	ljmp	00179$
      0009C6                       2204 00138$:
                                   2205 ;	isp.c:235: p16c_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
      0009C6 C0 06            [24] 2206 	push	ar6
      0009C8 C0 12            [24] 2207 	push	_addr
      0009CA C0 13            [24] 2208 	push	(_addr + 1)
      0009CC C0 14            [24] 2209 	push	(_addr + 2)
      0009CE C0 15            [24] 2210 	push	(_addr + 3)
      0009D0 90 00 8D         [24] 2211 	mov	dptr,#_flash_buffer
      0009D3 75 F0 00         [24] 2212 	mov	b,#0x00
      0009D6 12 1A 17         [24] 2213 	lcall	_p16c_isp_write_pgm
      0009D9 E5 81            [12] 2214 	mov	a,sp
      0009DB 24 FB            [12] 2215 	add	a,#0xfb
      0009DD F5 81            [12] 2216 	mov	sp,a
                                   2217 ;	isp.c:236: usart_tx_b (0xC2, TRUE);
      0009DF D2 F0            [12] 2218 	setb	b[0]
      0009E1 85 F0 21         [24] 2219 	mov	bits,b
      0009E4 75 82 C2         [24] 2220 	mov	dpl,#0xc2
      0009E7 12 1B F6         [24] 2221 	lcall	_usart_tx_b
                                   2222 ;	isp.c:237: rx_state = 0;
      0009EA 75 0B 00         [24] 2223 	mov	_rx_state,#0x00
                                   2224 ;	isp.c:238: break;
      0009ED 02 0C 0A         [24] 2225 	ljmp	00148$
                                   2226 ;	isp.c:240: case 0x43: // p16c_mass_erase
      0009F0                       2227 00139$:
                                   2228 ;	isp.c:241: p16c_set_pc (0x8000);
      0009F0 90 80 00         [24] 2229 	mov	dptr,#0x8000
      0009F3 E4               [12] 2230 	clr	a
      0009F4 F5 F0            [12] 2231 	mov	b,a
      0009F6 12 19 25         [24] 2232 	lcall	_p16c_set_pc
                                   2233 ;	isp.c:242: p16c_bulk_erase ();
      0009F9 12 19 52         [24] 2234 	lcall	_p16c_bulk_erase
                                   2235 ;	isp.c:243: usart_tx_b (0xC3, TRUE);
      0009FC D2 F0            [12] 2236 	setb	b[0]
      0009FE 85 F0 21         [24] 2237 	mov	bits,b
      000A01 75 82 C3         [24] 2238 	mov	dpl,#0xc3
      000A04 12 1B F6         [24] 2239 	lcall	_usart_tx_b
                                   2240 ;	isp.c:244: rx_state = 0;
      000A07 75 0B 00         [24] 2241 	mov	_rx_state,#0x00
                                   2242 ;	isp.c:245: break;
      000A0A 02 0C 0A         [24] 2243 	ljmp	00148$
                                   2244 ;	isp.c:247: case 0x44: // p16c_write_single_cfg
      000A0D                       2245 00140$:
                                   2246 ;	isp.c:248: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000A0D 90 00 04         [24] 2247 	mov	dptr,#(_rx_message + 0x0003)
      000A10 E0               [24] 2248 	movx	a,@dptr
      000A11 FF               [12] 2249 	mov	r7,a
      000A12 7E 00            [12] 2250 	mov	r6,#0x00
      000A14 8E 04            [24] 2251 	mov	ar4,r6
      000A16 8F 05            [24] 2252 	mov	ar5,r7
      000A18 7F 00            [12] 2253 	mov	r7,#0x00
      000A1A 90 00 05         [24] 2254 	mov	dptr,#(_rx_message + 0x0004)
      000A1D E0               [24] 2255 	movx	a,@dptr
      000A1E F8               [12] 2256 	mov	r0,a
      000A1F 79 00            [12] 2257 	mov	r1,#0x00
      000A21 7A 00            [12] 2258 	mov	r2,#0x00
      000A23 8A 03            [24] 2259 	mov	ar3,r2
      000A25 89 02            [24] 2260 	mov	ar2,r1
      000A27 88 01            [24] 2261 	mov	ar1,r0
      000A29 E4               [12] 2262 	clr	a
      000A2A 2F               [12] 2263 	add	a,r7
      000A2B FF               [12] 2264 	mov	r7,a
      000A2C E9               [12] 2265 	mov	a,r1
      000A2D 3E               [12] 2266 	addc	a,r6
      000A2E FE               [12] 2267 	mov	r6,a
      000A2F EA               [12] 2268 	mov	a,r2
      000A30 3D               [12] 2269 	addc	a,r5
      000A31 FD               [12] 2270 	mov	r5,a
      000A32 EB               [12] 2271 	mov	a,r3
      000A33 3C               [12] 2272 	addc	a,r4
      000A34 FC               [12] 2273 	mov	r4,a
      000A35 90 00 06         [24] 2274 	mov	dptr,#(_rx_message + 0x0005)
      000A38 E0               [24] 2275 	movx	a,@dptr
      000A39 F8               [12] 2276 	mov	r0,a
      000A3A E4               [12] 2277 	clr	a
      000A3B F9               [12] 2278 	mov	r1,a
      000A3C FB               [12] 2279 	mov	r3,a
      000A3D E8               [12] 2280 	mov	a,r0
      000A3E 2F               [12] 2281 	add	a,r7
      000A3F F5 12            [12] 2282 	mov	_addr,a
      000A41 E9               [12] 2283 	mov	a,r1
      000A42 3E               [12] 2284 	addc	a,r6
      000A43 F5 13            [12] 2285 	mov	(_addr + 1),a
      000A45 EA               [12] 2286 	mov	a,r2
      000A46 3D               [12] 2287 	addc	a,r5
      000A47 F5 14            [12] 2288 	mov	(_addr + 2),a
      000A49 EB               [12] 2289 	mov	a,r3
      000A4A 3C               [12] 2290 	addc	a,r4
      000A4B F5 15            [12] 2291 	mov	(_addr + 3),a
                                   2292 ;	isp.c:249: cfg_val = rx_message[6];
      000A4D 90 00 07         [24] 2293 	mov	dptr,#(_rx_message + 0x0006)
      000A50 E0               [24] 2294 	movx	a,@dptr
      000A51 FF               [12] 2295 	mov	r7,a
                                   2296 ;	isp.c:250: cfg_val = (cfg_val<<8) + rx_message[7];
      000A52 8F 10            [24] 2297 	mov	_cfg_val,r7
      000A54 8B 11            [24] 2298 	mov	(_cfg_val + 1),r3
      000A56 7E 00            [12] 2299 	mov	r6,#0x00
      000A58 90 00 08         [24] 2300 	mov	dptr,#(_rx_message + 0x0007)
      000A5B E0               [24] 2301 	movx	a,@dptr
      000A5C 7C 00            [12] 2302 	mov	r4,#0x00
      000A5E 2E               [12] 2303 	add	a,r6
      000A5F F5 10            [12] 2304 	mov	_cfg_val,a
      000A61 EC               [12] 2305 	mov	a,r4
      000A62 3F               [12] 2306 	addc	a,r7
      000A63 F5 11            [12] 2307 	mov	(_cfg_val + 1),a
                                   2308 ;	isp.c:251: p16c_isp_write_cfg (cfg_val, addr);
      000A65 C0 12            [24] 2309 	push	_addr
      000A67 C0 13            [24] 2310 	push	(_addr + 1)
      000A69 C0 14            [24] 2311 	push	(_addr + 2)
      000A6B C0 15            [24] 2312 	push	(_addr + 3)
      000A6D 85 10 82         [24] 2313 	mov	dpl,_cfg_val
      000A70 85 11 83         [24] 2314 	mov	dph,(_cfg_val + 1)
      000A73 12 1B 06         [24] 2315 	lcall	_p16c_isp_write_cfg
      000A76 E5 81            [12] 2316 	mov	a,sp
      000A78 24 FC            [12] 2317 	add	a,#0xfc
      000A7A F5 81            [12] 2318 	mov	sp,a
                                   2319 ;	isp.c:252: usart_tx_b (0xC4, TRUE);
      000A7C D2 F0            [12] 2320 	setb	b[0]
      000A7E 85 F0 21         [24] 2321 	mov	bits,b
      000A81 75 82 C4         [24] 2322 	mov	dpl,#0xc4
      000A84 12 1B F6         [24] 2323 	lcall	_usart_tx_b
                                   2324 ;	isp.c:253: rx_state = 0;
      000A87 75 0B 00         [24] 2325 	mov	_rx_state,#0x00
                                   2326 ;	isp.c:254: break;
      000A8A 02 0C 0A         [24] 2327 	ljmp	00148$
                                   2328 ;	isp.c:256: case 0x45: // p18q_write_single_cfg
      000A8D                       2329 00141$:
                                   2330 ;	isp.c:257: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000A8D 90 00 04         [24] 2331 	mov	dptr,#(_rx_message + 0x0003)
      000A90 E0               [24] 2332 	movx	a,@dptr
      000A91 FF               [12] 2333 	mov	r7,a
      000A92 7E 00            [12] 2334 	mov	r6,#0x00
      000A94 8E 04            [24] 2335 	mov	ar4,r6
      000A96 8F 05            [24] 2336 	mov	ar5,r7
      000A98 7F 00            [12] 2337 	mov	r7,#0x00
      000A9A 90 00 05         [24] 2338 	mov	dptr,#(_rx_message + 0x0004)
      000A9D E0               [24] 2339 	movx	a,@dptr
      000A9E F8               [12] 2340 	mov	r0,a
      000A9F 79 00            [12] 2341 	mov	r1,#0x00
      000AA1 7A 00            [12] 2342 	mov	r2,#0x00
      000AA3 8A 03            [24] 2343 	mov	ar3,r2
      000AA5 89 02            [24] 2344 	mov	ar2,r1
      000AA7 88 01            [24] 2345 	mov	ar1,r0
      000AA9 E4               [12] 2346 	clr	a
      000AAA 2F               [12] 2347 	add	a,r7
      000AAB FF               [12] 2348 	mov	r7,a
      000AAC E9               [12] 2349 	mov	a,r1
      000AAD 3E               [12] 2350 	addc	a,r6
      000AAE FE               [12] 2351 	mov	r6,a
      000AAF EA               [12] 2352 	mov	a,r2
      000AB0 3D               [12] 2353 	addc	a,r5
      000AB1 FD               [12] 2354 	mov	r5,a
      000AB2 EB               [12] 2355 	mov	a,r3
      000AB3 3C               [12] 2356 	addc	a,r4
      000AB4 FC               [12] 2357 	mov	r4,a
      000AB5 90 00 06         [24] 2358 	mov	dptr,#(_rx_message + 0x0005)
      000AB8 E0               [24] 2359 	movx	a,@dptr
      000AB9 F8               [12] 2360 	mov	r0,a
      000ABA E4               [12] 2361 	clr	a
      000ABB F9               [12] 2362 	mov	r1,a
      000ABC FB               [12] 2363 	mov	r3,a
      000ABD E8               [12] 2364 	mov	a,r0
      000ABE 2F               [12] 2365 	add	a,r7
      000ABF F5 12            [12] 2366 	mov	_addr,a
      000AC1 E9               [12] 2367 	mov	a,r1
      000AC2 3E               [12] 2368 	addc	a,r6
      000AC3 F5 13            [12] 2369 	mov	(_addr + 1),a
      000AC5 EA               [12] 2370 	mov	a,r2
      000AC6 3D               [12] 2371 	addc	a,r5
      000AC7 F5 14            [12] 2372 	mov	(_addr + 2),a
      000AC9 EB               [12] 2373 	mov	a,r3
      000ACA 3C               [12] 2374 	addc	a,r4
      000ACB F5 15            [12] 2375 	mov	(_addr + 3),a
                                   2376 ;	isp.c:258: cfg_val = rx_message[6];
      000ACD 90 00 07         [24] 2377 	mov	dptr,#(_rx_message + 0x0006)
      000AD0 E0               [24] 2378 	movx	a,@dptr
      000AD1 FF               [12] 2379 	mov	r7,a
                                   2380 ;	isp.c:259: cfg_val = (cfg_val<<8) + rx_message[7];
      000AD2 8F 10            [24] 2381 	mov	_cfg_val,r7
      000AD4 8B 11            [24] 2382 	mov	(_cfg_val + 1),r3
      000AD6 7E 00            [12] 2383 	mov	r6,#0x00
      000AD8 90 00 08         [24] 2384 	mov	dptr,#(_rx_message + 0x0007)
      000ADB E0               [24] 2385 	movx	a,@dptr
      000ADC 7C 00            [12] 2386 	mov	r4,#0x00
      000ADE 2E               [12] 2387 	add	a,r6
      000ADF F5 10            [12] 2388 	mov	_cfg_val,a
      000AE1 EC               [12] 2389 	mov	a,r4
      000AE2 3F               [12] 2390 	addc	a,r7
      000AE3 F5 11            [12] 2391 	mov	(_cfg_val + 1),a
                                   2392 ;	isp.c:260: p18q_isp_write_cfg (cfg_val, addr);
      000AE5 C0 12            [24] 2393 	push	_addr
      000AE7 C0 13            [24] 2394 	push	(_addr + 1)
      000AE9 C0 14            [24] 2395 	push	(_addr + 2)
      000AEB C0 15            [24] 2396 	push	(_addr + 3)
      000AED 85 10 82         [24] 2397 	mov	dpl,_cfg_val
      000AF0 85 11 83         [24] 2398 	mov	dph,(_cfg_val + 1)
      000AF3 12 1B B6         [24] 2399 	lcall	_p18q_isp_write_cfg
      000AF6 E5 81            [12] 2400 	mov	a,sp
      000AF8 24 FC            [12] 2401 	add	a,#0xfc
      000AFA F5 81            [12] 2402 	mov	sp,a
                                   2403 ;	isp.c:261: usart_tx_b (0xC5, TRUE);
      000AFC D2 F0            [12] 2404 	setb	b[0]
      000AFE 85 F0 21         [24] 2405 	mov	bits,b
      000B01 75 82 C5         [24] 2406 	mov	dpl,#0xc5
      000B04 12 1B F6         [24] 2407 	lcall	_usart_tx_b
                                   2408 ;	isp.c:262: rx_state = 0;
      000B07 75 0B 00         [24] 2409 	mov	_rx_state,#0x00
                                   2410 ;	isp.c:263: break;
      000B0A 02 0C 0A         [24] 2411 	ljmp	00148$
                                   2412 ;	isp.c:265: case 0x46: // p18q_write_page
      000B0D                       2413 00142$:
                                   2414 ;	isp.c:266: addr = (((unsigned long)(rx_message[3]))<<16) + (((unsigned long)(rx_message[4]))<<8) + (((unsigned long)(rx_message[5]))<<0);
      000B0D 90 00 04         [24] 2415 	mov	dptr,#(_rx_message + 0x0003)
      000B10 E0               [24] 2416 	movx	a,@dptr
      000B11 FF               [12] 2417 	mov	r7,a
      000B12 7E 00            [12] 2418 	mov	r6,#0x00
      000B14 8E 04            [24] 2419 	mov	ar4,r6
      000B16 8F 05            [24] 2420 	mov	ar5,r7
      000B18 7F 00            [12] 2421 	mov	r7,#0x00
      000B1A 90 00 05         [24] 2422 	mov	dptr,#(_rx_message + 0x0004)
      000B1D E0               [24] 2423 	movx	a,@dptr
      000B1E F8               [12] 2424 	mov	r0,a
      000B1F 79 00            [12] 2425 	mov	r1,#0x00
      000B21 7A 00            [12] 2426 	mov	r2,#0x00
      000B23 8A 03            [24] 2427 	mov	ar3,r2
      000B25 89 02            [24] 2428 	mov	ar2,r1
      000B27 88 01            [24] 2429 	mov	ar1,r0
      000B29 E4               [12] 2430 	clr	a
      000B2A 2F               [12] 2431 	add	a,r7
      000B2B FF               [12] 2432 	mov	r7,a
      000B2C E9               [12] 2433 	mov	a,r1
      000B2D 3E               [12] 2434 	addc	a,r6
      000B2E FE               [12] 2435 	mov	r6,a
      000B2F EA               [12] 2436 	mov	a,r2
      000B30 3D               [12] 2437 	addc	a,r5
      000B31 FD               [12] 2438 	mov	r5,a
      000B32 EB               [12] 2439 	mov	a,r3
      000B33 3C               [12] 2440 	addc	a,r4
      000B34 FC               [12] 2441 	mov	r4,a
      000B35 90 00 06         [24] 2442 	mov	dptr,#(_rx_message + 0x0005)
      000B38 E0               [24] 2443 	movx	a,@dptr
      000B39 F8               [12] 2444 	mov	r0,a
      000B3A E4               [12] 2445 	clr	a
      000B3B F9               [12] 2446 	mov	r1,a
      000B3C FB               [12] 2447 	mov	r3,a
      000B3D E8               [12] 2448 	mov	a,r0
      000B3E 2F               [12] 2449 	add	a,r7
      000B3F F5 12            [12] 2450 	mov	_addr,a
      000B41 E9               [12] 2451 	mov	a,r1
      000B42 3E               [12] 2452 	addc	a,r6
      000B43 F5 13            [12] 2453 	mov	(_addr + 1),a
      000B45 EA               [12] 2454 	mov	a,r2
      000B46 3D               [12] 2455 	addc	a,r5
      000B47 F5 14            [12] 2456 	mov	(_addr + 2),a
      000B49 EB               [12] 2457 	mov	a,r3
      000B4A 3C               [12] 2458 	addc	a,r4
      000B4B F5 15            [12] 2459 	mov	(_addr + 3),a
                                   2460 ;	isp.c:267: for (i=0;i<rx_message[2]/2;i++)
      000B4D 8F 09            [24] 2461 	mov	_i,r7
      000B4F                       2462 00182$:
      000B4F 90 00 03         [24] 2463 	mov	dptr,#(_rx_message + 0x0002)
      000B52 E0               [24] 2464 	movx	a,@dptr
      000B53 FF               [12] 2465 	mov	r7,a
      000B54 7E 00            [12] 2466 	mov	r6,#0x00
      000B56 74 02            [12] 2467 	mov	a,#0x02
      000B58 C0 E0            [24] 2468 	push	acc
      000B5A E4               [12] 2469 	clr	a
      000B5B C0 E0            [24] 2470 	push	acc
      000B5D 8F 82            [24] 2471 	mov	dpl,r7
      000B5F 8E 83            [24] 2472 	mov	dph,r6
      000B61 12 21 DA         [24] 2473 	lcall	__divsint
      000B64 AE 82            [24] 2474 	mov	r6,dpl
      000B66 AF 83            [24] 2475 	mov	r7,dph
      000B68 15 81            [12] 2476 	dec	sp
      000B6A 15 81            [12] 2477 	dec	sp
      000B6C AC 09            [24] 2478 	mov	r4,_i
      000B6E 7D 00            [12] 2479 	mov	r5,#0x00
      000B70 C3               [12] 2480 	clr	c
      000B71 EC               [12] 2481 	mov	a,r4
      000B72 9E               [12] 2482 	subb	a,r6
      000B73 ED               [12] 2483 	mov	a,r5
      000B74 64 80            [12] 2484 	xrl	a,#0x80
      000B76 8F F0            [24] 2485 	mov	b,r7
      000B78 63 F0 80         [24] 2486 	xrl	b,#0x80
      000B7B 95 F0            [12] 2487 	subb	a,b
      000B7D 50 51            [24] 2488 	jnc	00143$
                                   2489 ;	isp.c:268: flash_buffer[i] = (((unsigned int)(rx_message[(2*i)+1+6]))<<8) + (((unsigned int)(rx_message[(2*i)+0+6]))<<0);
      000B7F E5 09            [12] 2490 	mov	a,_i
      000B81 75 F0 02         [24] 2491 	mov	b,#0x02
      000B84 A4               [48] 2492 	mul	ab
      000B85 24 8D            [12] 2493 	add	a,#_flash_buffer
      000B87 FA               [12] 2494 	mov	r2,a
      000B88 74 00            [12] 2495 	mov	a,#(_flash_buffer >> 8)
      000B8A 35 F0            [12] 2496 	addc	a,b
      000B8C FB               [12] 2497 	mov	r3,a
      000B8D EC               [12] 2498 	mov	a,r4
      000B8E 2C               [12] 2499 	add	a,r4
      000B8F FC               [12] 2500 	mov	r4,a
      000B90 ED               [12] 2501 	mov	a,r5
      000B91 33               [12] 2502 	rlc	a
      000B92 FD               [12] 2503 	mov	r5,a
      000B93 74 07            [12] 2504 	mov	a,#0x07
      000B95 2C               [12] 2505 	add	a,r4
      000B96 F8               [12] 2506 	mov	r0,a
      000B97 E4               [12] 2507 	clr	a
      000B98 3D               [12] 2508 	addc	a,r5
      000B99 F9               [12] 2509 	mov	r1,a
      000B9A E8               [12] 2510 	mov	a,r0
      000B9B 24 01            [12] 2511 	add	a,#_rx_message
      000B9D F5 82            [12] 2512 	mov	dpl,a
      000B9F E9               [12] 2513 	mov	a,r1
      000BA0 34 00            [12] 2514 	addc	a,#(_rx_message >> 8)
      000BA2 F5 83            [12] 2515 	mov	dph,a
      000BA4 E0               [24] 2516 	movx	a,@dptr
      000BA5 F9               [12] 2517 	mov	r1,a
      000BA6 78 00            [12] 2518 	mov	r0,#0x00
      000BA8 74 06            [12] 2519 	mov	a,#0x06
      000BAA 2C               [12] 2520 	add	a,r4
      000BAB FC               [12] 2521 	mov	r4,a
      000BAC E4               [12] 2522 	clr	a
      000BAD 3D               [12] 2523 	addc	a,r5
      000BAE FD               [12] 2524 	mov	r5,a
      000BAF EC               [12] 2525 	mov	a,r4
      000BB0 24 01            [12] 2526 	add	a,#_rx_message
      000BB2 F5 82            [12] 2527 	mov	dpl,a
      000BB4 ED               [12] 2528 	mov	a,r5
      000BB5 34 00            [12] 2529 	addc	a,#(_rx_message >> 8)
      000BB7 F5 83            [12] 2530 	mov	dph,a
      000BB9 E0               [24] 2531 	movx	a,@dptr
      000BBA FD               [12] 2532 	mov	r5,a
      000BBB 7C 00            [12] 2533 	mov	r4,#0x00
      000BBD 28               [12] 2534 	add	a,r0
      000BBE F8               [12] 2535 	mov	r0,a
      000BBF EC               [12] 2536 	mov	a,r4
      000BC0 39               [12] 2537 	addc	a,r1
      000BC1 F9               [12] 2538 	mov	r1,a
      000BC2 8A 82            [24] 2539 	mov	dpl,r2
      000BC4 8B 83            [24] 2540 	mov	dph,r3
      000BC6 E8               [12] 2541 	mov	a,r0
      000BC7 F0               [24] 2542 	movx	@dptr,a
      000BC8 E9               [12] 2543 	mov	a,r1
      000BC9 A3               [24] 2544 	inc	dptr
      000BCA F0               [24] 2545 	movx	@dptr,a
                                   2546 ;	isp.c:267: for (i=0;i<rx_message[2]/2;i++)
      000BCB 05 09            [12] 2547 	inc	_i
      000BCD 02 0B 4F         [24] 2548 	ljmp	00182$
      000BD0                       2549 00143$:
                                   2550 ;	isp.c:269: p18q_isp_write_pgm (flash_buffer, addr, rx_message[2]/2);
      000BD0 C0 06            [24] 2551 	push	ar6
      000BD2 C0 12            [24] 2552 	push	_addr
      000BD4 C0 13            [24] 2553 	push	(_addr + 1)
      000BD6 C0 14            [24] 2554 	push	(_addr + 2)
      000BD8 C0 15            [24] 2555 	push	(_addr + 3)
      000BDA 90 00 8D         [24] 2556 	mov	dptr,#_flash_buffer
      000BDD 75 F0 00         [24] 2557 	mov	b,#0x00
      000BE0 12 1B 3E         [24] 2558 	lcall	_p18q_isp_write_pgm
      000BE3 E5 81            [12] 2559 	mov	a,sp
      000BE5 24 FB            [12] 2560 	add	a,#0xfb
      000BE7 F5 81            [12] 2561 	mov	sp,a
                                   2562 ;	isp.c:270: usart_tx_b (0xC6, TRUE);
      000BE9 D2 F0            [12] 2563 	setb	b[0]
      000BEB 85 F0 21         [24] 2564 	mov	bits,b
      000BEE 75 82 C6         [24] 2565 	mov	dpl,#0xc6
      000BF1 12 1B F6         [24] 2566 	lcall	_usart_tx_b
                                   2567 ;	isp.c:271: rx_state = 0;
      000BF4 75 0B 00         [24] 2568 	mov	_rx_state,#0x00
                                   2569 ;	isp.c:272: break;
                                   2570 ;	isp.c:274: case 0xff: // reboot to bootloader
      000BF7 80 11            [24] 2571 	sjmp	00148$
      000BF9                       2572 00144$:
                                   2573 ;	isp.c:275: USB_INT_EN = 0;
      000BF9 75 E1 00         [24] 2574 	mov	_USB_INT_EN,#0x00
                                   2575 ;	isp.c:276: USB_CTRL = 0x06;
      000BFC 75 E2 06         [24] 2576 	mov	_USB_CTRL,#0x06
                                   2577 ;	isp.c:277: DLY_ms(100);
      000BFF 90 00 64         [24] 2578 	mov	dptr,#0x0064
      000C02 12 1C 22         [24] 2579 	lcall	_DLY_ms
                                   2580 ;	isp.c:278: EA = 0;
                                   2581 ;	assignBit
      000C05 C2 AF            [12] 2582 	clr	_EA
                                   2583 ;	isp.c:279: __asm__ ("ljmp 0x3800");
      000C07 02 38 00         [24] 2584 	ljmp	0x3800
                                   2585 ;	isp.c:284: }
      000C0A                       2586 00148$:
                                   2587 ;	isp.c:288: PP14 = 0;
                                   2588 ;	assignBit
      000C0A C2 94            [12] 2589 	clr	_PP14
                                   2590 ;	isp.c:292: }
      000C0C 02 00 DB         [24] 2591 	ljmp	00152$
                                   2592 ;------------------------------------------------------------
                                   2593 ;Allocation info for local variables in function 'rx_state_machine'
                                   2594 ;------------------------------------------------------------
                                   2595 ;rx_char                   Allocated to stack - _bp -3
                                   2596 ;state                     Allocated to registers r7 
                                   2597 ;------------------------------------------------------------
                                   2598 ;	isp.c:294: unsigned char rx_state_machine (unsigned char state, unsigned char rx_char)
                                   2599 ;	-----------------------------------------
                                   2600 ;	 function rx_state_machine
                                   2601 ;	-----------------------------------------
      000C0F                       2602 _rx_state_machine:
      000C0F C0 1E            [24] 2603 	push	_bp
      000C11 85 81 1E         [24] 2604 	mov	_bp,sp
                                   2605 ;	isp.c:296: if (state==0)
      000C14 E5 82            [12] 2606 	mov	a,dpl
      000C16 FF               [12] 2607 	mov	r7,a
      000C17 70 12            [24] 2608 	jnz	00102$
                                   2609 ;	isp.c:299: rx_message[rx_message_ptr++] = rx_char;
      000C19 75 0C 01         [24] 2610 	mov	_rx_message_ptr,#0x01
      000C1C 90 00 01         [24] 2611 	mov	dptr,#_rx_message
      000C1F E5 1E            [12] 2612 	mov	a,_bp
      000C21 24 FD            [12] 2613 	add	a,#0xfd
      000C23 F8               [12] 2614 	mov	r0,a
      000C24 E6               [12] 2615 	mov	a,@r0
      000C25 F0               [24] 2616 	movx	@dptr,a
                                   2617 ;	isp.c:300: return 1;
      000C26 75 82 01         [24] 2618 	mov	dpl,#0x01
      000C29 80 4C            [24] 2619 	sjmp	00111$
      000C2B                       2620 00102$:
                                   2621 ;	isp.c:302: if (state==1)
      000C2B BF 01 27         [24] 2622 	cjne	r7,#0x01,00106$
                                   2623 ;	isp.c:304: bytes_to_receive = rx_char;
      000C2E E5 1E            [12] 2624 	mov	a,_bp
      000C30 24 FD            [12] 2625 	add	a,#0xfd
      000C32 F8               [12] 2626 	mov	r0,a
      000C33 86 06            [24] 2627 	mov	ar6,@r0
      000C35 8E 0A            [24] 2628 	mov	_bytes_to_receive,r6
                                   2629 ;	isp.c:305: rx_message[rx_message_ptr++] = rx_char;
      000C37 AD 0C            [24] 2630 	mov	r5,_rx_message_ptr
      000C39 05 0C            [12] 2631 	inc	_rx_message_ptr
      000C3B ED               [12] 2632 	mov	a,r5
      000C3C 24 01            [12] 2633 	add	a,#_rx_message
      000C3E F5 82            [12] 2634 	mov	dpl,a
      000C40 E4               [12] 2635 	clr	a
      000C41 34 00            [12] 2636 	addc	a,#(_rx_message >> 8)
      000C43 F5 83            [12] 2637 	mov	dph,a
      000C45 EE               [12] 2638 	mov	a,r6
      000C46 F0               [24] 2639 	movx	@dptr,a
                                   2640 ;	isp.c:306: if (bytes_to_receive==0) return 3;
      000C47 E5 0A            [12] 2641 	mov	a,_bytes_to_receive
      000C49 70 05            [24] 2642 	jnz	00104$
      000C4B 75 82 03         [24] 2643 	mov	dpl,#0x03
      000C4E 80 27            [24] 2644 	sjmp	00111$
      000C50                       2645 00104$:
                                   2646 ;	isp.c:307: return 2;
      000C50 75 82 02         [24] 2647 	mov	dpl,#0x02
      000C53 80 22            [24] 2648 	sjmp	00111$
      000C55                       2649 00106$:
                                   2650 ;	isp.c:309: if (state==2)
      000C55 BF 02 1D         [24] 2651 	cjne	r7,#0x02,00110$
                                   2652 ;	isp.c:311: rx_message[rx_message_ptr++] = rx_char;
      000C58 AE 0C            [24] 2653 	mov	r6,_rx_message_ptr
      000C5A 05 0C            [12] 2654 	inc	_rx_message_ptr
      000C5C EE               [12] 2655 	mov	a,r6
      000C5D 24 01            [12] 2656 	add	a,#_rx_message
      000C5F F5 82            [12] 2657 	mov	dpl,a
      000C61 E4               [12] 2658 	clr	a
      000C62 34 00            [12] 2659 	addc	a,#(_rx_message >> 8)
      000C64 F5 83            [12] 2660 	mov	dph,a
      000C66 E5 1E            [12] 2661 	mov	a,_bp
      000C68 24 FD            [12] 2662 	add	a,#0xfd
      000C6A F8               [12] 2663 	mov	r0,a
      000C6B E6               [12] 2664 	mov	a,@r0
      000C6C F0               [24] 2665 	movx	@dptr,a
                                   2666 ;	isp.c:312: bytes_to_receive--;
                                   2667 ;	isp.c:313: if (bytes_to_receive==0) return 3;
      000C6D D5 0A 05         [24] 2668 	djnz	_bytes_to_receive,00110$
      000C70 75 82 03         [24] 2669 	mov	dpl,#0x03
      000C73 80 02            [24] 2670 	sjmp	00111$
      000C75                       2671 00110$:
                                   2672 ;	isp.c:315: return state;
      000C75 8F 82            [24] 2673 	mov	dpl,r7
      000C77                       2674 00111$:
                                   2675 ;	isp.c:316: }
      000C77 D0 1E            [24] 2676 	pop	_bp
      000C79 22               [24] 2677 	ret
                                   2678 ;------------------------------------------------------------
                                   2679 ;Allocation info for local variables in function 'isp_read_pgm'
                                   2680 ;------------------------------------------------------------
                                   2681 ;num_words                 Allocated to stack - _bp -3
                                   2682 ;data                      Allocated to stack - _bp +1
                                   2683 ;i                         Allocated to registers r4 
                                   2684 ;------------------------------------------------------------
                                   2685 ;	isp.c:319: void isp_read_pgm (unsigned int *data, unsigned char num_words) {
                                   2686 ;	-----------------------------------------
                                   2687 ;	 function isp_read_pgm
                                   2688 ;	-----------------------------------------
      000C7A                       2689 _isp_read_pgm:
      000C7A C0 1E            [24] 2690 	push	_bp
      000C7C 85 81 1E         [24] 2691 	mov	_bp,sp
      000C7F C0 82            [24] 2692 	push	dpl
      000C81 C0 83            [24] 2693 	push	dph
      000C83 C0 F0            [24] 2694 	push	b
                                   2695 ;	isp.c:323: for (i = 0; i < num_words; i++) {
      000C85 7C 00            [12] 2696 	mov	r4,#0x00
      000C87                       2697 00103$:
      000C87 E5 1E            [12] 2698 	mov	a,_bp
      000C89 24 FD            [12] 2699 	add	a,#0xfd
      000C8B F8               [12] 2700 	mov	r0,a
      000C8C C3               [12] 2701 	clr	c
      000C8D EC               [12] 2702 	mov	a,r4
      000C8E 96               [12] 2703 	subb	a,@r0
      000C8F 50 5E            [24] 2704 	jnc	00105$
                                   2705 ;	isp.c:324: isp_send(0x04, 6);
      000C91 C0 04            [24] 2706 	push	ar4
      000C93 74 06            [12] 2707 	mov	a,#0x06
      000C95 C0 E0            [24] 2708 	push	acc
      000C97 90 00 04         [24] 2709 	mov	dptr,#0x0004
      000C9A 12 10 0F         [24] 2710 	lcall	_isp_send
      000C9D 15 81            [12] 2711 	dec	sp
      000C9F D0 04            [24] 2712 	pop	ar4
                                   2713 ;	isp.c:325: data[i] = isp_read_14s();
      000CA1 EC               [12] 2714 	mov	a,r4
      000CA2 75 F0 02         [24] 2715 	mov	b,#0x02
      000CA5 A4               [48] 2716 	mul	ab
      000CA6 FA               [12] 2717 	mov	r2,a
      000CA7 AB F0            [24] 2718 	mov	r3,b
      000CA9 A8 1E            [24] 2719 	mov	r0,_bp
      000CAB 08               [12] 2720 	inc	r0
      000CAC EA               [12] 2721 	mov	a,r2
      000CAD 26               [12] 2722 	add	a,@r0
      000CAE FA               [12] 2723 	mov	r2,a
      000CAF EB               [12] 2724 	mov	a,r3
      000CB0 08               [12] 2725 	inc	r0
      000CB1 36               [12] 2726 	addc	a,@r0
      000CB2 FB               [12] 2727 	mov	r3,a
      000CB3 08               [12] 2728 	inc	r0
      000CB4 86 07            [24] 2729 	mov	ar7,@r0
      000CB6 C0 07            [24] 2730 	push	ar7
      000CB8 C0 04            [24] 2731 	push	ar4
      000CBA C0 03            [24] 2732 	push	ar3
      000CBC C0 02            [24] 2733 	push	ar2
      000CBE 12 0F F5         [24] 2734 	lcall	_isp_read_14s
      000CC1 AD 82            [24] 2735 	mov	r5,dpl
      000CC3 AE 83            [24] 2736 	mov	r6,dph
      000CC5 D0 02            [24] 2737 	pop	ar2
      000CC7 D0 03            [24] 2738 	pop	ar3
      000CC9 D0 04            [24] 2739 	pop	ar4
      000CCB D0 07            [24] 2740 	pop	ar7
      000CCD 8A 82            [24] 2741 	mov	dpl,r2
      000CCF 8B 83            [24] 2742 	mov	dph,r3
      000CD1 8F F0            [24] 2743 	mov	b,r7
      000CD3 ED               [12] 2744 	mov	a,r5
      000CD4 12 21 A3         [24] 2745 	lcall	__gptrput
      000CD7 A3               [24] 2746 	inc	dptr
      000CD8 EE               [12] 2747 	mov	a,r6
      000CD9 12 21 A3         [24] 2748 	lcall	__gptrput
                                   2749 ;	isp.c:326: isp_send(0x06, 6);
      000CDC C0 04            [24] 2750 	push	ar4
      000CDE 74 06            [12] 2751 	mov	a,#0x06
      000CE0 C0 E0            [24] 2752 	push	acc
      000CE2 90 00 06         [24] 2753 	mov	dptr,#0x0006
      000CE5 12 10 0F         [24] 2754 	lcall	_isp_send
      000CE8 15 81            [12] 2755 	dec	sp
      000CEA D0 04            [24] 2756 	pop	ar4
                                   2757 ;	isp.c:323: for (i = 0; i < num_words; i++) {
      000CEC 0C               [12] 2758 	inc	r4
      000CED 80 98            [24] 2759 	sjmp	00103$
      000CEF                       2760 00105$:
                                   2761 ;	isp.c:328: }
      000CEF 85 1E 81         [24] 2762 	mov	sp,_bp
      000CF2 D0 1E            [24] 2763 	pop	_bp
      000CF4 22               [24] 2764 	ret
                                   2765 ;------------------------------------------------------------
                                   2766 ;Allocation info for local variables in function 'isp_read_eeprom'
                                   2767 ;------------------------------------------------------------
                                   2768 ;n                         Allocated to stack - _bp -3
                                   2769 ;t                         Allocated to stack - _bp -4
                                   2770 ;data                      Allocated to stack - _bp +1
                                   2771 ;i                         Allocated to stack - _bp +4
                                   2772 ;------------------------------------------------------------
                                   2773 ;	isp.c:331: void isp_read_eeprom (unsigned char *data, unsigned char n, unsigned char t) {
                                   2774 ;	-----------------------------------------
                                   2775 ;	 function isp_read_eeprom
                                   2776 ;	-----------------------------------------
      000CF5                       2777 _isp_read_eeprom:
      000CF5 C0 1E            [24] 2778 	push	_bp
      000CF7 85 81 1E         [24] 2779 	mov	_bp,sp
      000CFA C0 82            [24] 2780 	push	dpl
      000CFC C0 83            [24] 2781 	push	dph
      000CFE C0 F0            [24] 2782 	push	b
      000D00 05 81            [12] 2783 	inc	sp
                                   2784 ;	isp.c:335: for (i = 0; i < n; i++) {
      000D02 E5 1E            [12] 2785 	mov	a,_bp
      000D04 24 FC            [12] 2786 	add	a,#0xfc
      000D06 F8               [12] 2787 	mov	r0,a
      000D07 E4               [12] 2788 	clr	a
      000D08 B6 61 01         [24] 2789 	cjne	@r0,#0x61,00129$
      000D0B 04               [12] 2790 	inc	a
      000D0C                       2791 00129$:
      000D0C FC               [12] 2792 	mov	r4,a
      000D0D E5 1E            [12] 2793 	mov	a,_bp
      000D0F 24 FC            [12] 2794 	add	a,#0xfc
      000D11 F8               [12] 2795 	mov	r0,a
      000D12 E4               [12] 2796 	clr	a
      000D13 B6 64 01         [24] 2797 	cjne	@r0,#0x64,00131$
      000D16 04               [12] 2798 	inc	a
      000D17                       2799 00131$:
      000D17 FB               [12] 2800 	mov	r3,a
      000D18 E5 1E            [12] 2801 	mov	a,_bp
      000D1A 24 04            [12] 2802 	add	a,#0x04
      000D1C F8               [12] 2803 	mov	r0,a
      000D1D 76 00            [12] 2804 	mov	@r0,#0x00
      000D1F                       2805 00108$:
      000D1F E5 1E            [12] 2806 	mov	a,_bp
      000D21 24 04            [12] 2807 	add	a,#0x04
      000D23 F8               [12] 2808 	mov	r0,a
      000D24 E5 1E            [12] 2809 	mov	a,_bp
      000D26 24 FD            [12] 2810 	add	a,#0xfd
      000D28 F9               [12] 2811 	mov	r1,a
      000D29 C3               [12] 2812 	clr	c
      000D2A E6               [12] 2813 	mov	a,@r0
      000D2B 97               [12] 2814 	subb	a,@r1
      000D2C 40 03            [24] 2815 	jc	00133$
      000D2E 02 0D B3         [24] 2816 	ljmp	00110$
      000D31                       2817 00133$:
                                   2818 ;	isp.c:336: if (t == 'a')
      000D31 EC               [12] 2819 	mov	a,r4
      000D32 60 16            [24] 2820 	jz	00104$
                                   2821 ;	isp.c:337: isp_send(0x05, 6); // read from data mem _A
      000D34 C0 04            [24] 2822 	push	ar4
      000D36 C0 03            [24] 2823 	push	ar3
      000D38 74 06            [12] 2824 	mov	a,#0x06
      000D3A C0 E0            [24] 2825 	push	acc
      000D3C 90 00 05         [24] 2826 	mov	dptr,#0x0005
      000D3F 12 10 0F         [24] 2827 	lcall	_isp_send
      000D42 15 81            [12] 2828 	dec	sp
      000D44 D0 03            [24] 2829 	pop	ar3
      000D46 D0 04            [24] 2830 	pop	ar4
      000D48 80 17            [24] 2831 	sjmp	00105$
      000D4A                       2832 00104$:
                                   2833 ;	isp.c:338: else if (t == 'd')
      000D4A EB               [12] 2834 	mov	a,r3
      000D4B 60 14            [24] 2835 	jz	00105$
                                   2836 ;	isp.c:339: isp_send(0x04, 6); // read _D
      000D4D C0 04            [24] 2837 	push	ar4
      000D4F C0 03            [24] 2838 	push	ar3
      000D51 74 06            [12] 2839 	mov	a,#0x06
      000D53 C0 E0            [24] 2840 	push	acc
      000D55 90 00 04         [24] 2841 	mov	dptr,#0x0004
      000D58 12 10 0F         [24] 2842 	lcall	_isp_send
      000D5B 15 81            [12] 2843 	dec	sp
      000D5D D0 03            [24] 2844 	pop	ar3
      000D5F D0 04            [24] 2845 	pop	ar4
      000D61                       2846 00105$:
                                   2847 ;	isp.c:340: data[i] = (unsigned char)(isp_read_14s() & 0xff); // only 8 lsb is valid data - data(8) zero(6)
      000D61 C0 03            [24] 2848 	push	ar3
      000D63 A8 1E            [24] 2849 	mov	r0,_bp
      000D65 08               [12] 2850 	inc	r0
      000D66 E5 1E            [12] 2851 	mov	a,_bp
      000D68 24 04            [12] 2852 	add	a,#0x04
      000D6A F9               [12] 2853 	mov	r1,a
      000D6B E7               [12] 2854 	mov	a,@r1
      000D6C 26               [12] 2855 	add	a,@r0
      000D6D FB               [12] 2856 	mov	r3,a
      000D6E E4               [12] 2857 	clr	a
      000D6F 08               [12] 2858 	inc	r0
      000D70 36               [12] 2859 	addc	a,@r0
      000D71 FE               [12] 2860 	mov	r6,a
      000D72 08               [12] 2861 	inc	r0
      000D73 86 07            [24] 2862 	mov	ar7,@r0
      000D75 C0 07            [24] 2863 	push	ar7
      000D77 C0 06            [24] 2864 	push	ar6
      000D79 C0 04            [24] 2865 	push	ar4
      000D7B C0 03            [24] 2866 	push	ar3
      000D7D 12 0F F5         [24] 2867 	lcall	_isp_read_14s
      000D80 AA 82            [24] 2868 	mov	r2,dpl
      000D82 D0 03            [24] 2869 	pop	ar3
      000D84 D0 04            [24] 2870 	pop	ar4
      000D86 D0 06            [24] 2871 	pop	ar6
      000D88 D0 07            [24] 2872 	pop	ar7
      000D8A 8B 82            [24] 2873 	mov	dpl,r3
      000D8C 8E 83            [24] 2874 	mov	dph,r6
      000D8E 8F F0            [24] 2875 	mov	b,r7
      000D90 EA               [12] 2876 	mov	a,r2
      000D91 12 21 A3         [24] 2877 	lcall	__gptrput
                                   2878 ;	isp.c:341: isp_send(0x06, 6); // inc address
      000D94 C0 04            [24] 2879 	push	ar4
      000D96 C0 03            [24] 2880 	push	ar3
      000D98 74 06            [12] 2881 	mov	a,#0x06
      000D9A C0 E0            [24] 2882 	push	acc
      000D9C 90 00 06         [24] 2883 	mov	dptr,#0x0006
      000D9F 12 10 0F         [24] 2884 	lcall	_isp_send
      000DA2 15 81            [12] 2885 	dec	sp
      000DA4 D0 03            [24] 2886 	pop	ar3
      000DA6 D0 04            [24] 2887 	pop	ar4
                                   2888 ;	isp.c:335: for (i = 0; i < n; i++) {
      000DA8 E5 1E            [12] 2889 	mov	a,_bp
      000DAA 24 04            [12] 2890 	add	a,#0x04
      000DAC F8               [12] 2891 	mov	r0,a
      000DAD 06               [12] 2892 	inc	@r0
      000DAE D0 03            [24] 2893 	pop	ar3
      000DB0 02 0D 1F         [24] 2894 	ljmp	00108$
      000DB3                       2895 00110$:
                                   2896 ;	isp.c:343: }
      000DB3 85 1E 81         [24] 2897 	mov	sp,_bp
      000DB6 D0 1E            [24] 2898 	pop	_bp
      000DB8 22               [24] 2899 	ret
                                   2900 ;------------------------------------------------------------
                                   2901 ;Allocation info for local variables in function 'isp_write_pgm'
                                   2902 ;------------------------------------------------------------
                                   2903 ;n                         Allocated to stack - _bp -3
                                   2904 ;slow                      Allocated to stack - _bp -4
                                   2905 ;data                      Allocated to stack - _bp +1
                                   2906 ;i                         Allocated to registers r4 
                                   2907 ;------------------------------------------------------------
                                   2908 ;	isp.c:357: void isp_write_pgm (unsigned int *data, unsigned char n, unsigned char slow) {
                                   2909 ;	-----------------------------------------
                                   2910 ;	 function isp_write_pgm
                                   2911 ;	-----------------------------------------
      000DB9                       2912 _isp_write_pgm:
      000DB9 C0 1E            [24] 2913 	push	_bp
      000DBB 85 81 1E         [24] 2914 	mov	_bp,sp
      000DBE C0 82            [24] 2915 	push	dpl
      000DC0 C0 83            [24] 2916 	push	dph
      000DC2 C0 F0            [24] 2917 	push	b
                                   2918 ;	isp.c:361: for (i = 0; i < n; i++) {
      000DC4 7C 00            [12] 2919 	mov	r4,#0x00
      000DC6                       2920 00108$:
      000DC6 E5 1E            [12] 2921 	mov	a,_bp
      000DC8 24 FD            [12] 2922 	add	a,#0xfd
      000DCA F8               [12] 2923 	mov	r0,a
      000DCB C3               [12] 2924 	clr	c
      000DCC EC               [12] 2925 	mov	a,r4
      000DCD 96               [12] 2926 	subb	a,@r0
      000DCE 40 03            [24] 2927 	jc	00129$
      000DD0 02 0E 4C         [24] 2928 	ljmp	00103$
      000DD3                       2929 00129$:
                                   2930 ;	isp.c:362: isp_send(0x02, 6); // load data cmd
      000DD3 C0 04            [24] 2931 	push	ar4
      000DD5 74 06            [12] 2932 	mov	a,#0x06
      000DD7 C0 E0            [24] 2933 	push	acc
      000DD9 90 00 02         [24] 2934 	mov	dptr,#0x0002
      000DDC 12 10 0F         [24] 2935 	lcall	_isp_send
      000DDF 15 81            [12] 2936 	dec	sp
      000DE1 D0 04            [24] 2937 	pop	ar4
                                   2938 ;	isp.c:363: isp_send(data[i] << 1, 16); // data
      000DE3 EC               [12] 2939 	mov	a,r4
      000DE4 75 F0 02         [24] 2940 	mov	b,#0x02
      000DE7 A4               [48] 2941 	mul	ab
      000DE8 FA               [12] 2942 	mov	r2,a
      000DE9 AB F0            [24] 2943 	mov	r3,b
      000DEB A8 1E            [24] 2944 	mov	r0,_bp
      000DED 08               [12] 2945 	inc	r0
      000DEE EA               [12] 2946 	mov	a,r2
      000DEF 26               [12] 2947 	add	a,@r0
      000DF0 FA               [12] 2948 	mov	r2,a
      000DF1 EB               [12] 2949 	mov	a,r3
      000DF2 08               [12] 2950 	inc	r0
      000DF3 36               [12] 2951 	addc	a,@r0
      000DF4 FB               [12] 2952 	mov	r3,a
      000DF5 08               [12] 2953 	inc	r0
      000DF6 86 07            [24] 2954 	mov	ar7,@r0
      000DF8 8A 82            [24] 2955 	mov	dpl,r2
      000DFA 8B 83            [24] 2956 	mov	dph,r3
      000DFC 8F F0            [24] 2957 	mov	b,r7
      000DFE 12 21 BE         [24] 2958 	lcall	__gptrget
      000E01 FA               [12] 2959 	mov	r2,a
      000E02 A3               [24] 2960 	inc	dptr
      000E03 12 21 BE         [24] 2961 	lcall	__gptrget
      000E06 FB               [12] 2962 	mov	r3,a
      000E07 EA               [12] 2963 	mov	a,r2
      000E08 2A               [12] 2964 	add	a,r2
      000E09 F5 82            [12] 2965 	mov	dpl,a
      000E0B EB               [12] 2966 	mov	a,r3
      000E0C 33               [12] 2967 	rlc	a
      000E0D F5 83            [12] 2968 	mov	dph,a
      000E0F C0 04            [24] 2969 	push	ar4
      000E11 74 10            [12] 2970 	mov	a,#0x10
      000E13 C0 E0            [24] 2971 	push	acc
      000E15 12 10 0F         [24] 2972 	lcall	_isp_send
      000E18 15 81            [12] 2973 	dec	sp
      000E1A D0 04            [24] 2974 	pop	ar4
                                   2975 ;	isp.c:364: if (i != (n - 1))
      000E1C E5 1E            [12] 2976 	mov	a,_bp
      000E1E 24 FD            [12] 2977 	add	a,#0xfd
      000E20 F8               [12] 2978 	mov	r0,a
      000E21 86 06            [24] 2979 	mov	ar6,@r0
      000E23 7F 00            [12] 2980 	mov	r7,#0x00
      000E25 1E               [12] 2981 	dec	r6
      000E26 BE FF 01         [24] 2982 	cjne	r6,#0xff,00130$
      000E29 1F               [12] 2983 	dec	r7
      000E2A                       2984 00130$:
      000E2A 8C 03            [24] 2985 	mov	ar3,r4
      000E2C 7D 00            [12] 2986 	mov	r5,#0x00
      000E2E EB               [12] 2987 	mov	a,r3
      000E2F B5 06 06         [24] 2988 	cjne	a,ar6,00131$
      000E32 ED               [12] 2989 	mov	a,r5
      000E33 B5 07 02         [24] 2990 	cjne	a,ar7,00131$
      000E36 80 10            [24] 2991 	sjmp	00109$
      000E38                       2992 00131$:
                                   2993 ;	isp.c:365: isp_send(0x06, 6); // inc PC pointer
      000E38 C0 04            [24] 2994 	push	ar4
      000E3A 74 06            [12] 2995 	mov	a,#0x06
      000E3C C0 E0            [24] 2996 	push	acc
      000E3E 90 00 06         [24] 2997 	mov	dptr,#0x0006
      000E41 12 10 0F         [24] 2998 	lcall	_isp_send
      000E44 15 81            [12] 2999 	dec	sp
      000E46 D0 04            [24] 3000 	pop	ar4
      000E48                       3001 00109$:
                                   3002 ;	isp.c:361: for (i = 0; i < n; i++) {
      000E48 0C               [12] 3003 	inc	r4
      000E49 02 0D C6         [24] 3004 	ljmp	00108$
      000E4C                       3005 00103$:
                                   3006 ;	isp.c:367: isp_send(0x08, 6); // begin internal programming cmd, Tpint
      000E4C 74 06            [12] 3007 	mov	a,#0x06
      000E4E C0 E0            [24] 3008 	push	acc
      000E50 90 00 08         [24] 3009 	mov	dptr,#0x0008
      000E53 12 10 0F         [24] 3010 	lcall	_isp_send
      000E56 15 81            [12] 3011 	dec	sp
                                   3012 ;	isp.c:368: if (slow == 1) // config words
      000E58 E5 1E            [12] 3013 	mov	a,_bp
      000E5A 24 FC            [12] 3014 	add	a,#0xfc
      000E5C F8               [12] 3015 	mov	r0,a
      000E5D B6 01 08         [24] 3016 	cjne	@r0,#0x01,00105$
                                   3017 ;	isp.c:369: DLY_ms(5);
      000E60 90 00 05         [24] 3018 	mov	dptr,#0x0005
      000E63 12 1C 22         [24] 3019 	lcall	_DLY_ms
      000E66 80 06            [24] 3020 	sjmp	00106$
      000E68                       3021 00105$:
                                   3022 ;	isp.c:371: DLY_ms(3);
      000E68 90 00 03         [24] 3023 	mov	dptr,#0x0003
      000E6B 12 1C 22         [24] 3024 	lcall	_DLY_ms
      000E6E                       3025 00106$:
                                   3026 ;	isp.c:372: isp_send(0x06, 6); // inc PC pointer
      000E6E 74 06            [12] 3027 	mov	a,#0x06
      000E70 C0 E0            [24] 3028 	push	acc
      000E72 90 00 06         [24] 3029 	mov	dptr,#0x0006
      000E75 12 10 0F         [24] 3030 	lcall	_isp_send
      000E78 15 81            [12] 3031 	dec	sp
                                   3032 ;	isp.c:373: }
      000E7A 85 1E 81         [24] 3033 	mov	sp,_bp
      000E7D D0 1E            [24] 3034 	pop	_bp
      000E7F 22               [24] 3035 	ret
                                   3036 ;------------------------------------------------------------
                                   3037 ;Allocation info for local variables in function 'isp_send_config'
                                   3038 ;------------------------------------------------------------
                                   3039 ;data                      Allocated to registers r6 r7 
                                   3040 ;------------------------------------------------------------
                                   3041 ;	isp.c:375: void isp_send_config (unsigned int data)
                                   3042 ;	-----------------------------------------
                                   3043 ;	 function isp_send_config
                                   3044 ;	-----------------------------------------
      000E80                       3045 _isp_send_config:
      000E80 AE 82            [24] 3046 	mov	r6,dpl
      000E82 AF 83            [24] 3047 	mov	r7,dph
                                   3048 ;	isp.c:377: isp_send(0x00,6);
      000E84 C0 07            [24] 3049 	push	ar7
      000E86 C0 06            [24] 3050 	push	ar6
      000E88 74 06            [12] 3051 	mov	a,#0x06
      000E8A C0 E0            [24] 3052 	push	acc
      000E8C 90 00 00         [24] 3053 	mov	dptr,#0x0000
      000E8F 12 10 0F         [24] 3054 	lcall	_isp_send
      000E92 15 81            [12] 3055 	dec	sp
      000E94 D0 06            [24] 3056 	pop	ar6
      000E96 D0 07            [24] 3057 	pop	ar7
                                   3058 ;	isp.c:378: isp_send(data,16);
      000E98 74 10            [12] 3059 	mov	a,#0x10
      000E9A C0 E0            [24] 3060 	push	acc
      000E9C 8E 82            [24] 3061 	mov	dpl,r6
      000E9E 8F 83            [24] 3062 	mov	dph,r7
      000EA0 12 10 0F         [24] 3063 	lcall	_isp_send
      000EA3 15 81            [12] 3064 	dec	sp
                                   3065 ;	isp.c:379: }
      000EA5 22               [24] 3066 	ret
                                   3067 ;------------------------------------------------------------
                                   3068 ;Allocation info for local variables in function 'isp_mass_erase'
                                   3069 ;------------------------------------------------------------
                                   3070 ;	isp.c:381: void isp_mass_erase (void) {
                                   3071 ;	-----------------------------------------
                                   3072 ;	 function isp_mass_erase
                                   3073 ;	-----------------------------------------
      000EA6                       3074 _isp_mass_erase:
                                   3075 ;	isp.c:385: isp_send_config(0);
      000EA6 90 00 00         [24] 3076 	mov	dptr,#0x0000
      000EA9 12 0E 80         [24] 3077 	lcall	_isp_send_config
                                   3078 ;	isp.c:386: isp_send(0x09, 6);
      000EAC 74 06            [12] 3079 	mov	a,#0x06
      000EAE C0 E0            [24] 3080 	push	acc
      000EB0 90 00 09         [24] 3081 	mov	dptr,#0x0009
      000EB3 12 10 0F         [24] 3082 	lcall	_isp_send
      000EB6 15 81            [12] 3083 	dec	sp
                                   3084 ;	isp.c:387: DLY_ms(10); // consult Terab in mem prog manual
      000EB8 90 00 0A         [24] 3085 	mov	dptr,#0x000a
                                   3086 ;	isp.c:390: }
      000EBB 02 1C 22         [24] 3087 	ljmp	_DLY_ms
                                   3088 ;------------------------------------------------------------
                                   3089 ;Allocation info for local variables in function 'isp_reset_pointer'
                                   3090 ;------------------------------------------------------------
                                   3091 ;	isp.c:394: void isp_reset_pointer (void)
                                   3092 ;	-----------------------------------------
                                   3093 ;	 function isp_reset_pointer
                                   3094 ;	-----------------------------------------
      000EBE                       3095 _isp_reset_pointer:
                                   3096 ;	isp.c:397: isp_send(0x16,6);
      000EBE 74 06            [12] 3097 	mov	a,#0x06
      000EC0 C0 E0            [24] 3098 	push	acc
      000EC2 90 00 16         [24] 3099 	mov	dptr,#0x0016
      000EC5 12 10 0F         [24] 3100 	lcall	_isp_send
      000EC8 15 81            [12] 3101 	dec	sp
                                   3102 ;	isp.c:398: }
      000ECA 22               [24] 3103 	ret
                                   3104 ;------------------------------------------------------------
                                   3105 ;Allocation info for local variables in function 'isp_reset_pointer_16d'
                                   3106 ;------------------------------------------------------------
                                   3107 ;	isp.c:400: void isp_reset_pointer_16d (void)
                                   3108 ;	-----------------------------------------
                                   3109 ;	 function isp_reset_pointer_16d
                                   3110 ;	-----------------------------------------
      000ECB                       3111 _isp_reset_pointer_16d:
                                   3112 ;	isp.c:403: isp_send(0x1D,6);
      000ECB 74 06            [12] 3113 	mov	a,#0x06
      000ECD C0 E0            [24] 3114 	push	acc
      000ECF 90 00 1D         [24] 3115 	mov	dptr,#0x001d
      000ED2 12 10 0F         [24] 3116 	lcall	_isp_send
      000ED5 15 81            [12] 3117 	dec	sp
                                   3118 ;	isp.c:404: isp_send(0x0,8);
      000ED7 74 08            [12] 3119 	mov	a,#0x08
      000ED9 C0 E0            [24] 3120 	push	acc
      000EDB 90 00 00         [24] 3121 	mov	dptr,#0x0000
      000EDE 12 10 0F         [24] 3122 	lcall	_isp_send
      000EE1 15 81            [12] 3123 	dec	sp
                                   3124 ;	isp.c:405: isp_send(0x0,8);
      000EE3 74 08            [12] 3125 	mov	a,#0x08
      000EE5 C0 E0            [24] 3126 	push	acc
      000EE7 90 00 00         [24] 3127 	mov	dptr,#0x0000
      000EEA 12 10 0F         [24] 3128 	lcall	_isp_send
      000EED 15 81            [12] 3129 	dec	sp
                                   3130 ;	isp.c:406: isp_send(0x0,8);
      000EEF 74 08            [12] 3131 	mov	a,#0x08
      000EF1 C0 E0            [24] 3132 	push	acc
      000EF3 90 00 00         [24] 3133 	mov	dptr,#0x0000
      000EF6 12 10 0F         [24] 3134 	lcall	_isp_send
      000EF9 15 81            [12] 3135 	dec	sp
                                   3136 ;	isp.c:407: }
      000EFB 22               [24] 3137 	ret
                                   3138 ;------------------------------------------------------------
                                   3139 ;Allocation info for local variables in function 'isp_set_pointer_16d'
                                   3140 ;------------------------------------------------------------
                                   3141 ;addr                      Allocated to registers r4 r5 r6 r7 
                                   3142 ;------------------------------------------------------------
                                   3143 ;	isp.c:409: void isp_set_pointer_16d(uint32_t addr)
                                   3144 ;	-----------------------------------------
                                   3145 ;	 function isp_set_pointer_16d
                                   3146 ;	-----------------------------------------
      000EFC                       3147 _isp_set_pointer_16d:
      000EFC AC 82            [24] 3148 	mov	r4,dpl
      000EFE AD 83            [24] 3149 	mov	r5,dph
      000F00 AE F0            [24] 3150 	mov	r6,b
      000F02 FF               [12] 3151 	mov	r7,a
                                   3152 ;	isp.c:416: addr = addr << 1;
      000F03 EC               [12] 3153 	mov	a,r4
      000F04 2C               [12] 3154 	add	a,r4
      000F05 FC               [12] 3155 	mov	r4,a
      000F06 ED               [12] 3156 	mov	a,r5
      000F07 33               [12] 3157 	rlc	a
      000F08 FD               [12] 3158 	mov	r5,a
      000F09 EE               [12] 3159 	mov	a,r6
      000F0A 33               [12] 3160 	rlc	a
      000F0B FE               [12] 3161 	mov	r6,a
      000F0C EF               [12] 3162 	mov	a,r7
      000F0D 33               [12] 3163 	rlc	a
      000F0E FF               [12] 3164 	mov	r7,a
                                   3165 ;	isp.c:418: isp_send(0x1D,6);
      000F0F C0 07            [24] 3166 	push	ar7
      000F11 C0 06            [24] 3167 	push	ar6
      000F13 C0 05            [24] 3168 	push	ar5
      000F15 C0 04            [24] 3169 	push	ar4
      000F17 74 06            [12] 3170 	mov	a,#0x06
      000F19 C0 E0            [24] 3171 	push	acc
      000F1B 90 00 1D         [24] 3172 	mov	dptr,#0x001d
      000F1E 12 10 0F         [24] 3173 	lcall	_isp_send
      000F21 15 81            [12] 3174 	dec	sp
      000F23 D0 04            [24] 3175 	pop	ar4
                                   3176 ;	isp.c:419: isp_send(addr & 0xff,8); // 0 + lsb
      000F25 8C 02            [24] 3177 	mov	ar2,r4
      000F27 8A 82            [24] 3178 	mov	dpl,r2
      000F29 75 83 00         [24] 3179 	mov	dph,#0x00
      000F2C C0 04            [24] 3180 	push	ar4
      000F2E 74 08            [12] 3181 	mov	a,#0x08
      000F30 C0 E0            [24] 3182 	push	acc
      000F32 12 10 0F         [24] 3183 	lcall	_isp_send
      000F35 15 81            [12] 3184 	dec	sp
      000F37 D0 04            [24] 3185 	pop	ar4
      000F39 D0 05            [24] 3186 	pop	ar5
                                   3187 ;	isp.c:420: isp_send((addr >> 8) & 0xff,8);
      000F3B 8D 02            [24] 3188 	mov	ar2,r5
      000F3D 8A 82            [24] 3189 	mov	dpl,r2
      000F3F 75 83 00         [24] 3190 	mov	dph,#0x00
      000F42 C0 05            [24] 3191 	push	ar5
      000F44 C0 04            [24] 3192 	push	ar4
      000F46 74 08            [12] 3193 	mov	a,#0x08
      000F48 C0 E0            [24] 3194 	push	acc
      000F4A 12 10 0F         [24] 3195 	lcall	_isp_send
      000F4D 15 81            [12] 3196 	dec	sp
      000F4F D0 04            [24] 3197 	pop	ar4
      000F51 D0 05            [24] 3198 	pop	ar5
      000F53 D0 06            [24] 3199 	pop	ar6
      000F55 D0 07            [24] 3200 	pop	ar7
                                   3201 ;	isp.c:421: isp_send((addr >> 16) & 0xff,8); // msb
      000F57 8E 04            [24] 3202 	mov	ar4,r6
      000F59 8C 82            [24] 3203 	mov	dpl,r4
      000F5B 75 83 00         [24] 3204 	mov	dph,#0x00
      000F5E 74 08            [12] 3205 	mov	a,#0x08
      000F60 C0 E0            [24] 3206 	push	acc
      000F62 12 10 0F         [24] 3207 	lcall	_isp_send
      000F65 15 81            [12] 3208 	dec	sp
                                   3209 ;	isp.c:422: }
      000F67 22               [24] 3210 	ret
                                   3211 ;------------------------------------------------------------
                                   3212 ;Allocation info for local variables in function 'isp_inc_pointer'
                                   3213 ;------------------------------------------------------------
                                   3214 ;	isp.c:424: void isp_inc_pointer (void)
                                   3215 ;	-----------------------------------------
                                   3216 ;	 function isp_inc_pointer
                                   3217 ;	-----------------------------------------
      000F68                       3218 _isp_inc_pointer:
                                   3219 ;	isp.c:427: isp_send(0x06,6);
      000F68 74 06            [12] 3220 	mov	a,#0x06
      000F6A C0 E0            [24] 3221 	push	acc
      000F6C 90 00 06         [24] 3222 	mov	dptr,#0x0006
      000F6F 12 10 0F         [24] 3223 	lcall	_isp_send
      000F72 15 81            [12] 3224 	dec	sp
                                   3225 ;	isp.c:428: }
      000F74 22               [24] 3226 	ret
                                   3227 ;------------------------------------------------------------
                                   3228 ;Allocation info for local variables in function 'isp_read_16'
                                   3229 ;------------------------------------------------------------
                                   3230 ;i                         Allocated to registers r5 
                                   3231 ;out                       Allocated to registers r6 r7 
                                   3232 ;------------------------------------------------------------
                                   3233 ;	isp.c:431: unsigned int isp_read_16(void) {
                                   3234 ;	-----------------------------------------
                                   3235 ;	 function isp_read_16
                                   3236 ;	-----------------------------------------
      000F75                       3237 _isp_read_16:
                                   3238 ;	isp.c:438: out = 0;
      000F75 7E 00            [12] 3239 	mov	r6,#0x00
      000F77 7F 00            [12] 3240 	mov	r7,#0x00
                                   3241 ;	isp.c:439: ISP_DAT_D_I
      000F79 53 93 7F         [24] 3242 	anl	_P1_DIR_PU,#0x7f
      000F7C 53 92 7F         [24] 3243 	anl	_P1_MOD_OC,#0x7f
                                   3244 ;	isp.c:441: for (i=0; i < 16; i++) {
      000F7F 7D 00            [12] 3245 	mov	r5,#0x00
      000F81                       3246 00104$:
                                   3247 ;	isp.c:442: ISP_CLK_1
                                   3248 ;	assignBit
      000F81 D2 96            [12] 3249 	setb	_PP16
                                   3250 ;	isp.c:443: DLY_us(ISP_CLK_DELAY);
      000F83 90 00 01         [24] 3251 	mov	dptr,#0x0001
      000F86 C0 07            [24] 3252 	push	ar7
      000F88 C0 06            [24] 3253 	push	ar6
      000F8A C0 05            [24] 3254 	push	ar5
      000F8C 12 1C 04         [24] 3255 	lcall	_DLY_us
                                   3256 ;	isp.c:444: ISP_CLK_0
                                   3257 ;	assignBit
      000F8F C2 96            [12] 3258 	clr	_PP16
                                   3259 ;	isp.c:445: DLY_us(ISP_CLK_DELAY);
      000F91 90 00 01         [24] 3260 	mov	dptr,#0x0001
      000F94 12 1C 04         [24] 3261 	lcall	_DLY_us
      000F97 D0 05            [24] 3262 	pop	ar5
      000F99 D0 06            [24] 3263 	pop	ar6
      000F9B D0 07            [24] 3264 	pop	ar7
                                   3265 ;	isp.c:446: out = out >> 1;
      000F9D EF               [12] 3266 	mov	a,r7
      000F9E C3               [12] 3267 	clr	c
      000F9F 13               [12] 3268 	rrc	a
      000FA0 CE               [12] 3269 	xch	a,r6
      000FA1 13               [12] 3270 	rrc	a
      000FA2 CE               [12] 3271 	xch	a,r6
      000FA3 FF               [12] 3272 	mov	r7,a
                                   3273 ;	isp.c:447: if (ISP_DAT_V)
      000FA4 30 97 03         [24] 3274 	jnb	_PP17,00105$
                                   3275 ;	isp.c:448: out = out | 0x8000;
      000FA7 43 07 80         [24] 3276 	orl	ar7,#0x80
      000FAA                       3277 00105$:
                                   3278 ;	isp.c:441: for (i=0; i < 16; i++) {
      000FAA 0D               [12] 3279 	inc	r5
      000FAB BD 10 00         [24] 3280 	cjne	r5,#0x10,00122$
      000FAE                       3281 00122$:
      000FAE 40 D1            [24] 3282 	jc	00104$
                                   3283 ;	isp.c:450: return out;
      000FB0 8E 82            [24] 3284 	mov	dpl,r6
      000FB2 8F 83            [24] 3285 	mov	dph,r7
                                   3286 ;	isp.c:451: }
      000FB4 22               [24] 3287 	ret
                                   3288 ;------------------------------------------------------------
                                   3289 ;Allocation info for local variables in function 'isp_read_8'
                                   3290 ;------------------------------------------------------------
                                   3291 ;i                         Allocated to registers r5 
                                   3292 ;out                       Allocated to registers r6 r7 
                                   3293 ;------------------------------------------------------------
                                   3294 ;	isp.c:453: unsigned int isp_read_8 (void)
                                   3295 ;	-----------------------------------------
                                   3296 ;	 function isp_read_8
                                   3297 ;	-----------------------------------------
      000FB5                       3298 _isp_read_8:
                                   3299 ;	isp.c:457: out = 0;
      000FB5 7E 00            [12] 3300 	mov	r6,#0x00
      000FB7 7F 00            [12] 3301 	mov	r7,#0x00
                                   3302 ;	isp.c:458: ISP_DAT_D_I
      000FB9 53 93 7F         [24] 3303 	anl	_P1_DIR_PU,#0x7f
      000FBC 53 92 7F         [24] 3304 	anl	_P1_MOD_OC,#0x7f
                                   3305 ;	isp.c:460: for (i=0;i<8;i++)
      000FBF 7D 00            [12] 3306 	mov	r5,#0x00
      000FC1                       3307 00104$:
                                   3308 ;	isp.c:462: ISP_CLK_1
                                   3309 ;	assignBit
      000FC1 D2 96            [12] 3310 	setb	_PP16
                                   3311 ;	isp.c:463: DLY_us(ISP_CLK_DELAY);
      000FC3 90 00 01         [24] 3312 	mov	dptr,#0x0001
      000FC6 C0 07            [24] 3313 	push	ar7
      000FC8 C0 06            [24] 3314 	push	ar6
      000FCA C0 05            [24] 3315 	push	ar5
      000FCC 12 1C 04         [24] 3316 	lcall	_DLY_us
                                   3317 ;	isp.c:464: ISP_CLK_0
                                   3318 ;	assignBit
      000FCF C2 96            [12] 3319 	clr	_PP16
                                   3320 ;	isp.c:465: DLY_us(ISP_CLK_DELAY);
      000FD1 90 00 01         [24] 3321 	mov	dptr,#0x0001
      000FD4 12 1C 04         [24] 3322 	lcall	_DLY_us
      000FD7 D0 05            [24] 3323 	pop	ar5
      000FD9 D0 06            [24] 3324 	pop	ar6
      000FDB D0 07            [24] 3325 	pop	ar7
                                   3326 ;	isp.c:466: out = out >> 1;
      000FDD EF               [12] 3327 	mov	a,r7
      000FDE C3               [12] 3328 	clr	c
      000FDF 13               [12] 3329 	rrc	a
      000FE0 CE               [12] 3330 	xch	a,r6
      000FE1 13               [12] 3331 	rrc	a
      000FE2 CE               [12] 3332 	xch	a,r6
      000FE3 FF               [12] 3333 	mov	r7,a
                                   3334 ;	isp.c:467: if (ISP_DAT_V)
      000FE4 30 97 03         [24] 3335 	jnb	_PP17,00105$
                                   3336 ;	isp.c:468: out = out | 0x80;
      000FE7 43 06 80         [24] 3337 	orl	ar6,#0x80
      000FEA                       3338 00105$:
                                   3339 ;	isp.c:460: for (i=0;i<8;i++)
      000FEA 0D               [12] 3340 	inc	r5
      000FEB BD 08 00         [24] 3341 	cjne	r5,#0x08,00122$
      000FEE                       3342 00122$:
      000FEE 40 D1            [24] 3343 	jc	00104$
                                   3344 ;	isp.c:470: return out;
      000FF0 8E 82            [24] 3345 	mov	dpl,r6
      000FF2 8F 83            [24] 3346 	mov	dph,r7
                                   3347 ;	isp.c:471: }
      000FF4 22               [24] 3348 	ret
                                   3349 ;------------------------------------------------------------
                                   3350 ;Allocation info for local variables in function 'isp_read_14s'
                                   3351 ;------------------------------------------------------------
                                   3352 ;out                       Allocated to registers r6 r7 
                                   3353 ;------------------------------------------------------------
                                   3354 ;	isp.c:473: unsigned int isp_read_14s(void) {
                                   3355 ;	-----------------------------------------
                                   3356 ;	 function isp_read_14s
                                   3357 ;	-----------------------------------------
      000FF5                       3358 _isp_read_14s:
                                   3359 ;	isp.c:481: out = isp_read_16();
      000FF5 12 0F 75         [24] 3360 	lcall	_isp_read_16
      000FF8 AE 82            [24] 3361 	mov	r6,dpl
      000FFA AF 83            [24] 3362 	mov	r7,dph
                                   3363 ;	isp.c:482: out = out & 0x7FFE;
      000FFC 53 06 FE         [24] 3364 	anl	ar6,#0xfe
      000FFF 53 07 7F         [24] 3365 	anl	ar7,#0x7f
                                   3366 ;	isp.c:483: out = out >> 1;
      001002 8E 82            [24] 3367 	mov	dpl,r6
      001004 EF               [12] 3368 	mov	a,r7
      001005 C3               [12] 3369 	clr	c
      001006 13               [12] 3370 	rrc	a
      001007 C5 82            [12] 3371 	xch	a,dpl
      001009 13               [12] 3372 	rrc	a
      00100A C5 82            [12] 3373 	xch	a,dpl
      00100C F5 83            [12] 3374 	mov	dph,a
                                   3375 ;	isp.c:484: return out;
                                   3376 ;	isp.c:485: }
      00100E 22               [24] 3377 	ret
                                   3378 ;------------------------------------------------------------
                                   3379 ;Allocation info for local variables in function 'isp_send'
                                   3380 ;------------------------------------------------------------
                                   3381 ;num_bits                  Allocated to stack - _bp -3
                                   3382 ;data                      Allocated to registers r6 r7 
                                   3383 ;i                         Allocated to registers r5 
                                   3384 ;------------------------------------------------------------
                                   3385 ;	isp.c:489: void isp_send (unsigned int data, unsigned char num_bits) {
                                   3386 ;	-----------------------------------------
                                   3387 ;	 function isp_send
                                   3388 ;	-----------------------------------------
      00100F                       3389 _isp_send:
      00100F C0 1E            [24] 3390 	push	_bp
      001011 85 81 1E         [24] 3391 	mov	_bp,sp
      001014 AE 82            [24] 3392 	mov	r6,dpl
      001016 AF 83            [24] 3393 	mov	r7,dph
                                   3394 ;	isp.c:492: ISP_DAT_D_O
      001018 53 92 7F         [24] 3395 	anl	_P1_MOD_OC,#0x7f
      00101B 43 93 80         [24] 3396 	orl	_P1_DIR_PU,#0x80
                                   3397 ;	isp.c:495: for (i = 0; i < num_bits; i++) {
      00101E 7D 00            [12] 3398 	mov	r5,#0x00
      001020                       3399 00106$:
      001020 E5 1E            [12] 3400 	mov	a,_bp
      001022 24 FD            [12] 3401 	add	a,#0xfd
      001024 F8               [12] 3402 	mov	r0,a
      001025 C3               [12] 3403 	clr	c
      001026 ED               [12] 3404 	mov	a,r5
      001027 96               [12] 3405 	subb	a,@r0
      001028 50 2C            [24] 3406 	jnc	00108$
                                   3407 ;	isp.c:496: if (data&0x01)
      00102A EE               [12] 3408 	mov	a,r6
      00102B 30 E0 04         [24] 3409 	jnb	acc.0,00102$
                                   3410 ;	isp.c:497: ISP_DAT_1
                                   3411 ;	assignBit
      00102E D2 97            [12] 3412 	setb	_PP17
      001030 80 02            [24] 3413 	sjmp	00103$
      001032                       3414 00102$:
                                   3415 ;	isp.c:499: ISP_DAT_0
                                   3416 ;	assignBit
      001032 C2 97            [12] 3417 	clr	_PP17
      001034                       3418 00103$:
                                   3419 ;	isp.c:501: DLY_us(ISP_CLK_DELAY);
      001034 90 00 01         [24] 3420 	mov	dptr,#0x0001
      001037 C0 07            [24] 3421 	push	ar7
      001039 C0 06            [24] 3422 	push	ar6
      00103B C0 05            [24] 3423 	push	ar5
      00103D 12 1C 04         [24] 3424 	lcall	_DLY_us
      001040 D0 05            [24] 3425 	pop	ar5
      001042 D0 06            [24] 3426 	pop	ar6
      001044 D0 07            [24] 3427 	pop	ar7
                                   3428 ;	isp.c:502: ISP_CLK_1
                                   3429 ;	assignBit
      001046 D2 96            [12] 3430 	setb	_PP16
                                   3431 ;	isp.c:504: data = data >> 1;
      001048 EF               [12] 3432 	mov	a,r7
      001049 C3               [12] 3433 	clr	c
      00104A 13               [12] 3434 	rrc	a
      00104B CE               [12] 3435 	xch	a,r6
      00104C 13               [12] 3436 	rrc	a
      00104D CE               [12] 3437 	xch	a,r6
      00104E FF               [12] 3438 	mov	r7,a
                                   3439 ;	isp.c:505: ISP_CLK_0
                                   3440 ;	assignBit
      00104F C2 96            [12] 3441 	clr	_PP16
                                   3442 ;	isp.c:506: ISP_DAT_0
                                   3443 ;	assignBit
      001051 C2 97            [12] 3444 	clr	_PP17
                                   3445 ;	isp.c:495: for (i = 0; i < num_bits; i++) {
      001053 0D               [12] 3446 	inc	r5
      001054 80 CA            [24] 3447 	sjmp	00106$
      001056                       3448 00108$:
                                   3449 ;	isp.c:509: }
      001056 D0 1E            [24] 3450 	pop	_bp
      001058 22               [24] 3451 	ret
                                   3452 ;------------------------------------------------------------
                                   3453 ;Allocation info for local variables in function 'isp_send_24_msb'
                                   3454 ;------------------------------------------------------------
                                   3455 ;data                      Allocated to registers r4 r5 r6 r7 
                                   3456 ;i                         Allocated to registers r3 
                                   3457 ;------------------------------------------------------------
                                   3458 ;	isp.c:512: void isp_send_24_msb (unsigned long data)
                                   3459 ;	-----------------------------------------
                                   3460 ;	 function isp_send_24_msb
                                   3461 ;	-----------------------------------------
      001059                       3462 _isp_send_24_msb:
      001059 AC 82            [24] 3463 	mov	r4,dpl
      00105B AD 83            [24] 3464 	mov	r5,dph
      00105D AE F0            [24] 3465 	mov	r6,b
      00105F FF               [12] 3466 	mov	r7,a
                                   3467 ;	isp.c:515: ISP_DAT_D_O
      001060 53 92 7F         [24] 3468 	anl	_P1_MOD_OC,#0x7f
      001063 43 93 80         [24] 3469 	orl	_P1_DIR_PU,#0x80
                                   3470 ;	isp.c:517: for (i=0;i<23;i++)
      001066 7B 00            [12] 3471 	mov	r3,#0x00
      001068                       3472 00105$:
                                   3473 ;	isp.c:519: if (data&0x400000)
      001068 EE               [12] 3474 	mov	a,r6
      001069 30 E6 04         [24] 3475 	jnb	acc.6,00102$
                                   3476 ;	isp.c:521: ISP_DAT_1
                                   3477 ;	assignBit
      00106C D2 97            [12] 3478 	setb	_PP17
      00106E 80 02            [24] 3479 	sjmp	00103$
      001070                       3480 00102$:
                                   3481 ;	isp.c:525: ISP_DAT_0
                                   3482 ;	assignBit
      001070 C2 97            [12] 3483 	clr	_PP17
      001072                       3484 00103$:
                                   3485 ;	isp.c:527: DLY_us(ISP_CLK_DELAY);
      001072 90 00 01         [24] 3486 	mov	dptr,#0x0001
      001075 C0 07            [24] 3487 	push	ar7
      001077 C0 06            [24] 3488 	push	ar6
      001079 C0 05            [24] 3489 	push	ar5
      00107B C0 04            [24] 3490 	push	ar4
      00107D C0 03            [24] 3491 	push	ar3
      00107F 12 1C 04         [24] 3492 	lcall	_DLY_us
                                   3493 ;	isp.c:528: ISP_CLK_1
                                   3494 ;	assignBit
      001082 D2 96            [12] 3495 	setb	_PP16
                                   3496 ;	isp.c:529: DLY_us(ISP_CLK_DELAY);
      001084 90 00 01         [24] 3497 	mov	dptr,#0x0001
      001087 12 1C 04         [24] 3498 	lcall	_DLY_us
      00108A D0 03            [24] 3499 	pop	ar3
      00108C D0 04            [24] 3500 	pop	ar4
      00108E D0 05            [24] 3501 	pop	ar5
      001090 D0 06            [24] 3502 	pop	ar6
      001092 D0 07            [24] 3503 	pop	ar7
                                   3504 ;	isp.c:530: data = data << 1;
      001094 EC               [12] 3505 	mov	a,r4
      001095 2C               [12] 3506 	add	a,r4
      001096 FC               [12] 3507 	mov	r4,a
      001097 ED               [12] 3508 	mov	a,r5
      001098 33               [12] 3509 	rlc	a
      001099 FD               [12] 3510 	mov	r5,a
      00109A EE               [12] 3511 	mov	a,r6
      00109B 33               [12] 3512 	rlc	a
      00109C FE               [12] 3513 	mov	r6,a
      00109D EF               [12] 3514 	mov	a,r7
      00109E 33               [12] 3515 	rlc	a
      00109F FF               [12] 3516 	mov	r7,a
                                   3517 ;	isp.c:531: ISP_CLK_0
                                   3518 ;	assignBit
      0010A0 C2 96            [12] 3519 	clr	_PP16
                                   3520 ;	isp.c:517: for (i=0;i<23;i++)
      0010A2 0B               [12] 3521 	inc	r3
      0010A3 BB 17 00         [24] 3522 	cjne	r3,#0x17,00123$
      0010A6                       3523 00123$:
      0010A6 40 C0            [24] 3524 	jc	00105$
                                   3525 ;	isp.c:534: ISP_DAT_0
                                   3526 ;	assignBit
      0010A8 C2 97            [12] 3527 	clr	_PP17
                                   3528 ;	isp.c:535: DLY_us(ISP_CLK_DELAY);
      0010AA 90 00 01         [24] 3529 	mov	dptr,#0x0001
      0010AD 12 1C 04         [24] 3530 	lcall	_DLY_us
                                   3531 ;	isp.c:536: ISP_CLK_1
                                   3532 ;	assignBit
      0010B0 D2 96            [12] 3533 	setb	_PP16
                                   3534 ;	isp.c:537: DLY_us(ISP_CLK_DELAY);
      0010B2 90 00 01         [24] 3535 	mov	dptr,#0x0001
      0010B5 12 1C 04         [24] 3536 	lcall	_DLY_us
                                   3537 ;	isp.c:538: ISP_CLK_0
                                   3538 ;	assignBit
      0010B8 C2 96            [12] 3539 	clr	_PP16
                                   3540 ;	isp.c:539: }
      0010BA 22               [24] 3541 	ret
                                   3542 ;------------------------------------------------------------
                                   3543 ;Allocation info for local variables in function 'isp_send_8_msb'
                                   3544 ;------------------------------------------------------------
                                   3545 ;data                      Allocated to registers r7 
                                   3546 ;i                         Allocated to registers r6 
                                   3547 ;------------------------------------------------------------
                                   3548 ;	isp.c:541: void isp_send_8_msb (unsigned char data)
                                   3549 ;	-----------------------------------------
                                   3550 ;	 function isp_send_8_msb
                                   3551 ;	-----------------------------------------
      0010BB                       3552 _isp_send_8_msb:
      0010BB AF 82            [24] 3553 	mov	r7,dpl
                                   3554 ;	isp.c:544: ISP_DAT_D_O
      0010BD 53 92 7F         [24] 3555 	anl	_P1_MOD_OC,#0x7f
      0010C0 43 93 80         [24] 3556 	orl	_P1_DIR_PU,#0x80
                                   3557 ;	isp.c:546: for (i=0;i<8;i++)
      0010C3 7E 00            [12] 3558 	mov	r6,#0x00
      0010C5                       3559 00105$:
                                   3560 ;	isp.c:548: if (data&0x80)
      0010C5 EF               [12] 3561 	mov	a,r7
      0010C6 30 E7 04         [24] 3562 	jnb	acc.7,00102$
                                   3563 ;	isp.c:550: ISP_DAT_1
                                   3564 ;	assignBit
      0010C9 D2 97            [12] 3565 	setb	_PP17
      0010CB 80 02            [24] 3566 	sjmp	00103$
      0010CD                       3567 00102$:
                                   3568 ;	isp.c:554: ISP_DAT_0
                                   3569 ;	assignBit
      0010CD C2 97            [12] 3570 	clr	_PP17
      0010CF                       3571 00103$:
                                   3572 ;	isp.c:556: DLY_us(ISP_CLK_DELAY);
      0010CF 90 00 01         [24] 3573 	mov	dptr,#0x0001
      0010D2 C0 07            [24] 3574 	push	ar7
      0010D4 C0 06            [24] 3575 	push	ar6
      0010D6 12 1C 04         [24] 3576 	lcall	_DLY_us
                                   3577 ;	isp.c:557: ISP_CLK_1
                                   3578 ;	assignBit
      0010D9 D2 96            [12] 3579 	setb	_PP16
                                   3580 ;	isp.c:558: DLY_us(ISP_CLK_DELAY);
      0010DB 90 00 01         [24] 3581 	mov	dptr,#0x0001
      0010DE 12 1C 04         [24] 3582 	lcall	_DLY_us
      0010E1 D0 06            [24] 3583 	pop	ar6
      0010E3 D0 07            [24] 3584 	pop	ar7
                                   3585 ;	isp.c:559: data = data << 1;
      0010E5 8F 05            [24] 3586 	mov	ar5,r7
      0010E7 ED               [12] 3587 	mov	a,r5
      0010E8 2D               [12] 3588 	add	a,r5
      0010E9 FF               [12] 3589 	mov	r7,a
                                   3590 ;	isp.c:560: ISP_CLK_0
                                   3591 ;	assignBit
      0010EA C2 96            [12] 3592 	clr	_PP16
                                   3593 ;	isp.c:561: ISP_DAT_0
                                   3594 ;	assignBit
      0010EC C2 97            [12] 3595 	clr	_PP17
                                   3596 ;	isp.c:546: for (i=0;i<8;i++)
      0010EE 0E               [12] 3597 	inc	r6
      0010EF BE 08 00         [24] 3598 	cjne	r6,#0x08,00119$
      0010F2                       3599 00119$:
      0010F2 40 D1            [24] 3600 	jc	00105$
                                   3601 ;	isp.c:564: }
      0010F4 22               [24] 3602 	ret
                                   3603 ;------------------------------------------------------------
                                   3604 ;Allocation info for local variables in function 'isp_read_8_msb'
                                   3605 ;------------------------------------------------------------
                                   3606 ;i                         Allocated to registers r5 
                                   3607 ;out                       Allocated to registers r6 r7 
                                   3608 ;------------------------------------------------------------
                                   3609 ;	isp.c:567: unsigned int isp_read_8_msb (void)
                                   3610 ;	-----------------------------------------
                                   3611 ;	 function isp_read_8_msb
                                   3612 ;	-----------------------------------------
      0010F5                       3613 _isp_read_8_msb:
                                   3614 ;	isp.c:571: out = 0;
      0010F5 7E 00            [12] 3615 	mov	r6,#0x00
      0010F7 7F 00            [12] 3616 	mov	r7,#0x00
                                   3617 ;	isp.c:572: ISP_DAT_D_I
      0010F9 53 93 7F         [24] 3618 	anl	_P1_DIR_PU,#0x7f
      0010FC 53 92 7F         [24] 3619 	anl	_P1_MOD_OC,#0x7f
                                   3620 ;	isp.c:574: for (i=0;i<8;i++)
      0010FF 7D 00            [12] 3621 	mov	r5,#0x00
      001101                       3622 00104$:
                                   3623 ;	isp.c:576: ISP_CLK_1
                                   3624 ;	assignBit
      001101 D2 96            [12] 3625 	setb	_PP16
                                   3626 ;	isp.c:577: DLY_us(ISP_CLK_DELAY);
      001103 90 00 01         [24] 3627 	mov	dptr,#0x0001
      001106 C0 07            [24] 3628 	push	ar7
      001108 C0 06            [24] 3629 	push	ar6
      00110A C0 05            [24] 3630 	push	ar5
      00110C 12 1C 04         [24] 3631 	lcall	_DLY_us
                                   3632 ;	isp.c:578: ISP_CLK_0
                                   3633 ;	assignBit
      00110F C2 96            [12] 3634 	clr	_PP16
                                   3635 ;	isp.c:579: DLY_us(ISP_CLK_DELAY);
      001111 90 00 01         [24] 3636 	mov	dptr,#0x0001
      001114 12 1C 04         [24] 3637 	lcall	_DLY_us
      001117 D0 05            [24] 3638 	pop	ar5
      001119 D0 06            [24] 3639 	pop	ar6
      00111B D0 07            [24] 3640 	pop	ar7
                                   3641 ;	isp.c:580: out = out << 1;
      00111D EE               [12] 3642 	mov	a,r6
      00111E 2E               [12] 3643 	add	a,r6
      00111F FE               [12] 3644 	mov	r6,a
      001120 EF               [12] 3645 	mov	a,r7
      001121 33               [12] 3646 	rlc	a
      001122 FF               [12] 3647 	mov	r7,a
                                   3648 ;	isp.c:581: if (ISP_DAT_V)
      001123 30 97 03         [24] 3649 	jnb	_PP17,00105$
                                   3650 ;	isp.c:582: out = out | 0x1;
      001126 43 06 01         [24] 3651 	orl	ar6,#0x01
      001129                       3652 00105$:
                                   3653 ;	isp.c:574: for (i=0;i<8;i++)
      001129 0D               [12] 3654 	inc	r5
      00112A BD 08 00         [24] 3655 	cjne	r5,#0x08,00122$
      00112D                       3656 00122$:
      00112D 40 D2            [24] 3657 	jc	00104$
                                   3658 ;	isp.c:584: return out;
      00112F 8E 82            [24] 3659 	mov	dpl,r6
      001131 8F 83            [24] 3660 	mov	dph,r7
                                   3661 ;	isp.c:585: }
      001133 22               [24] 3662 	ret
                                   3663 ;------------------------------------------------------------
                                   3664 ;Allocation info for local variables in function 'isp_read_16_msb'
                                   3665 ;------------------------------------------------------------
                                   3666 ;i                         Allocated to registers r5 
                                   3667 ;out                       Allocated to registers r6 r7 
                                   3668 ;------------------------------------------------------------
                                   3669 ;	isp.c:587: unsigned int isp_read_16_msb (void)
                                   3670 ;	-----------------------------------------
                                   3671 ;	 function isp_read_16_msb
                                   3672 ;	-----------------------------------------
      001134                       3673 _isp_read_16_msb:
                                   3674 ;	isp.c:591: out = 0;
      001134 7E 00            [12] 3675 	mov	r6,#0x00
      001136 7F 00            [12] 3676 	mov	r7,#0x00
                                   3677 ;	isp.c:592: ISP_DAT_D_I
      001138 53 93 7F         [24] 3678 	anl	_P1_DIR_PU,#0x7f
      00113B 53 92 7F         [24] 3679 	anl	_P1_MOD_OC,#0x7f
                                   3680 ;	isp.c:594: for (i=0;i<16;i++)
      00113E 7D 00            [12] 3681 	mov	r5,#0x00
      001140                       3682 00104$:
                                   3683 ;	isp.c:596: ISP_CLK_1
                                   3684 ;	assignBit
      001140 D2 96            [12] 3685 	setb	_PP16
                                   3686 ;	isp.c:597: DLY_us(ISP_CLK_DELAY);
      001142 90 00 01         [24] 3687 	mov	dptr,#0x0001
      001145 C0 07            [24] 3688 	push	ar7
      001147 C0 06            [24] 3689 	push	ar6
      001149 C0 05            [24] 3690 	push	ar5
      00114B 12 1C 04         [24] 3691 	lcall	_DLY_us
                                   3692 ;	isp.c:598: ISP_CLK_0
                                   3693 ;	assignBit
      00114E C2 96            [12] 3694 	clr	_PP16
                                   3695 ;	isp.c:599: DLY_us(ISP_CLK_DELAY);
      001150 90 00 01         [24] 3696 	mov	dptr,#0x0001
      001153 12 1C 04         [24] 3697 	lcall	_DLY_us
      001156 D0 05            [24] 3698 	pop	ar5
      001158 D0 06            [24] 3699 	pop	ar6
      00115A D0 07            [24] 3700 	pop	ar7
                                   3701 ;	isp.c:600: out = out << 1;
      00115C EE               [12] 3702 	mov	a,r6
      00115D 2E               [12] 3703 	add	a,r6
      00115E FE               [12] 3704 	mov	r6,a
      00115F EF               [12] 3705 	mov	a,r7
      001160 33               [12] 3706 	rlc	a
      001161 FF               [12] 3707 	mov	r7,a
                                   3708 ;	isp.c:601: if (ISP_DAT_V)
      001162 30 97 03         [24] 3709 	jnb	_PP17,00105$
                                   3710 ;	isp.c:602: out = out | 0x1;
      001165 43 06 01         [24] 3711 	orl	ar6,#0x01
      001168                       3712 00105$:
                                   3713 ;	isp.c:594: for (i=0;i<16;i++)
      001168 0D               [12] 3714 	inc	r5
      001169 BD 10 00         [24] 3715 	cjne	r5,#0x10,00122$
      00116C                       3716 00122$:
      00116C 40 D2            [24] 3717 	jc	00104$
                                   3718 ;	isp.c:604: return out;
      00116E 8E 82            [24] 3719 	mov	dpl,r6
      001170 8F 83            [24] 3720 	mov	dph,r7
                                   3721 ;	isp.c:605: }
      001172 22               [24] 3722 	ret
                                   3723 ;------------------------------------------------------------
                                   3724 ;Allocation info for local variables in function 'enter_progmode'
                                   3725 ;------------------------------------------------------------
                                   3726 ;	isp.c:609: unsigned char enter_progmode (void)
                                   3727 ;	-----------------------------------------
                                   3728 ;	 function enter_progmode
                                   3729 ;	-----------------------------------------
      001173                       3730 _enter_progmode:
                                   3731 ;	isp.c:611: ISP_MCLR_0
                                   3732 ;	assignBit
      001173 C2 95            [12] 3733 	clr	_PP15
                                   3734 ;	isp.c:612: DLY_us(300);
      001175 90 01 2C         [24] 3735 	mov	dptr,#0x012c
      001178 12 1C 04         [24] 3736 	lcall	_DLY_us
                                   3737 ;	isp.c:613: isp_send('P',8); // 0b01010000
      00117B 74 08            [12] 3738 	mov	a,#0x08
      00117D C0 E0            [24] 3739 	push	acc
      00117F 90 00 50         [24] 3740 	mov	dptr,#0x0050
      001182 12 10 0F         [24] 3741 	lcall	_isp_send
      001185 15 81            [12] 3742 	dec	sp
                                   3743 ;	isp.c:614: isp_send('H',8); // 0b01001000
      001187 74 08            [12] 3744 	mov	a,#0x08
      001189 C0 E0            [24] 3745 	push	acc
      00118B 90 00 48         [24] 3746 	mov	dptr,#0x0048
      00118E 12 10 0F         [24] 3747 	lcall	_isp_send
      001191 15 81            [12] 3748 	dec	sp
                                   3749 ;	isp.c:615: isp_send('C',8); // 0b01000011
      001193 74 08            [12] 3750 	mov	a,#0x08
      001195 C0 E0            [24] 3751 	push	acc
      001197 90 00 43         [24] 3752 	mov	dptr,#0x0043
      00119A 12 10 0F         [24] 3753 	lcall	_isp_send
      00119D 15 81            [12] 3754 	dec	sp
                                   3755 ;	isp.c:616: isp_send('M',8); // 0b01001101
      00119F 74 08            [12] 3756 	mov	a,#0x08
      0011A1 C0 E0            [24] 3757 	push	acc
      0011A3 90 00 4D         [24] 3758 	mov	dptr,#0x004d
      0011A6 12 10 0F         [24] 3759 	lcall	_isp_send
      0011A9 15 81            [12] 3760 	dec	sp
                                   3761 ;	isp.c:618: isp_send(0,1); // 33 clock
      0011AB 74 01            [12] 3762 	mov	a,#0x01
      0011AD C0 E0            [24] 3763 	push	acc
      0011AF 90 00 00         [24] 3764 	mov	dptr,#0x0000
      0011B2 12 10 0F         [24] 3765 	lcall	_isp_send
      0011B5 15 81            [12] 3766 	dec	sp
                                   3767 ;	isp.c:619: return 0;
      0011B7 75 82 00         [24] 3768 	mov	dpl,#0x00
                                   3769 ;	isp.c:620: }
      0011BA 22               [24] 3770 	ret
                                   3771 ;------------------------------------------------------------
                                   3772 ;Allocation info for local variables in function 'p18_enter_progmode'
                                   3773 ;------------------------------------------------------------
                                   3774 ;	isp.c:624: unsigned char p18_enter_progmode (void)
                                   3775 ;	-----------------------------------------
                                   3776 ;	 function p18_enter_progmode
                                   3777 ;	-----------------------------------------
      0011BB                       3778 _p18_enter_progmode:
                                   3779 ;	isp.c:626: ISP_MCLR_0
                                   3780 ;	assignBit
      0011BB C2 95            [12] 3781 	clr	_PP15
                                   3782 ;	isp.c:627: DLY_us(300);
      0011BD 90 01 2C         [24] 3783 	mov	dptr,#0x012c
      0011C0 12 1C 04         [24] 3784 	lcall	_DLY_us
                                   3785 ;	isp.c:629: isp_send_8_msb('M');
      0011C3 75 82 4D         [24] 3786 	mov	dpl,#0x4d
      0011C6 12 10 BB         [24] 3787 	lcall	_isp_send_8_msb
                                   3788 ;	isp.c:630: isp_send_8_msb('C');
      0011C9 75 82 43         [24] 3789 	mov	dpl,#0x43
      0011CC 12 10 BB         [24] 3790 	lcall	_isp_send_8_msb
                                   3791 ;	isp.c:631: isp_send_8_msb('H');
      0011CF 75 82 48         [24] 3792 	mov	dpl,#0x48
      0011D2 12 10 BB         [24] 3793 	lcall	_isp_send_8_msb
                                   3794 ;	isp.c:632: isp_send_8_msb('P');
      0011D5 75 82 50         [24] 3795 	mov	dpl,#0x50
      0011D8 12 10 BB         [24] 3796 	lcall	_isp_send_8_msb
                                   3797 ;	isp.c:637: DLY_us(300);
      0011DB 90 01 2C         [24] 3798 	mov	dptr,#0x012c
      0011DE 12 1C 04         [24] 3799 	lcall	_DLY_us
                                   3800 ;	isp.c:638: ISP_MCLR_1
                                   3801 ;	assignBit
      0011E1 D2 95            [12] 3802 	setb	_PP15
                                   3803 ;	isp.c:639: return 0;
      0011E3 75 82 00         [24] 3804 	mov	dpl,#0x00
                                   3805 ;	isp.c:640: }
      0011E6 22               [24] 3806 	ret
                                   3807 ;------------------------------------------------------------
                                   3808 ;Allocation info for local variables in function 'p18_isp_mass_erase'
                                   3809 ;------------------------------------------------------------
                                   3810 ;	isp.c:643: void p18_isp_mass_erase (void)
                                   3811 ;	-----------------------------------------
                                   3812 ;	 function p18_isp_mass_erase
                                   3813 ;	-----------------------------------------
      0011E7                       3814 _p18_isp_mass_erase:
                                   3815 ;	isp.c:645: p18_set_tblptr(0x3C0005);
      0011E7 90 00 05         [24] 3816 	mov	dptr,#0x0005
      0011EA 75 F0 3C         [24] 3817 	mov	b,#0x3c
      0011ED E4               [12] 3818 	clr	a
      0011EE 12 17 B8         [24] 3819 	lcall	_p18_set_tblptr
                                   3820 ;	isp.c:646: p18_send_cmd_payload(0x0C,0x0F0F);
      0011F1 74 0F            [12] 3821 	mov	a,#0x0f
      0011F3 C0 E0            [24] 3822 	push	acc
      0011F5 C0 E0            [24] 3823 	push	acc
      0011F7 75 82 0C         [24] 3824 	mov	dpl,#0x0c
      0011FA 12 18 8F         [24] 3825 	lcall	_p18_send_cmd_payload
      0011FD 15 81            [12] 3826 	dec	sp
      0011FF 15 81            [12] 3827 	dec	sp
                                   3828 ;	isp.c:647: p18_set_tblptr(0x3C0004);
      001201 90 00 04         [24] 3829 	mov	dptr,#0x0004
      001204 75 F0 3C         [24] 3830 	mov	b,#0x3c
      001207 E4               [12] 3831 	clr	a
      001208 12 17 B8         [24] 3832 	lcall	_p18_set_tblptr
                                   3833 ;	isp.c:648: p18_send_cmd_payload(0x0C,0x8F8F);
      00120B 74 8F            [12] 3834 	mov	a,#0x8f
      00120D C0 E0            [24] 3835 	push	acc
      00120F C0 E0            [24] 3836 	push	acc
      001211 75 82 0C         [24] 3837 	mov	dpl,#0x0c
      001214 12 18 8F         [24] 3838 	lcall	_p18_send_cmd_payload
      001217 15 81            [12] 3839 	dec	sp
      001219 15 81            [12] 3840 	dec	sp
                                   3841 ;	isp.c:649: p18_send_cmd_payload(0,0x0000);
      00121B E4               [12] 3842 	clr	a
      00121C C0 E0            [24] 3843 	push	acc
      00121E C0 E0            [24] 3844 	push	acc
      001220 75 82 00         [24] 3845 	mov	dpl,#0x00
      001223 12 18 8F         [24] 3846 	lcall	_p18_send_cmd_payload
      001226 15 81            [12] 3847 	dec	sp
      001228 15 81            [12] 3848 	dec	sp
                                   3849 ;	isp.c:650: isp_send(0x00,4);
      00122A 74 04            [12] 3850 	mov	a,#0x04
      00122C C0 E0            [24] 3851 	push	acc
      00122E 90 00 00         [24] 3852 	mov	dptr,#0x0000
      001231 12 10 0F         [24] 3853 	lcall	_isp_send
      001234 15 81            [12] 3854 	dec	sp
                                   3855 ;	isp.c:651: DLY_ms(20);
      001236 90 00 14         [24] 3856 	mov	dptr,#0x0014
      001239 12 1C 22         [24] 3857 	lcall	_DLY_ms
                                   3858 ;	isp.c:652: isp_send(0x00,16);
      00123C 74 10            [12] 3859 	mov	a,#0x10
      00123E C0 E0            [24] 3860 	push	acc
      001240 90 00 00         [24] 3861 	mov	dptr,#0x0000
      001243 12 10 0F         [24] 3862 	lcall	_isp_send
      001246 15 81            [12] 3863 	dec	sp
                                   3864 ;	isp.c:653: }
      001248 22               [24] 3865 	ret
                                   3866 ;------------------------------------------------------------
                                   3867 ;Allocation info for local variables in function 'p18fj_isp_mass_erase'
                                   3868 ;------------------------------------------------------------
                                   3869 ;	isp.c:655: void p18fj_isp_mass_erase (void)
                                   3870 ;	-----------------------------------------
                                   3871 ;	 function p18fj_isp_mass_erase
                                   3872 ;	-----------------------------------------
      001249                       3873 _p18fj_isp_mass_erase:
                                   3874 ;	isp.c:657: p18_set_tblptr(0x3C0005);
      001249 90 00 05         [24] 3875 	mov	dptr,#0x0005
      00124C 75 F0 3C         [24] 3876 	mov	b,#0x3c
      00124F E4               [12] 3877 	clr	a
      001250 12 17 B8         [24] 3878 	lcall	_p18_set_tblptr
                                   3879 ;	isp.c:658: p18_send_cmd_payload(0x0C,0x0101);
      001253 74 01            [12] 3880 	mov	a,#0x01
      001255 C0 E0            [24] 3881 	push	acc
      001257 C0 E0            [24] 3882 	push	acc
      001259 75 82 0C         [24] 3883 	mov	dpl,#0x0c
      00125C 12 18 8F         [24] 3884 	lcall	_p18_send_cmd_payload
      00125F 15 81            [12] 3885 	dec	sp
      001261 15 81            [12] 3886 	dec	sp
                                   3887 ;	isp.c:659: p18_set_tblptr(0x3C0004);
      001263 90 00 04         [24] 3888 	mov	dptr,#0x0004
      001266 75 F0 3C         [24] 3889 	mov	b,#0x3c
      001269 E4               [12] 3890 	clr	a
      00126A 12 17 B8         [24] 3891 	lcall	_p18_set_tblptr
                                   3892 ;	isp.c:660: p18_send_cmd_payload(0x0C,0x8080);
      00126D 74 80            [12] 3893 	mov	a,#0x80
      00126F C0 E0            [24] 3894 	push	acc
      001271 C0 E0            [24] 3895 	push	acc
      001273 75 82 0C         [24] 3896 	mov	dpl,#0x0c
      001276 12 18 8F         [24] 3897 	lcall	_p18_send_cmd_payload
      001279 15 81            [12] 3898 	dec	sp
      00127B 15 81            [12] 3899 	dec	sp
                                   3900 ;	isp.c:661: p18_send_cmd_payload(0,0x0000);
      00127D E4               [12] 3901 	clr	a
      00127E C0 E0            [24] 3902 	push	acc
      001280 C0 E0            [24] 3903 	push	acc
      001282 75 82 00         [24] 3904 	mov	dpl,#0x00
      001285 12 18 8F         [24] 3905 	lcall	_p18_send_cmd_payload
      001288 15 81            [12] 3906 	dec	sp
      00128A 15 81            [12] 3907 	dec	sp
                                   3908 ;	isp.c:662: isp_send(0x00,4);
      00128C 74 04            [12] 3909 	mov	a,#0x04
      00128E C0 E0            [24] 3910 	push	acc
      001290 90 00 00         [24] 3911 	mov	dptr,#0x0000
      001293 12 10 0F         [24] 3912 	lcall	_isp_send
      001296 15 81            [12] 3913 	dec	sp
                                   3914 ;	isp.c:663: DLY_ms(600);
      001298 90 02 58         [24] 3915 	mov	dptr,#0x0258
      00129B 12 1C 22         [24] 3916 	lcall	_DLY_ms
                                   3917 ;	isp.c:664: isp_send(0x00,16);
      00129E 74 10            [12] 3918 	mov	a,#0x10
      0012A0 C0 E0            [24] 3919 	push	acc
      0012A2 90 00 00         [24] 3920 	mov	dptr,#0x0000
      0012A5 12 10 0F         [24] 3921 	lcall	_isp_send
      0012A8 15 81            [12] 3922 	dec	sp
                                   3923 ;	isp.c:665: }
      0012AA 22               [24] 3924 	ret
                                   3925 ;------------------------------------------------------------
                                   3926 ;Allocation info for local variables in function 'p18fk_isp_mass_erase'
                                   3927 ;------------------------------------------------------------
                                   3928 ;data2                     Allocated to stack - _bp -3
                                   3929 ;data3                     Allocated to stack - _bp -4
                                   3930 ;data1                     Allocated to registers r7 
                                   3931 ;tmp1                      Allocated to registers 
                                   3932 ;tmp2                      Allocated to stack - _bp +1
                                   3933 ;tmp3                      Allocated to registers 
                                   3934 ;------------------------------------------------------------
                                   3935 ;	isp.c:668: void p18fk_isp_mass_erase (unsigned char data1, unsigned char data2, unsigned char data3)
                                   3936 ;	-----------------------------------------
                                   3937 ;	 function p18fk_isp_mass_erase
                                   3938 ;	-----------------------------------------
      0012AB                       3939 _p18fk_isp_mass_erase:
      0012AB C0 1E            [24] 3940 	push	_bp
      0012AD 85 81 1E         [24] 3941 	mov	_bp,sp
      0012B0 05 81            [12] 3942 	inc	sp
      0012B2 05 81            [12] 3943 	inc	sp
      0012B4 AF 82            [24] 3944 	mov	r7,dpl
                                   3945 ;	isp.c:671: tmp1 = data1;
      0012B6 7E 00            [12] 3946 	mov	r6,#0x00
      0012B8 8F 04            [24] 3947 	mov	ar4,r7
                                   3948 ;	isp.c:672: tmp1 = (tmp1<<8)|data1;
      0012BA 8C 05            [24] 3949 	mov	ar5,r4
      0012BC E4               [12] 3950 	clr	a
      0012BD 42 07            [12] 3951 	orl	ar7,a
      0012BF ED               [12] 3952 	mov	a,r5
      0012C0 42 06            [12] 3953 	orl	ar6,a
                                   3954 ;	isp.c:673: tmp2 = data2;
      0012C2 E5 1E            [12] 3955 	mov	a,_bp
      0012C4 24 FD            [12] 3956 	add	a,#0xfd
      0012C6 F8               [12] 3957 	mov	r0,a
      0012C7 86 04            [24] 3958 	mov	ar4,@r0
      0012C9 7D 00            [12] 3959 	mov	r5,#0x00
      0012CB 8C 02            [24] 3960 	mov	ar2,r4
                                   3961 ;	isp.c:674: tmp2 = (tmp2<<8)|data2;
      0012CD 8A 03            [24] 3962 	mov	ar3,r2
      0012CF 7A 00            [12] 3963 	mov	r2,#0x00
      0012D1 A8 1E            [24] 3964 	mov	r0,_bp
      0012D3 08               [12] 3965 	inc	r0
      0012D4 EC               [12] 3966 	mov	a,r4
      0012D5 4A               [12] 3967 	orl	a,r2
      0012D6 F6               [12] 3968 	mov	@r0,a
      0012D7 ED               [12] 3969 	mov	a,r5
      0012D8 4B               [12] 3970 	orl	a,r3
      0012D9 08               [12] 3971 	inc	r0
      0012DA F6               [12] 3972 	mov	@r0,a
                                   3973 ;	isp.c:675: tmp3 = data3;
      0012DB E5 1E            [12] 3974 	mov	a,_bp
      0012DD 24 FC            [12] 3975 	add	a,#0xfc
      0012DF F8               [12] 3976 	mov	r0,a
      0012E0 86 02            [24] 3977 	mov	ar2,@r0
      0012E2 7B 00            [12] 3978 	mov	r3,#0x00
      0012E4 8A 04            [24] 3979 	mov	ar4,r2
                                   3980 ;	isp.c:676: tmp3 = (tmp3<<8)|data3;
      0012E6 8C 05            [24] 3981 	mov	ar5,r4
      0012E8 E4               [12] 3982 	clr	a
      0012E9 42 02            [12] 3983 	orl	ar2,a
      0012EB ED               [12] 3984 	mov	a,r5
      0012EC 42 03            [12] 3985 	orl	ar3,a
                                   3986 ;	isp.c:677: p18_set_tblptr(0x3C0004);
      0012EE 90 00 04         [24] 3987 	mov	dptr,#0x0004
      0012F1 75 F0 3C         [24] 3988 	mov	b,#0x3c
      0012F4 E4               [12] 3989 	clr	a
      0012F5 C0 07            [24] 3990 	push	ar7
      0012F7 C0 06            [24] 3991 	push	ar6
      0012F9 C0 03            [24] 3992 	push	ar3
      0012FB C0 02            [24] 3993 	push	ar2
      0012FD 12 17 B8         [24] 3994 	lcall	_p18_set_tblptr
      001300 D0 02            [24] 3995 	pop	ar2
      001302 D0 03            [24] 3996 	pop	ar3
                                   3997 ;	isp.c:678: p18_send_cmd_payload(0x0C,tmp3);
      001304 C0 02            [24] 3998 	push	ar2
      001306 C0 03            [24] 3999 	push	ar3
      001308 75 82 0C         [24] 4000 	mov	dpl,#0x0c
      00130B 12 18 8F         [24] 4001 	lcall	_p18_send_cmd_payload
      00130E 15 81            [12] 4002 	dec	sp
      001310 15 81            [12] 4003 	dec	sp
                                   4004 ;	isp.c:679: p18_set_tblptr(0x3C0005);
      001312 90 00 05         [24] 4005 	mov	dptr,#0x0005
      001315 75 F0 3C         [24] 4006 	mov	b,#0x3c
      001318 E4               [12] 4007 	clr	a
      001319 12 17 B8         [24] 4008 	lcall	_p18_set_tblptr
                                   4009 ;	isp.c:680: p18_send_cmd_payload(0x0C,tmp2);
      00131C A8 1E            [24] 4010 	mov	r0,_bp
      00131E 08               [12] 4011 	inc	r0
      00131F E6               [12] 4012 	mov	a,@r0
      001320 C0 E0            [24] 4013 	push	acc
      001322 08               [12] 4014 	inc	r0
      001323 E6               [12] 4015 	mov	a,@r0
      001324 C0 E0            [24] 4016 	push	acc
      001326 75 82 0C         [24] 4017 	mov	dpl,#0x0c
      001329 12 18 8F         [24] 4018 	lcall	_p18_send_cmd_payload
      00132C 15 81            [12] 4019 	dec	sp
      00132E 15 81            [12] 4020 	dec	sp
                                   4021 ;	isp.c:681: p18_set_tblptr(0x3C0006);
      001330 90 00 06         [24] 4022 	mov	dptr,#0x0006
      001333 75 F0 3C         [24] 4023 	mov	b,#0x3c
      001336 E4               [12] 4024 	clr	a
      001337 12 17 B8         [24] 4025 	lcall	_p18_set_tblptr
                                   4026 ;	isp.c:682: p18_send_cmd_payload(0x0C,tmp1);
      00133A 75 82 0C         [24] 4027 	mov	dpl,#0x0c
      00133D 12 18 8F         [24] 4028 	lcall	_p18_send_cmd_payload
      001340 15 81            [12] 4029 	dec	sp
      001342 15 81            [12] 4030 	dec	sp
                                   4031 ;	isp.c:683: p18_send_cmd_payload(0x00,0);
      001344 E4               [12] 4032 	clr	a
      001345 C0 E0            [24] 4033 	push	acc
      001347 C0 E0            [24] 4034 	push	acc
      001349 75 82 00         [24] 4035 	mov	dpl,#0x00
      00134C 12 18 8F         [24] 4036 	lcall	_p18_send_cmd_payload
      00134F 15 81            [12] 4037 	dec	sp
      001351 15 81            [12] 4038 	dec	sp
                                   4039 ;	isp.c:684: isp_send(0x00,4);
      001353 74 04            [12] 4040 	mov	a,#0x04
      001355 C0 E0            [24] 4041 	push	acc
      001357 90 00 00         [24] 4042 	mov	dptr,#0x0000
      00135A 12 10 0F         [24] 4043 	lcall	_isp_send
      00135D 15 81            [12] 4044 	dec	sp
                                   4045 ;	isp.c:685: DLY_ms(5);
      00135F 90 00 05         [24] 4046 	mov	dptr,#0x0005
      001362 12 1C 22         [24] 4047 	lcall	_DLY_ms
                                   4048 ;	isp.c:686: isp_send(0x00,16);
      001365 74 10            [12] 4049 	mov	a,#0x10
      001367 C0 E0            [24] 4050 	push	acc
      001369 90 00 00         [24] 4051 	mov	dptr,#0x0000
      00136C 12 10 0F         [24] 4052 	lcall	_isp_send
      00136F 15 81            [12] 4053 	dec	sp
                                   4054 ;	isp.c:687: }
      001371 85 1E 81         [24] 4055 	mov	sp,_bp
      001374 D0 1E            [24] 4056 	pop	_bp
      001376 22               [24] 4057 	ret
                                   4058 ;------------------------------------------------------------
                                   4059 ;Allocation info for local variables in function 'p18fk_isp_write_pgm'
                                   4060 ;------------------------------------------------------------
                                   4061 ;addr                      Allocated to stack - _bp -6
                                   4062 ;n                         Allocated to stack - _bp -7
                                   4063 ;data                      Allocated to stack - _bp +1
                                   4064 ;i                         Allocated to stack - _bp +4
                                   4065 ;------------------------------------------------------------
                                   4066 ;	isp.c:689: void p18fk_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
                                   4067 ;	-----------------------------------------
                                   4068 ;	 function p18fk_isp_write_pgm
                                   4069 ;	-----------------------------------------
      001377                       4070 _p18fk_isp_write_pgm:
      001377 C0 1E            [24] 4071 	push	_bp
      001379 85 81 1E         [24] 4072 	mov	_bp,sp
      00137C C0 82            [24] 4073 	push	dpl
      00137E C0 83            [24] 4074 	push	dph
      001380 C0 F0            [24] 4075 	push	b
      001382 05 81            [12] 4076 	inc	sp
                                   4077 ;	isp.c:693: p18_send_cmd_payload(0,0x8E7F);
      001384 74 7F            [12] 4078 	mov	a,#0x7f
      001386 C0 E0            [24] 4079 	push	acc
      001388 74 8E            [12] 4080 	mov	a,#0x8e
      00138A C0 E0            [24] 4081 	push	acc
      00138C 75 82 00         [24] 4082 	mov	dpl,#0x00
      00138F 12 18 8F         [24] 4083 	lcall	_p18_send_cmd_payload
      001392 15 81            [12] 4084 	dec	sp
      001394 15 81            [12] 4085 	dec	sp
                                   4086 ;	isp.c:694: p18_send_cmd_payload(0,0x9C7F);
      001396 74 7F            [12] 4087 	mov	a,#0x7f
      001398 C0 E0            [24] 4088 	push	acc
      00139A 74 9C            [12] 4089 	mov	a,#0x9c
      00139C C0 E0            [24] 4090 	push	acc
      00139E 75 82 00         [24] 4091 	mov	dpl,#0x00
      0013A1 12 18 8F         [24] 4092 	lcall	_p18_send_cmd_payload
      0013A4 15 81            [12] 4093 	dec	sp
      0013A6 15 81            [12] 4094 	dec	sp
                                   4095 ;	isp.c:695: p18_send_cmd_payload(0,0x847F);
      0013A8 74 7F            [12] 4096 	mov	a,#0x7f
      0013AA C0 E0            [24] 4097 	push	acc
      0013AC 74 84            [12] 4098 	mov	a,#0x84
      0013AE C0 E0            [24] 4099 	push	acc
      0013B0 75 82 00         [24] 4100 	mov	dpl,#0x00
      0013B3 12 18 8F         [24] 4101 	lcall	_p18_send_cmd_payload
      0013B6 15 81            [12] 4102 	dec	sp
      0013B8 15 81            [12] 4103 	dec	sp
                                   4104 ;	isp.c:696: p18_set_tblptr(addr);
      0013BA E5 1E            [12] 4105 	mov	a,_bp
      0013BC 24 FA            [12] 4106 	add	a,#0xfa
      0013BE F8               [12] 4107 	mov	r0,a
      0013BF 86 82            [24] 4108 	mov	dpl,@r0
      0013C1 08               [12] 4109 	inc	r0
      0013C2 86 83            [24] 4110 	mov	dph,@r0
      0013C4 08               [12] 4111 	inc	r0
      0013C5 86 F0            [24] 4112 	mov	b,@r0
      0013C7 08               [12] 4113 	inc	r0
      0013C8 E6               [12] 4114 	mov	a,@r0
      0013C9 12 17 B8         [24] 4115 	lcall	_p18_set_tblptr
                                   4116 ;	isp.c:697: for (i=0;i<n-1;i++)
      0013CC E5 1E            [12] 4117 	mov	a,_bp
      0013CE 24 04            [12] 4118 	add	a,#0x04
      0013D0 F8               [12] 4119 	mov	r0,a
      0013D1 76 00            [12] 4120 	mov	@r0,#0x00
      0013D3                       4121 00103$:
      0013D3 E5 1E            [12] 4122 	mov	a,_bp
      0013D5 24 F9            [12] 4123 	add	a,#0xf9
      0013D7 F8               [12] 4124 	mov	r0,a
      0013D8 86 02            [24] 4125 	mov	ar2,@r0
      0013DA 7B 00            [12] 4126 	mov	r3,#0x00
      0013DC EA               [12] 4127 	mov	a,r2
      0013DD 24 FF            [12] 4128 	add	a,#0xff
      0013DF FE               [12] 4129 	mov	r6,a
      0013E0 EB               [12] 4130 	mov	a,r3
      0013E1 34 FF            [12] 4131 	addc	a,#0xff
      0013E3 FF               [12] 4132 	mov	r7,a
      0013E4 E5 1E            [12] 4133 	mov	a,_bp
      0013E6 24 04            [12] 4134 	add	a,#0x04
      0013E8 F8               [12] 4135 	mov	r0,a
      0013E9 86 04            [24] 4136 	mov	ar4,@r0
      0013EB 7D 00            [12] 4137 	mov	r5,#0x00
      0013ED C3               [12] 4138 	clr	c
      0013EE EC               [12] 4139 	mov	a,r4
      0013EF 9E               [12] 4140 	subb	a,r6
      0013F0 ED               [12] 4141 	mov	a,r5
      0013F1 64 80            [12] 4142 	xrl	a,#0x80
      0013F3 8F F0            [24] 4143 	mov	b,r7
      0013F5 63 F0 80         [24] 4144 	xrl	b,#0x80
      0013F8 95 F0            [12] 4145 	subb	a,b
      0013FA 50 3F            [24] 4146 	jnc	00101$
                                   4147 ;	isp.c:698: p18_send_cmd_payload(0x0D,data[i]);
      0013FC E5 1E            [12] 4148 	mov	a,_bp
      0013FE 24 04            [12] 4149 	add	a,#0x04
      001400 F8               [12] 4150 	mov	r0,a
      001401 E6               [12] 4151 	mov	a,@r0
      001402 75 F0 02         [24] 4152 	mov	b,#0x02
      001405 A4               [48] 4153 	mul	ab
      001406 FC               [12] 4154 	mov	r4,a
      001407 AF F0            [24] 4155 	mov	r7,b
      001409 A8 1E            [24] 4156 	mov	r0,_bp
      00140B 08               [12] 4157 	inc	r0
      00140C EC               [12] 4158 	mov	a,r4
      00140D 26               [12] 4159 	add	a,@r0
      00140E FC               [12] 4160 	mov	r4,a
      00140F EF               [12] 4161 	mov	a,r7
      001410 08               [12] 4162 	inc	r0
      001411 36               [12] 4163 	addc	a,@r0
      001412 FF               [12] 4164 	mov	r7,a
      001413 08               [12] 4165 	inc	r0
      001414 86 06            [24] 4166 	mov	ar6,@r0
      001416 8C 82            [24] 4167 	mov	dpl,r4
      001418 8F 83            [24] 4168 	mov	dph,r7
      00141A 8E F0            [24] 4169 	mov	b,r6
      00141C 12 21 BE         [24] 4170 	lcall	__gptrget
      00141F FC               [12] 4171 	mov	r4,a
      001420 A3               [24] 4172 	inc	dptr
      001421 12 21 BE         [24] 4173 	lcall	__gptrget
      001424 FF               [12] 4174 	mov	r7,a
      001425 C0 04            [24] 4175 	push	ar4
      001427 C0 07            [24] 4176 	push	ar7
      001429 75 82 0D         [24] 4177 	mov	dpl,#0x0d
      00142C 12 18 8F         [24] 4178 	lcall	_p18_send_cmd_payload
      00142F 15 81            [12] 4179 	dec	sp
      001431 15 81            [12] 4180 	dec	sp
                                   4181 ;	isp.c:697: for (i=0;i<n-1;i++)
      001433 E5 1E            [12] 4182 	mov	a,_bp
      001435 24 04            [12] 4183 	add	a,#0x04
      001437 F8               [12] 4184 	mov	r0,a
      001438 06               [12] 4185 	inc	@r0
      001439 80 98            [24] 4186 	sjmp	00103$
      00143B                       4187 00101$:
                                   4188 ;	isp.c:699: p18_send_cmd_payload(0x0F,data[n-1]);
      00143B 1A               [12] 4189 	dec	r2
      00143C BA FF 01         [24] 4190 	cjne	r2,#0xff,00117$
      00143F 1B               [12] 4191 	dec	r3
      001440                       4192 00117$:
      001440 EA               [12] 4193 	mov	a,r2
      001441 2A               [12] 4194 	add	a,r2
      001442 FA               [12] 4195 	mov	r2,a
      001443 EB               [12] 4196 	mov	a,r3
      001444 33               [12] 4197 	rlc	a
      001445 FB               [12] 4198 	mov	r3,a
      001446 A8 1E            [24] 4199 	mov	r0,_bp
      001448 08               [12] 4200 	inc	r0
      001449 EA               [12] 4201 	mov	a,r2
      00144A 26               [12] 4202 	add	a,@r0
      00144B FA               [12] 4203 	mov	r2,a
      00144C EB               [12] 4204 	mov	a,r3
      00144D 08               [12] 4205 	inc	r0
      00144E 36               [12] 4206 	addc	a,@r0
      00144F FB               [12] 4207 	mov	r3,a
      001450 08               [12] 4208 	inc	r0
      001451 86 07            [24] 4209 	mov	ar7,@r0
      001453 8A 82            [24] 4210 	mov	dpl,r2
      001455 8B 83            [24] 4211 	mov	dph,r3
      001457 8F F0            [24] 4212 	mov	b,r7
      001459 12 21 BE         [24] 4213 	lcall	__gptrget
      00145C FA               [12] 4214 	mov	r2,a
      00145D A3               [24] 4215 	inc	dptr
      00145E 12 21 BE         [24] 4216 	lcall	__gptrget
      001461 FB               [12] 4217 	mov	r3,a
      001462 C0 02            [24] 4218 	push	ar2
      001464 C0 03            [24] 4219 	push	ar3
      001466 75 82 0F         [24] 4220 	mov	dpl,#0x0f
      001469 12 18 8F         [24] 4221 	lcall	_p18_send_cmd_payload
      00146C 15 81            [12] 4222 	dec	sp
      00146E 15 81            [12] 4223 	dec	sp
                                   4224 ;	isp.c:700: p_18_modfied_nop(0);
      001470 75 82 00         [24] 4225 	mov	dpl,#0x00
      001473 12 16 CF         [24] 4226 	lcall	_p_18_modfied_nop
                                   4227 ;	isp.c:701: }
      001476 85 1E 81         [24] 4228 	mov	sp,_bp
      001479 D0 1E            [24] 4229 	pop	_bp
      00147B 22               [24] 4230 	ret
                                   4231 ;------------------------------------------------------------
                                   4232 ;Allocation info for local variables in function 'p18_isp_write_pgm'
                                   4233 ;------------------------------------------------------------
                                   4234 ;addr                      Allocated to stack - _bp -6
                                   4235 ;n                         Allocated to stack - _bp -7
                                   4236 ;data                      Allocated to stack - _bp +1
                                   4237 ;i                         Allocated to stack - _bp +4
                                   4238 ;------------------------------------------------------------
                                   4239 ;	isp.c:703: void p18_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
                                   4240 ;	-----------------------------------------
                                   4241 ;	 function p18_isp_write_pgm
                                   4242 ;	-----------------------------------------
      00147C                       4243 _p18_isp_write_pgm:
      00147C C0 1E            [24] 4244 	push	_bp
      00147E 85 81 1E         [24] 4245 	mov	_bp,sp
      001481 C0 82            [24] 4246 	push	dpl
      001483 C0 83            [24] 4247 	push	dph
      001485 C0 F0            [24] 4248 	push	b
      001487 05 81            [12] 4249 	inc	sp
                                   4250 ;	isp.c:707: p18_send_cmd_payload(0,0x8EA6);
      001489 74 A6            [12] 4251 	mov	a,#0xa6
      00148B C0 E0            [24] 4252 	push	acc
      00148D 74 8E            [12] 4253 	mov	a,#0x8e
      00148F C0 E0            [24] 4254 	push	acc
      001491 75 82 00         [24] 4255 	mov	dpl,#0x00
      001494 12 18 8F         [24] 4256 	lcall	_p18_send_cmd_payload
      001497 15 81            [12] 4257 	dec	sp
      001499 15 81            [12] 4258 	dec	sp
                                   4259 ;	isp.c:708: p18_send_cmd_payload(0,0x9CA6);
      00149B 74 A6            [12] 4260 	mov	a,#0xa6
      00149D C0 E0            [24] 4261 	push	acc
      00149F 74 9C            [12] 4262 	mov	a,#0x9c
      0014A1 C0 E0            [24] 4263 	push	acc
      0014A3 75 82 00         [24] 4264 	mov	dpl,#0x00
      0014A6 12 18 8F         [24] 4265 	lcall	_p18_send_cmd_payload
      0014A9 15 81            [12] 4266 	dec	sp
      0014AB 15 81            [12] 4267 	dec	sp
                                   4268 ;	isp.c:709: p18_send_cmd_payload(0,0x84A6);
      0014AD 74 A6            [12] 4269 	mov	a,#0xa6
      0014AF C0 E0            [24] 4270 	push	acc
      0014B1 74 84            [12] 4271 	mov	a,#0x84
      0014B3 C0 E0            [24] 4272 	push	acc
      0014B5 75 82 00         [24] 4273 	mov	dpl,#0x00
      0014B8 12 18 8F         [24] 4274 	lcall	_p18_send_cmd_payload
      0014BB 15 81            [12] 4275 	dec	sp
      0014BD 15 81            [12] 4276 	dec	sp
                                   4277 ;	isp.c:710: p18_set_tblptr(addr);
      0014BF E5 1E            [12] 4278 	mov	a,_bp
      0014C1 24 FA            [12] 4279 	add	a,#0xfa
      0014C3 F8               [12] 4280 	mov	r0,a
      0014C4 86 82            [24] 4281 	mov	dpl,@r0
      0014C6 08               [12] 4282 	inc	r0
      0014C7 86 83            [24] 4283 	mov	dph,@r0
      0014C9 08               [12] 4284 	inc	r0
      0014CA 86 F0            [24] 4285 	mov	b,@r0
      0014CC 08               [12] 4286 	inc	r0
      0014CD E6               [12] 4287 	mov	a,@r0
      0014CE 12 17 B8         [24] 4288 	lcall	_p18_set_tblptr
                                   4289 ;	isp.c:711: for (i=0;i<n-1;i++)
      0014D1 E5 1E            [12] 4290 	mov	a,_bp
      0014D3 24 04            [12] 4291 	add	a,#0x04
      0014D5 F8               [12] 4292 	mov	r0,a
      0014D6 76 00            [12] 4293 	mov	@r0,#0x00
      0014D8                       4294 00103$:
      0014D8 E5 1E            [12] 4295 	mov	a,_bp
      0014DA 24 F9            [12] 4296 	add	a,#0xf9
      0014DC F8               [12] 4297 	mov	r0,a
      0014DD 86 02            [24] 4298 	mov	ar2,@r0
      0014DF 7B 00            [12] 4299 	mov	r3,#0x00
      0014E1 EA               [12] 4300 	mov	a,r2
      0014E2 24 FF            [12] 4301 	add	a,#0xff
      0014E4 FE               [12] 4302 	mov	r6,a
      0014E5 EB               [12] 4303 	mov	a,r3
      0014E6 34 FF            [12] 4304 	addc	a,#0xff
      0014E8 FF               [12] 4305 	mov	r7,a
      0014E9 E5 1E            [12] 4306 	mov	a,_bp
      0014EB 24 04            [12] 4307 	add	a,#0x04
      0014ED F8               [12] 4308 	mov	r0,a
      0014EE 86 04            [24] 4309 	mov	ar4,@r0
      0014F0 7D 00            [12] 4310 	mov	r5,#0x00
      0014F2 C3               [12] 4311 	clr	c
      0014F3 EC               [12] 4312 	mov	a,r4
      0014F4 9E               [12] 4313 	subb	a,r6
      0014F5 ED               [12] 4314 	mov	a,r5
      0014F6 64 80            [12] 4315 	xrl	a,#0x80
      0014F8 8F F0            [24] 4316 	mov	b,r7
      0014FA 63 F0 80         [24] 4317 	xrl	b,#0x80
      0014FD 95 F0            [12] 4318 	subb	a,b
      0014FF 50 3F            [24] 4319 	jnc	00101$
                                   4320 ;	isp.c:712: p18_send_cmd_payload(0x0D,data[i]);
      001501 E5 1E            [12] 4321 	mov	a,_bp
      001503 24 04            [12] 4322 	add	a,#0x04
      001505 F8               [12] 4323 	mov	r0,a
      001506 E6               [12] 4324 	mov	a,@r0
      001507 75 F0 02         [24] 4325 	mov	b,#0x02
      00150A A4               [48] 4326 	mul	ab
      00150B FC               [12] 4327 	mov	r4,a
      00150C AF F0            [24] 4328 	mov	r7,b
      00150E A8 1E            [24] 4329 	mov	r0,_bp
      001510 08               [12] 4330 	inc	r0
      001511 EC               [12] 4331 	mov	a,r4
      001512 26               [12] 4332 	add	a,@r0
      001513 FC               [12] 4333 	mov	r4,a
      001514 EF               [12] 4334 	mov	a,r7
      001515 08               [12] 4335 	inc	r0
      001516 36               [12] 4336 	addc	a,@r0
      001517 FF               [12] 4337 	mov	r7,a
      001518 08               [12] 4338 	inc	r0
      001519 86 06            [24] 4339 	mov	ar6,@r0
      00151B 8C 82            [24] 4340 	mov	dpl,r4
      00151D 8F 83            [24] 4341 	mov	dph,r7
      00151F 8E F0            [24] 4342 	mov	b,r6
      001521 12 21 BE         [24] 4343 	lcall	__gptrget
      001524 FC               [12] 4344 	mov	r4,a
      001525 A3               [24] 4345 	inc	dptr
      001526 12 21 BE         [24] 4346 	lcall	__gptrget
      001529 FF               [12] 4347 	mov	r7,a
      00152A C0 04            [24] 4348 	push	ar4
      00152C C0 07            [24] 4349 	push	ar7
      00152E 75 82 0D         [24] 4350 	mov	dpl,#0x0d
      001531 12 18 8F         [24] 4351 	lcall	_p18_send_cmd_payload
      001534 15 81            [12] 4352 	dec	sp
      001536 15 81            [12] 4353 	dec	sp
                                   4354 ;	isp.c:711: for (i=0;i<n-1;i++)
      001538 E5 1E            [12] 4355 	mov	a,_bp
      00153A 24 04            [12] 4356 	add	a,#0x04
      00153C F8               [12] 4357 	mov	r0,a
      00153D 06               [12] 4358 	inc	@r0
      00153E 80 98            [24] 4359 	sjmp	00103$
      001540                       4360 00101$:
                                   4361 ;	isp.c:713: p18_send_cmd_payload(0x0F,data[n-1]);
      001540 1A               [12] 4362 	dec	r2
      001541 BA FF 01         [24] 4363 	cjne	r2,#0xff,00117$
      001544 1B               [12] 4364 	dec	r3
      001545                       4365 00117$:
      001545 EA               [12] 4366 	mov	a,r2
      001546 2A               [12] 4367 	add	a,r2
      001547 FA               [12] 4368 	mov	r2,a
      001548 EB               [12] 4369 	mov	a,r3
      001549 33               [12] 4370 	rlc	a
      00154A FB               [12] 4371 	mov	r3,a
      00154B A8 1E            [24] 4372 	mov	r0,_bp
      00154D 08               [12] 4373 	inc	r0
      00154E EA               [12] 4374 	mov	a,r2
      00154F 26               [12] 4375 	add	a,@r0
      001550 FA               [12] 4376 	mov	r2,a
      001551 EB               [12] 4377 	mov	a,r3
      001552 08               [12] 4378 	inc	r0
      001553 36               [12] 4379 	addc	a,@r0
      001554 FB               [12] 4380 	mov	r3,a
      001555 08               [12] 4381 	inc	r0
      001556 86 07            [24] 4382 	mov	ar7,@r0
      001558 8A 82            [24] 4383 	mov	dpl,r2
      00155A 8B 83            [24] 4384 	mov	dph,r3
      00155C 8F F0            [24] 4385 	mov	b,r7
      00155E 12 21 BE         [24] 4386 	lcall	__gptrget
      001561 FA               [12] 4387 	mov	r2,a
      001562 A3               [24] 4388 	inc	dptr
      001563 12 21 BE         [24] 4389 	lcall	__gptrget
      001566 FB               [12] 4390 	mov	r3,a
      001567 C0 02            [24] 4391 	push	ar2
      001569 C0 03            [24] 4392 	push	ar3
      00156B 75 82 0F         [24] 4393 	mov	dpl,#0x0f
      00156E 12 18 8F         [24] 4394 	lcall	_p18_send_cmd_payload
      001571 15 81            [12] 4395 	dec	sp
      001573 15 81            [12] 4396 	dec	sp
                                   4397 ;	isp.c:714: p_18_modfied_nop(1);
      001575 75 82 01         [24] 4398 	mov	dpl,#0x01
      001578 12 16 CF         [24] 4399 	lcall	_p_18_modfied_nop
                                   4400 ;	isp.c:715: }
      00157B 85 1E 81         [24] 4401 	mov	sp,_bp
      00157E D0 1E            [24] 4402 	pop	_bp
      001580 22               [24] 4403 	ret
                                   4404 ;------------------------------------------------------------
                                   4405 ;Allocation info for local variables in function 'p18_isp_write_cfg'
                                   4406 ;------------------------------------------------------------
                                   4407 ;data2                     Allocated to stack - _bp -3
                                   4408 ;addr                      Allocated to stack - _bp -7
                                   4409 ;data1                     Allocated to registers r7 
                                   4410 ;i                         Allocated to registers r6 r7 
                                   4411 ;------------------------------------------------------------
                                   4412 ;	isp.c:717: void p18_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr)
                                   4413 ;	-----------------------------------------
                                   4414 ;	 function p18_isp_write_cfg
                                   4415 ;	-----------------------------------------
      001581                       4416 _p18_isp_write_cfg:
      001581 C0 1E            [24] 4417 	push	_bp
      001583 85 81 1E         [24] 4418 	mov	_bp,sp
      001586 AF 82            [24] 4419 	mov	r7,dpl
                                   4420 ;	isp.c:721: p18_send_cmd_payload(0,0x8EA6);
      001588 C0 07            [24] 4421 	push	ar7
      00158A 74 A6            [12] 4422 	mov	a,#0xa6
      00158C C0 E0            [24] 4423 	push	acc
      00158E 74 8E            [12] 4424 	mov	a,#0x8e
      001590 C0 E0            [24] 4425 	push	acc
      001592 75 82 00         [24] 4426 	mov	dpl,#0x00
      001595 12 18 8F         [24] 4427 	lcall	_p18_send_cmd_payload
      001598 15 81            [12] 4428 	dec	sp
      00159A 15 81            [12] 4429 	dec	sp
                                   4430 ;	isp.c:722: p18_send_cmd_payload(0,0x8CA6);
      00159C 74 A6            [12] 4431 	mov	a,#0xa6
      00159E C0 E0            [24] 4432 	push	acc
      0015A0 74 8C            [12] 4433 	mov	a,#0x8c
      0015A2 C0 E0            [24] 4434 	push	acc
      0015A4 75 82 00         [24] 4435 	mov	dpl,#0x00
      0015A7 12 18 8F         [24] 4436 	lcall	_p18_send_cmd_payload
      0015AA 15 81            [12] 4437 	dec	sp
      0015AC 15 81            [12] 4438 	dec	sp
                                   4439 ;	isp.c:723: p18_send_cmd_payload(0,0x84A6);
      0015AE 74 A6            [12] 4440 	mov	a,#0xa6
      0015B0 C0 E0            [24] 4441 	push	acc
      0015B2 74 84            [12] 4442 	mov	a,#0x84
      0015B4 C0 E0            [24] 4443 	push	acc
      0015B6 75 82 00         [24] 4444 	mov	dpl,#0x00
      0015B9 12 18 8F         [24] 4445 	lcall	_p18_send_cmd_payload
      0015BC 15 81            [12] 4446 	dec	sp
      0015BE 15 81            [12] 4447 	dec	sp
                                   4448 ;	isp.c:724: p18_set_tblptr(addr);
      0015C0 E5 1E            [12] 4449 	mov	a,_bp
      0015C2 24 F9            [12] 4450 	add	a,#0xf9
      0015C4 F8               [12] 4451 	mov	r0,a
      0015C5 86 82            [24] 4452 	mov	dpl,@r0
      0015C7 08               [12] 4453 	inc	r0
      0015C8 86 83            [24] 4454 	mov	dph,@r0
      0015CA 08               [12] 4455 	inc	r0
      0015CB 86 F0            [24] 4456 	mov	b,@r0
      0015CD 08               [12] 4457 	inc	r0
      0015CE E6               [12] 4458 	mov	a,@r0
      0015CF 12 17 B8         [24] 4459 	lcall	_p18_set_tblptr
                                   4460 ;	isp.c:725: p18_send_cmd_payload(0x0F,data1);
      0015D2 7E 00            [12] 4461 	mov	r6,#0x00
      0015D4 C0 06            [24] 4462 	push	ar6
      0015D6 75 82 0F         [24] 4463 	mov	dpl,#0x0f
      0015D9 12 18 8F         [24] 4464 	lcall	_p18_send_cmd_payload
      0015DC 15 81            [12] 4465 	dec	sp
      0015DE 15 81            [12] 4466 	dec	sp
                                   4467 ;	isp.c:726: p_18_modfied_nop(1);
      0015E0 75 82 01         [24] 4468 	mov	dpl,#0x01
      0015E3 12 16 CF         [24] 4469 	lcall	_p_18_modfied_nop
                                   4470 ;	isp.c:727: DLY_ms(5);
      0015E6 90 00 05         [24] 4471 	mov	dptr,#0x0005
      0015E9 12 1C 22         [24] 4472 	lcall	_DLY_ms
                                   4473 ;	isp.c:728: p18_set_tblptr(addr+1);
      0015EC E5 1E            [12] 4474 	mov	a,_bp
      0015EE 24 F9            [12] 4475 	add	a,#0xf9
      0015F0 F8               [12] 4476 	mov	r0,a
      0015F1 74 01            [12] 4477 	mov	a,#0x01
      0015F3 26               [12] 4478 	add	a,@r0
      0015F4 FC               [12] 4479 	mov	r4,a
      0015F5 E4               [12] 4480 	clr	a
      0015F6 08               [12] 4481 	inc	r0
      0015F7 36               [12] 4482 	addc	a,@r0
      0015F8 FD               [12] 4483 	mov	r5,a
      0015F9 E4               [12] 4484 	clr	a
      0015FA 08               [12] 4485 	inc	r0
      0015FB 36               [12] 4486 	addc	a,@r0
      0015FC FE               [12] 4487 	mov	r6,a
      0015FD E4               [12] 4488 	clr	a
      0015FE 08               [12] 4489 	inc	r0
      0015FF 36               [12] 4490 	addc	a,@r0
      001600 8C 82            [24] 4491 	mov	dpl,r4
      001602 8D 83            [24] 4492 	mov	dph,r5
      001604 8E F0            [24] 4493 	mov	b,r6
      001606 12 17 B8         [24] 4494 	lcall	_p18_set_tblptr
                                   4495 ;	isp.c:729: i = data2;
      001609 E5 1E            [12] 4496 	mov	a,_bp
      00160B 24 FD            [12] 4497 	add	a,#0xfd
      00160D F8               [12] 4498 	mov	r0,a
      00160E 86 06            [24] 4499 	mov	ar6,@r0
                                   4500 ;	isp.c:730: i = i << 8;
      001610 8E 07            [24] 4501 	mov	ar7,r6
      001612 7E 00            [12] 4502 	mov	r6,#0x00
                                   4503 ;	isp.c:731: p18_send_cmd_payload(0x0F,i);
      001614 C0 06            [24] 4504 	push	ar6
      001616 C0 07            [24] 4505 	push	ar7
      001618 75 82 0F         [24] 4506 	mov	dpl,#0x0f
      00161B 12 18 8F         [24] 4507 	lcall	_p18_send_cmd_payload
      00161E 15 81            [12] 4508 	dec	sp
      001620 15 81            [12] 4509 	dec	sp
                                   4510 ;	isp.c:732: p_18_modfied_nop(1);
      001622 75 82 01         [24] 4511 	mov	dpl,#0x01
      001625 12 16 CF         [24] 4512 	lcall	_p_18_modfied_nop
                                   4513 ;	isp.c:733: DLY_ms(5);
      001628 90 00 05         [24] 4514 	mov	dptr,#0x0005
      00162B 12 1C 22         [24] 4515 	lcall	_DLY_ms
                                   4516 ;	isp.c:734: }
      00162E D0 1E            [24] 4517 	pop	_bp
      001630 22               [24] 4518 	ret
                                   4519 ;------------------------------------------------------------
                                   4520 ;Allocation info for local variables in function 'p18fk_isp_write_cfg'
                                   4521 ;------------------------------------------------------------
                                   4522 ;data2                     Allocated to stack - _bp -3
                                   4523 ;addr                      Allocated to stack - _bp -7
                                   4524 ;data1                     Allocated to registers r7 
                                   4525 ;i                         Allocated to registers r6 r7 
                                   4526 ;------------------------------------------------------------
                                   4527 ;	isp.c:736: void p18fk_isp_write_cfg (unsigned char data1, unsigned char data2, unsigned long addr)
                                   4528 ;	-----------------------------------------
                                   4529 ;	 function p18fk_isp_write_cfg
                                   4530 ;	-----------------------------------------
      001631                       4531 _p18fk_isp_write_cfg:
      001631 C0 1E            [24] 4532 	push	_bp
      001633 85 81 1E         [24] 4533 	mov	_bp,sp
      001636 AF 82            [24] 4534 	mov	r7,dpl
                                   4535 ;	isp.c:740: p18_send_cmd_payload(0,0x8E7F);
      001638 C0 07            [24] 4536 	push	ar7
      00163A 74 7F            [12] 4537 	mov	a,#0x7f
      00163C C0 E0            [24] 4538 	push	acc
      00163E 74 8E            [12] 4539 	mov	a,#0x8e
      001640 C0 E0            [24] 4540 	push	acc
      001642 75 82 00         [24] 4541 	mov	dpl,#0x00
      001645 12 18 8F         [24] 4542 	lcall	_p18_send_cmd_payload
      001648 15 81            [12] 4543 	dec	sp
      00164A 15 81            [12] 4544 	dec	sp
                                   4545 ;	isp.c:741: p18_send_cmd_payload(0,0x8C7F);
      00164C 74 7F            [12] 4546 	mov	a,#0x7f
      00164E C0 E0            [24] 4547 	push	acc
      001650 74 8C            [12] 4548 	mov	a,#0x8c
      001652 C0 E0            [24] 4549 	push	acc
      001654 75 82 00         [24] 4550 	mov	dpl,#0x00
      001657 12 18 8F         [24] 4551 	lcall	_p18_send_cmd_payload
      00165A 15 81            [12] 4552 	dec	sp
      00165C 15 81            [12] 4553 	dec	sp
                                   4554 ;	isp.c:742: p18_set_tblptr(addr);
      00165E E5 1E            [12] 4555 	mov	a,_bp
      001660 24 F9            [12] 4556 	add	a,#0xf9
      001662 F8               [12] 4557 	mov	r0,a
      001663 86 82            [24] 4558 	mov	dpl,@r0
      001665 08               [12] 4559 	inc	r0
      001666 86 83            [24] 4560 	mov	dph,@r0
      001668 08               [12] 4561 	inc	r0
      001669 86 F0            [24] 4562 	mov	b,@r0
      00166B 08               [12] 4563 	inc	r0
      00166C E6               [12] 4564 	mov	a,@r0
      00166D 12 17 B8         [24] 4565 	lcall	_p18_set_tblptr
                                   4566 ;	isp.c:743: p18_send_cmd_payload(0x0F,data1);
      001670 7E 00            [12] 4567 	mov	r6,#0x00
      001672 C0 06            [24] 4568 	push	ar6
      001674 75 82 0F         [24] 4569 	mov	dpl,#0x0f
      001677 12 18 8F         [24] 4570 	lcall	_p18_send_cmd_payload
      00167A 15 81            [12] 4571 	dec	sp
      00167C 15 81            [12] 4572 	dec	sp
                                   4573 ;	isp.c:744: p_18_modfied_nop(1);
      00167E 75 82 01         [24] 4574 	mov	dpl,#0x01
      001681 12 16 CF         [24] 4575 	lcall	_p_18_modfied_nop
                                   4576 ;	isp.c:745: DLY_ms(5);
      001684 90 00 05         [24] 4577 	mov	dptr,#0x0005
      001687 12 1C 22         [24] 4578 	lcall	_DLY_ms
                                   4579 ;	isp.c:746: p18_set_tblptr(addr+1);
      00168A E5 1E            [12] 4580 	mov	a,_bp
      00168C 24 F9            [12] 4581 	add	a,#0xf9
      00168E F8               [12] 4582 	mov	r0,a
      00168F 74 01            [12] 4583 	mov	a,#0x01
      001691 26               [12] 4584 	add	a,@r0
      001692 FC               [12] 4585 	mov	r4,a
      001693 E4               [12] 4586 	clr	a
      001694 08               [12] 4587 	inc	r0
      001695 36               [12] 4588 	addc	a,@r0
      001696 FD               [12] 4589 	mov	r5,a
      001697 E4               [12] 4590 	clr	a
      001698 08               [12] 4591 	inc	r0
      001699 36               [12] 4592 	addc	a,@r0
      00169A FE               [12] 4593 	mov	r6,a
      00169B E4               [12] 4594 	clr	a
      00169C 08               [12] 4595 	inc	r0
      00169D 36               [12] 4596 	addc	a,@r0
      00169E 8C 82            [24] 4597 	mov	dpl,r4
      0016A0 8D 83            [24] 4598 	mov	dph,r5
      0016A2 8E F0            [24] 4599 	mov	b,r6
      0016A4 12 17 B8         [24] 4600 	lcall	_p18_set_tblptr
                                   4601 ;	isp.c:747: i = data2;
      0016A7 E5 1E            [12] 4602 	mov	a,_bp
      0016A9 24 FD            [12] 4603 	add	a,#0xfd
      0016AB F8               [12] 4604 	mov	r0,a
      0016AC 86 06            [24] 4605 	mov	ar6,@r0
                                   4606 ;	isp.c:748: i = i << 8;
      0016AE 8E 07            [24] 4607 	mov	ar7,r6
      0016B0 7E 00            [12] 4608 	mov	r6,#0x00
                                   4609 ;	isp.c:749: p18_send_cmd_payload(0x0F,i);
      0016B2 C0 06            [24] 4610 	push	ar6
      0016B4 C0 07            [24] 4611 	push	ar7
      0016B6 75 82 0F         [24] 4612 	mov	dpl,#0x0f
      0016B9 12 18 8F         [24] 4613 	lcall	_p18_send_cmd_payload
      0016BC 15 81            [12] 4614 	dec	sp
      0016BE 15 81            [12] 4615 	dec	sp
                                   4616 ;	isp.c:750: p_18_modfied_nop(1);
      0016C0 75 82 01         [24] 4617 	mov	dpl,#0x01
      0016C3 12 16 CF         [24] 4618 	lcall	_p_18_modfied_nop
                                   4619 ;	isp.c:751: DLY_ms(5);
      0016C6 90 00 05         [24] 4620 	mov	dptr,#0x0005
      0016C9 12 1C 22         [24] 4621 	lcall	_DLY_ms
                                   4622 ;	isp.c:752: }
      0016CC D0 1E            [24] 4623 	pop	_bp
      0016CE 22               [24] 4624 	ret
                                   4625 ;------------------------------------------------------------
                                   4626 ;Allocation info for local variables in function 'p_18_modfied_nop'
                                   4627 ;------------------------------------------------------------
                                   4628 ;nop_long                  Allocated to registers r7 
                                   4629 ;i                         Allocated to registers r6 
                                   4630 ;------------------------------------------------------------
                                   4631 ;	isp.c:754: void p_18_modfied_nop (unsigned char nop_long)
                                   4632 ;	-----------------------------------------
                                   4633 ;	 function p_18_modfied_nop
                                   4634 ;	-----------------------------------------
      0016CF                       4635 _p_18_modfied_nop:
      0016CF AF 82            [24] 4636 	mov	r7,dpl
                                   4637 ;	isp.c:757: ISP_DAT_D_O
      0016D1 53 92 7F         [24] 4638 	anl	_P1_MOD_OC,#0x7f
      0016D4 43 93 80         [24] 4639 	orl	_P1_DIR_PU,#0x80
                                   4640 ;	isp.c:758: ISP_DAT_0
                                   4641 ;	assignBit
      0016D7 C2 97            [12] 4642 	clr	_PP17
                                   4643 ;	isp.c:759: for (i=0;i<3;i++)
      0016D9 7E 00            [12] 4644 	mov	r6,#0x00
      0016DB                       4645 00104$:
                                   4646 ;	isp.c:761: DLY_us(ISP_CLK_DELAY);
      0016DB 90 00 01         [24] 4647 	mov	dptr,#0x0001
      0016DE C0 07            [24] 4648 	push	ar7
      0016E0 C0 06            [24] 4649 	push	ar6
      0016E2 12 1C 04         [24] 4650 	lcall	_DLY_us
                                   4651 ;	isp.c:762: ISP_CLK_1
                                   4652 ;	assignBit
      0016E5 D2 96            [12] 4653 	setb	_PP16
                                   4654 ;	isp.c:763: DLY_us(ISP_CLK_DELAY);
      0016E7 90 00 01         [24] 4655 	mov	dptr,#0x0001
      0016EA 12 1C 04         [24] 4656 	lcall	_DLY_us
      0016ED D0 06            [24] 4657 	pop	ar6
      0016EF D0 07            [24] 4658 	pop	ar7
                                   4659 ;	isp.c:764: ISP_CLK_0
                                   4660 ;	assignBit
      0016F1 C2 96            [12] 4661 	clr	_PP16
                                   4662 ;	isp.c:759: for (i=0;i<3;i++)
      0016F3 0E               [12] 4663 	inc	r6
      0016F4 BE 03 00         [24] 4664 	cjne	r6,#0x03,00121$
      0016F7                       4665 00121$:
      0016F7 40 E2            [24] 4666 	jc	00104$
                                   4667 ;	isp.c:766: DLY_us(ISP_CLK_DELAY);
      0016F9 90 00 01         [24] 4668 	mov	dptr,#0x0001
      0016FC C0 07            [24] 4669 	push	ar7
      0016FE 12 1C 04         [24] 4670 	lcall	_DLY_us
      001701 D0 07            [24] 4671 	pop	ar7
                                   4672 ;	isp.c:767: ISP_CLK_1
                                   4673 ;	assignBit
      001703 D2 96            [12] 4674 	setb	_PP16
                                   4675 ;	isp.c:768: if (nop_long==1) DLY_ms(4);
      001705 BF 01 06         [24] 4676 	cjne	r7,#0x01,00103$
      001708 90 00 04         [24] 4677 	mov	dptr,#0x0004
      00170B 12 1C 22         [24] 4678 	lcall	_DLY_ms
      00170E                       4679 00103$:
                                   4680 ;	isp.c:769: DLY_ms(1);
      00170E 90 00 01         [24] 4681 	mov	dptr,#0x0001
      001711 12 1C 22         [24] 4682 	lcall	_DLY_ms
                                   4683 ;	isp.c:770: ISP_CLK_0
                                   4684 ;	assignBit
      001714 C2 96            [12] 4685 	clr	_PP16
                                   4686 ;	isp.c:771: DLY_us(ISP_CLK_DELAY);
      001716 90 00 01         [24] 4687 	mov	dptr,#0x0001
      001719 12 1C 04         [24] 4688 	lcall	_DLY_us
                                   4689 ;	isp.c:772: isp_send(0x00,16);
      00171C 74 10            [12] 4690 	mov	a,#0x10
      00171E C0 E0            [24] 4691 	push	acc
      001720 90 00 00         [24] 4692 	mov	dptr,#0x0000
      001723 12 10 0F         [24] 4693 	lcall	_isp_send
      001726 15 81            [12] 4694 	dec	sp
                                   4695 ;	isp.c:773: }
      001728 22               [24] 4696 	ret
                                   4697 ;------------------------------------------------------------
                                   4698 ;Allocation info for local variables in function 'p_18_isp_read_pgm'
                                   4699 ;------------------------------------------------------------
                                   4700 ;addr                      Allocated to stack - _bp -6
                                   4701 ;n                         Allocated to stack - _bp -7
                                   4702 ;data                      Allocated to stack - _bp +1
                                   4703 ;i                         Allocated to registers r4 
                                   4704 ;tmp1                      Allocated to registers r5 r6 
                                   4705 ;tmp2                      Allocated to stack - _bp +4
                                   4706 ;------------------------------------------------------------
                                   4707 ;	isp.c:775: void p_18_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n)
                                   4708 ;	-----------------------------------------
                                   4709 ;	 function p_18_isp_read_pgm
                                   4710 ;	-----------------------------------------
      001729                       4711 _p_18_isp_read_pgm:
      001729 C0 1E            [24] 4712 	push	_bp
      00172B 85 81 1E         [24] 4713 	mov	_bp,sp
      00172E C0 82            [24] 4714 	push	dpl
      001730 C0 83            [24] 4715 	push	dph
      001732 C0 F0            [24] 4716 	push	b
      001734 05 81            [12] 4717 	inc	sp
      001736 05 81            [12] 4718 	inc	sp
                                   4719 ;	isp.c:780: p18_set_tblptr(addr);
      001738 E5 1E            [12] 4720 	mov	a,_bp
      00173A 24 FA            [12] 4721 	add	a,#0xfa
      00173C F8               [12] 4722 	mov	r0,a
      00173D 86 82            [24] 4723 	mov	dpl,@r0
      00173F 08               [12] 4724 	inc	r0
      001740 86 83            [24] 4725 	mov	dph,@r0
      001742 08               [12] 4726 	inc	r0
      001743 86 F0            [24] 4727 	mov	b,@r0
      001745 08               [12] 4728 	inc	r0
      001746 E6               [12] 4729 	mov	a,@r0
      001747 12 17 B8         [24] 4730 	lcall	_p18_set_tblptr
                                   4731 ;	isp.c:781: for (i=0;i<n;i++)
      00174A 7C 00            [12] 4732 	mov	r4,#0x00
      00174C                       4733 00103$:
      00174C E5 1E            [12] 4734 	mov	a,_bp
      00174E 24 F9            [12] 4735 	add	a,#0xf9
      001750 F8               [12] 4736 	mov	r0,a
      001751 C3               [12] 4737 	clr	c
      001752 EC               [12] 4738 	mov	a,r4
      001753 96               [12] 4739 	subb	a,@r0
      001754 50 5C            [24] 4740 	jnc	00105$
                                   4741 ;	isp.c:783: tmp1 =  p18_read_pgm_byte();
      001756 C0 04            [24] 4742 	push	ar4
      001758 12 18 4B         [24] 4743 	lcall	_p18_read_pgm_byte
      00175B AB 82            [24] 4744 	mov	r3,dpl
      00175D D0 04            [24] 4745 	pop	ar4
      00175F 8B 05            [24] 4746 	mov	ar5,r3
      001761 7E 00            [12] 4747 	mov	r6,#0x00
                                   4748 ;	isp.c:784: tmp2 =  p18_read_pgm_byte();
      001763 C0 06            [24] 4749 	push	ar6
      001765 C0 05            [24] 4750 	push	ar5
      001767 C0 04            [24] 4751 	push	ar4
      001769 12 18 4B         [24] 4752 	lcall	_p18_read_pgm_byte
      00176C AB 82            [24] 4753 	mov	r3,dpl
      00176E D0 04            [24] 4754 	pop	ar4
      001770 D0 05            [24] 4755 	pop	ar5
      001772 D0 06            [24] 4756 	pop	ar6
                                   4757 ;	isp.c:785: tmp2 = tmp2<<8;
      001774 E5 1E            [12] 4758 	mov	a,_bp
      001776 24 04            [12] 4759 	add	a,#0x04
      001778 F8               [12] 4760 	mov	r0,a
      001779 08               [12] 4761 	inc	r0
      00177A A6 03            [24] 4762 	mov	@r0,ar3
      00177C 18               [12] 4763 	dec	r0
      00177D 76 00            [12] 4764 	mov	@r0,#0x00
                                   4765 ;	isp.c:786: data[i] = tmp1|tmp2;
      00177F EC               [12] 4766 	mov	a,r4
      001780 75 F0 02         [24] 4767 	mov	b,#0x02
      001783 A4               [48] 4768 	mul	ab
      001784 FA               [12] 4769 	mov	r2,a
      001785 AB F0            [24] 4770 	mov	r3,b
      001787 A8 1E            [24] 4771 	mov	r0,_bp
      001789 08               [12] 4772 	inc	r0
      00178A EA               [12] 4773 	mov	a,r2
      00178B 26               [12] 4774 	add	a,@r0
      00178C FA               [12] 4775 	mov	r2,a
      00178D EB               [12] 4776 	mov	a,r3
      00178E 08               [12] 4777 	inc	r0
      00178F 36               [12] 4778 	addc	a,@r0
      001790 FB               [12] 4779 	mov	r3,a
      001791 08               [12] 4780 	inc	r0
      001792 86 07            [24] 4781 	mov	ar7,@r0
      001794 E5 1E            [12] 4782 	mov	a,_bp
      001796 24 04            [12] 4783 	add	a,#0x04
      001798 F8               [12] 4784 	mov	r0,a
      001799 E6               [12] 4785 	mov	a,@r0
      00179A 42 05            [12] 4786 	orl	ar5,a
      00179C 08               [12] 4787 	inc	r0
      00179D E6               [12] 4788 	mov	a,@r0
      00179E 42 06            [12] 4789 	orl	ar6,a
      0017A0 8A 82            [24] 4790 	mov	dpl,r2
      0017A2 8B 83            [24] 4791 	mov	dph,r3
      0017A4 8F F0            [24] 4792 	mov	b,r7
      0017A6 ED               [12] 4793 	mov	a,r5
      0017A7 12 21 A3         [24] 4794 	lcall	__gptrput
      0017AA A3               [24] 4795 	inc	dptr
      0017AB EE               [12] 4796 	mov	a,r6
      0017AC 12 21 A3         [24] 4797 	lcall	__gptrput
                                   4798 ;	isp.c:781: for (i=0;i<n;i++)
      0017AF 0C               [12] 4799 	inc	r4
      0017B0 80 9A            [24] 4800 	sjmp	00103$
      0017B2                       4801 00105$:
                                   4802 ;	isp.c:788: }
      0017B2 85 1E 81         [24] 4803 	mov	sp,_bp
      0017B5 D0 1E            [24] 4804 	pop	_bp
      0017B7 22               [24] 4805 	ret
                                   4806 ;------------------------------------------------------------
                                   4807 ;Allocation info for local variables in function 'p18_set_tblptr'
                                   4808 ;------------------------------------------------------------
                                   4809 ;val                       Allocated to registers r4 r5 r6 r7 
                                   4810 ;------------------------------------------------------------
                                   4811 ;	isp.c:791: void p18_set_tblptr (unsigned long val)
                                   4812 ;	-----------------------------------------
                                   4813 ;	 function p18_set_tblptr
                                   4814 ;	-----------------------------------------
      0017B8                       4815 _p18_set_tblptr:
      0017B8 AC 82            [24] 4816 	mov	r4,dpl
      0017BA AD 83            [24] 4817 	mov	r5,dph
      0017BC AE F0            [24] 4818 	mov	r6,b
      0017BE FF               [12] 4819 	mov	r7,a
                                   4820 ;	isp.c:793: p18_send_cmd_payload(0,0x0E00|((val>>16)&0xFF));
      0017BF 8E 02            [24] 4821 	mov	ar2,r6
      0017C1 7B 00            [12] 4822 	mov	r3,#0x00
      0017C3 43 03 0E         [24] 4823 	orl	ar3,#0x0e
      0017C6 C0 07            [24] 4824 	push	ar7
      0017C8 C0 06            [24] 4825 	push	ar6
      0017CA C0 05            [24] 4826 	push	ar5
      0017CC C0 04            [24] 4827 	push	ar4
      0017CE C0 02            [24] 4828 	push	ar2
      0017D0 C0 03            [24] 4829 	push	ar3
      0017D2 75 82 00         [24] 4830 	mov	dpl,#0x00
      0017D5 12 18 8F         [24] 4831 	lcall	_p18_send_cmd_payload
      0017D8 15 81            [12] 4832 	dec	sp
      0017DA 15 81            [12] 4833 	dec	sp
                                   4834 ;	isp.c:794: p18_send_cmd_payload(0,0x6EF8);
      0017DC 74 F8            [12] 4835 	mov	a,#0xf8
      0017DE C0 E0            [24] 4836 	push	acc
      0017E0 74 6E            [12] 4837 	mov	a,#0x6e
      0017E2 C0 E0            [24] 4838 	push	acc
      0017E4 75 82 00         [24] 4839 	mov	dpl,#0x00
      0017E7 12 18 8F         [24] 4840 	lcall	_p18_send_cmd_payload
      0017EA 15 81            [12] 4841 	dec	sp
      0017EC 15 81            [12] 4842 	dec	sp
      0017EE D0 04            [24] 4843 	pop	ar4
      0017F0 D0 05            [24] 4844 	pop	ar5
                                   4845 ;	isp.c:795: p18_send_cmd_payload(0,0x0E00|((val>>8)&0xFF));
      0017F2 8D 02            [24] 4846 	mov	ar2,r5
      0017F4 7B 00            [12] 4847 	mov	r3,#0x00
      0017F6 43 03 0E         [24] 4848 	orl	ar3,#0x0e
      0017F9 C0 05            [24] 4849 	push	ar5
      0017FB C0 04            [24] 4850 	push	ar4
      0017FD C0 02            [24] 4851 	push	ar2
      0017FF C0 03            [24] 4852 	push	ar3
      001801 75 82 00         [24] 4853 	mov	dpl,#0x00
      001804 12 18 8F         [24] 4854 	lcall	_p18_send_cmd_payload
      001807 15 81            [12] 4855 	dec	sp
      001809 15 81            [12] 4856 	dec	sp
                                   4857 ;	isp.c:796: p18_send_cmd_payload(0,0x6EF7);
      00180B 74 F7            [12] 4858 	mov	a,#0xf7
      00180D C0 E0            [24] 4859 	push	acc
      00180F 74 6E            [12] 4860 	mov	a,#0x6e
      001811 C0 E0            [24] 4861 	push	acc
      001813 75 82 00         [24] 4862 	mov	dpl,#0x00
      001816 12 18 8F         [24] 4863 	lcall	_p18_send_cmd_payload
      001819 15 81            [12] 4864 	dec	sp
      00181B 15 81            [12] 4865 	dec	sp
      00181D D0 04            [24] 4866 	pop	ar4
      00181F D0 05            [24] 4867 	pop	ar5
      001821 D0 06            [24] 4868 	pop	ar6
      001823 D0 07            [24] 4869 	pop	ar7
                                   4870 ;	isp.c:797: p18_send_cmd_payload(0,0x0E00|((val>>0)&0xFF));
      001825 7D 00            [12] 4871 	mov	r5,#0x00
      001827 43 05 0E         [24] 4872 	orl	ar5,#0x0e
      00182A C0 04            [24] 4873 	push	ar4
      00182C C0 05            [24] 4874 	push	ar5
      00182E 75 82 00         [24] 4875 	mov	dpl,#0x00
      001831 12 18 8F         [24] 4876 	lcall	_p18_send_cmd_payload
      001834 15 81            [12] 4877 	dec	sp
      001836 15 81            [12] 4878 	dec	sp
                                   4879 ;	isp.c:798: p18_send_cmd_payload(0,0x6EF6);
      001838 74 F6            [12] 4880 	mov	a,#0xf6
      00183A C0 E0            [24] 4881 	push	acc
      00183C 74 6E            [12] 4882 	mov	a,#0x6e
      00183E C0 E0            [24] 4883 	push	acc
      001840 75 82 00         [24] 4884 	mov	dpl,#0x00
      001843 12 18 8F         [24] 4885 	lcall	_p18_send_cmd_payload
      001846 15 81            [12] 4886 	dec	sp
      001848 15 81            [12] 4887 	dec	sp
                                   4888 ;	isp.c:799: }
      00184A 22               [24] 4889 	ret
                                   4890 ;------------------------------------------------------------
                                   4891 ;Allocation info for local variables in function 'p18_read_pgm_byte'
                                   4892 ;------------------------------------------------------------
                                   4893 ;	isp.c:802: unsigned char p18_read_pgm_byte (void)
                                   4894 ;	-----------------------------------------
                                   4895 ;	 function p18_read_pgm_byte
                                   4896 ;	-----------------------------------------
      00184B                       4897 _p18_read_pgm_byte:
                                   4898 ;	isp.c:804: isp_send(0x09,4);
      00184B 74 04            [12] 4899 	mov	a,#0x04
      00184D C0 E0            [24] 4900 	push	acc
      00184F 90 00 09         [24] 4901 	mov	dptr,#0x0009
      001852 12 10 0F         [24] 4902 	lcall	_isp_send
      001855 15 81            [12] 4903 	dec	sp
                                   4904 ;	isp.c:805: isp_send(0x00,8);
      001857 74 08            [12] 4905 	mov	a,#0x08
      001859 C0 E0            [24] 4906 	push	acc
      00185B 90 00 00         [24] 4907 	mov	dptr,#0x0000
      00185E 12 10 0F         [24] 4908 	lcall	_isp_send
      001861 15 81            [12] 4909 	dec	sp
                                   4910 ;	isp.c:806: return isp_read_8();
                                   4911 ;	isp.c:807: }
      001863 02 0F B5         [24] 4912 	ljmp	_isp_read_8
                                   4913 ;------------------------------------------------------------
                                   4914 ;Allocation info for local variables in function 'p18_get_ID'
                                   4915 ;------------------------------------------------------------
                                   4916 ;temp                      Allocated to registers r7 r6 
                                   4917 ;------------------------------------------------------------
                                   4918 ;	isp.c:809: unsigned int p18_get_ID (void)
                                   4919 ;	-----------------------------------------
                                   4920 ;	 function p18_get_ID
                                   4921 ;	-----------------------------------------
      001866                       4922 _p18_get_ID:
                                   4923 ;	isp.c:813: p18_set_tblptr(0x3FFFFE);
      001866 90 FF FE         [24] 4924 	mov	dptr,#0xfffe
      001869 75 F0 3F         [24] 4925 	mov	b,#0x3f
      00186C E4               [12] 4926 	clr	a
      00186D 12 17 B8         [24] 4927 	lcall	_p18_set_tblptr
                                   4928 ;	isp.c:814: temp = p18_read_pgm_byte();
      001870 12 18 4B         [24] 4929 	lcall	_p18_read_pgm_byte
                                   4930 ;	isp.c:815: temp = temp << 8;
      001873 AE 82            [24] 4931 	mov	r6,dpl
      001875 7F 00            [12] 4932 	mov	r7,#0x00
                                   4933 ;	isp.c:816: temp = temp | p18_read_pgm_byte();
      001877 C0 07            [24] 4934 	push	ar7
      001879 C0 06            [24] 4935 	push	ar6
      00187B 12 18 4B         [24] 4936 	lcall	_p18_read_pgm_byte
      00187E AD 82            [24] 4937 	mov	r5,dpl
      001880 D0 06            [24] 4938 	pop	ar6
      001882 D0 07            [24] 4939 	pop	ar7
      001884 7C 00            [12] 4940 	mov	r4,#0x00
      001886 ED               [12] 4941 	mov	a,r5
      001887 4F               [12] 4942 	orl	a,r7
      001888 F5 82            [12] 4943 	mov	dpl,a
      00188A EC               [12] 4944 	mov	a,r4
      00188B 4E               [12] 4945 	orl	a,r6
      00188C F5 83            [12] 4946 	mov	dph,a
                                   4947 ;	isp.c:817: return temp;
                                   4948 ;	isp.c:818: }
      00188E 22               [24] 4949 	ret
                                   4950 ;------------------------------------------------------------
                                   4951 ;Allocation info for local variables in function 'p18_send_cmd_payload'
                                   4952 ;------------------------------------------------------------
                                   4953 ;payload                   Allocated to stack - _bp -4
                                   4954 ;cmd                       Allocated to registers r7 
                                   4955 ;------------------------------------------------------------
                                   4956 ;	isp.c:820: void p18_send_cmd_payload (unsigned char cmd, unsigned int payload)
                                   4957 ;	-----------------------------------------
                                   4958 ;	 function p18_send_cmd_payload
                                   4959 ;	-----------------------------------------
      00188F                       4960 _p18_send_cmd_payload:
      00188F C0 1E            [24] 4961 	push	_bp
      001891 85 81 1E         [24] 4962 	mov	_bp,sp
      001894 AF 82            [24] 4963 	mov	r7,dpl
                                   4964 ;	isp.c:822: isp_send(cmd,4);
      001896 7E 00            [12] 4965 	mov	r6,#0x00
      001898 74 04            [12] 4966 	mov	a,#0x04
      00189A C0 E0            [24] 4967 	push	acc
      00189C 8F 82            [24] 4968 	mov	dpl,r7
      00189E 8E 83            [24] 4969 	mov	dph,r6
      0018A0 12 10 0F         [24] 4970 	lcall	_isp_send
      0018A3 15 81            [12] 4971 	dec	sp
                                   4972 ;	isp.c:823: isp_send(payload,16);
      0018A5 74 10            [12] 4973 	mov	a,#0x10
      0018A7 C0 E0            [24] 4974 	push	acc
      0018A9 E5 1E            [12] 4975 	mov	a,_bp
      0018AB 24 FC            [12] 4976 	add	a,#0xfc
      0018AD F8               [12] 4977 	mov	r0,a
      0018AE 86 82            [24] 4978 	mov	dpl,@r0
      0018B0 08               [12] 4979 	inc	r0
      0018B1 86 83            [24] 4980 	mov	dph,@r0
      0018B3 12 10 0F         [24] 4981 	lcall	_isp_send
      0018B6 15 81            [12] 4982 	dec	sp
                                   4983 ;	isp.c:824: DLY_us(30);
      0018B8 90 00 1E         [24] 4984 	mov	dptr,#0x001e
      0018BB 12 1C 04         [24] 4985 	lcall	_DLY_us
                                   4986 ;	isp.c:825: }
      0018BE D0 1E            [24] 4987 	pop	_bp
      0018C0 22               [24] 4988 	ret
                                   4989 ;------------------------------------------------------------
                                   4990 ;Allocation info for local variables in function 'p18_get_cmd_payload'
                                   4991 ;------------------------------------------------------------
                                   4992 ;cmd                       Allocated to registers r7 
                                   4993 ;------------------------------------------------------------
                                   4994 ;	isp.c:827: unsigned int p18_get_cmd_payload (unsigned char cmd)
                                   4995 ;	-----------------------------------------
                                   4996 ;	 function p18_get_cmd_payload
                                   4997 ;	-----------------------------------------
      0018C1                       4998 _p18_get_cmd_payload:
      0018C1 AF 82            [24] 4999 	mov	r7,dpl
                                   5000 ;	isp.c:829: isp_send(cmd,4);
      0018C3 7E 00            [12] 5001 	mov	r6,#0x00
      0018C5 74 04            [12] 5002 	mov	a,#0x04
      0018C7 C0 E0            [24] 5003 	push	acc
      0018C9 8F 82            [24] 5004 	mov	dpl,r7
      0018CB 8E 83            [24] 5005 	mov	dph,r6
      0018CD 12 10 0F         [24] 5006 	lcall	_isp_send
      0018D0 15 81            [12] 5007 	dec	sp
                                   5008 ;	isp.c:830: return isp_read_16();
                                   5009 ;	isp.c:831: }
      0018D2 02 0F 75         [24] 5010 	ljmp	_isp_read_16
                                   5011 ;------------------------------------------------------------
                                   5012 ;Allocation info for local variables in function 'exit_progmode'
                                   5013 ;------------------------------------------------------------
                                   5014 ;	isp.c:834: unsigned char exit_progmode (void)
                                   5015 ;	-----------------------------------------
                                   5016 ;	 function exit_progmode
                                   5017 ;	-----------------------------------------
      0018D5                       5018 _exit_progmode:
                                   5019 ;	isp.c:836: ISP_MCLR_1
                                   5020 ;	assignBit
      0018D5 D2 95            [12] 5021 	setb	_PP15
                                   5022 ;	isp.c:837: DLY_ms(30);
      0018D7 90 00 1E         [24] 5023 	mov	dptr,#0x001e
      0018DA 12 1C 22         [24] 5024 	lcall	_DLY_ms
                                   5025 ;	isp.c:838: ISP_MCLR_0
                                   5026 ;	assignBit
      0018DD C2 95            [12] 5027 	clr	_PP15
                                   5028 ;	isp.c:839: DLY_ms(30);
      0018DF 90 00 1E         [24] 5029 	mov	dptr,#0x001e
      0018E2 12 1C 22         [24] 5030 	lcall	_DLY_ms
                                   5031 ;	isp.c:840: ISP_MCLR_1
                                   5032 ;	assignBit
      0018E5 D2 95            [12] 5033 	setb	_PP15
                                   5034 ;	isp.c:844: ISP_DAT_D_O
      0018E7 53 92 7F         [24] 5035 	anl	_P1_MOD_OC,#0x7f
      0018EA 43 93 80         [24] 5036 	orl	_P1_DIR_PU,#0x80
                                   5037 ;	isp.c:845: ISP_CLK_D_O
      0018ED 53 92 BF         [24] 5038 	anl	_P1_MOD_OC,#0xbf
      0018F0 43 93 40         [24] 5039 	orl	_P1_DIR_PU,#0x40
                                   5040 ;	isp.c:846: ISP_CLK_0
                                   5041 ;	assignBit
      0018F3 C2 96            [12] 5042 	clr	_PP16
                                   5043 ;	isp.c:847: ISP_DAT_0
                                   5044 ;	assignBit
      0018F5 C2 97            [12] 5045 	clr	_PP17
                                   5046 ;	isp.c:851: return 0;
      0018F7 75 82 00         [24] 5047 	mov	dpl,#0x00
                                   5048 ;	isp.c:852: }
      0018FA 22               [24] 5049 	ret
                                   5050 ;------------------------------------------------------------
                                   5051 ;Allocation info for local variables in function 'p16c_enter_progmode'
                                   5052 ;------------------------------------------------------------
                                   5053 ;	isp.c:856: unsigned char p16c_enter_progmode (void)
                                   5054 ;	-----------------------------------------
                                   5055 ;	 function p16c_enter_progmode
                                   5056 ;	-----------------------------------------
      0018FB                       5057 _p16c_enter_progmode:
                                   5058 ;	isp.c:858: ISP_MCLR_0
                                   5059 ;	assignBit
      0018FB C2 95            [12] 5060 	clr	_PP15
                                   5061 ;	isp.c:859: DLY_us(300);
      0018FD 90 01 2C         [24] 5062 	mov	dptr,#0x012c
      001900 12 1C 04         [24] 5063 	lcall	_DLY_us
                                   5064 ;	isp.c:860: isp_send_8_msb('M');
      001903 75 82 4D         [24] 5065 	mov	dpl,#0x4d
      001906 12 10 BB         [24] 5066 	lcall	_isp_send_8_msb
                                   5067 ;	isp.c:861: isp_send_8_msb('C');
      001909 75 82 43         [24] 5068 	mov	dpl,#0x43
      00190C 12 10 BB         [24] 5069 	lcall	_isp_send_8_msb
                                   5070 ;	isp.c:862: isp_send_8_msb('H');
      00190F 75 82 48         [24] 5071 	mov	dpl,#0x48
      001912 12 10 BB         [24] 5072 	lcall	_isp_send_8_msb
                                   5073 ;	isp.c:863: isp_send_8_msb('P');
      001915 75 82 50         [24] 5074 	mov	dpl,#0x50
      001918 12 10 BB         [24] 5075 	lcall	_isp_send_8_msb
                                   5076 ;	isp.c:864: DLY_us(300);
      00191B 90 01 2C         [24] 5077 	mov	dptr,#0x012c
      00191E 12 1C 04         [24] 5078 	lcall	_DLY_us
                                   5079 ;	isp.c:865: return 0;
      001921 75 82 00         [24] 5080 	mov	dpl,#0x00
                                   5081 ;	isp.c:866: }
      001924 22               [24] 5082 	ret
                                   5083 ;------------------------------------------------------------
                                   5084 ;Allocation info for local variables in function 'p16c_set_pc'
                                   5085 ;------------------------------------------------------------
                                   5086 ;pc                        Allocated to registers r4 r5 r6 r7 
                                   5087 ;------------------------------------------------------------
                                   5088 ;	isp.c:868: void p16c_set_pc (unsigned long pc)
                                   5089 ;	-----------------------------------------
                                   5090 ;	 function p16c_set_pc
                                   5091 ;	-----------------------------------------
      001925                       5092 _p16c_set_pc:
      001925 AC 82            [24] 5093 	mov	r4,dpl
      001927 AD 83            [24] 5094 	mov	r5,dph
      001929 AE F0            [24] 5095 	mov	r6,b
      00192B FF               [12] 5096 	mov	r7,a
                                   5097 ;	isp.c:870: isp_send_8_msb(0x80);
      00192C 75 82 80         [24] 5098 	mov	dpl,#0x80
      00192F C0 07            [24] 5099 	push	ar7
      001931 C0 06            [24] 5100 	push	ar6
      001933 C0 05            [24] 5101 	push	ar5
      001935 C0 04            [24] 5102 	push	ar4
      001937 12 10 BB         [24] 5103 	lcall	_isp_send_8_msb
                                   5104 ;	isp.c:871: DLY_us(2);
      00193A 90 00 02         [24] 5105 	mov	dptr,#0x0002
      00193D 12 1C 04         [24] 5106 	lcall	_DLY_us
      001940 D0 04            [24] 5107 	pop	ar4
      001942 D0 05            [24] 5108 	pop	ar5
      001944 D0 06            [24] 5109 	pop	ar6
      001946 D0 07            [24] 5110 	pop	ar7
                                   5111 ;	isp.c:872: isp_send_24_msb(pc);
      001948 8C 82            [24] 5112 	mov	dpl,r4
      00194A 8D 83            [24] 5113 	mov	dph,r5
      00194C 8E F0            [24] 5114 	mov	b,r6
      00194E EF               [12] 5115 	mov	a,r7
                                   5116 ;	isp.c:874: }
      00194F 02 10 59         [24] 5117 	ljmp	_isp_send_24_msb
                                   5118 ;------------------------------------------------------------
                                   5119 ;Allocation info for local variables in function 'p16c_bulk_erase'
                                   5120 ;------------------------------------------------------------
                                   5121 ;	isp.c:876: void p16c_bulk_erase (void)
                                   5122 ;	-----------------------------------------
                                   5123 ;	 function p16c_bulk_erase
                                   5124 ;	-----------------------------------------
      001952                       5125 _p16c_bulk_erase:
                                   5126 ;	isp.c:878: isp_send_8_msb(0x18);
      001952 75 82 18         [24] 5127 	mov	dpl,#0x18
      001955 12 10 BB         [24] 5128 	lcall	_isp_send_8_msb
                                   5129 ;	isp.c:879: DLY_ms(100);
      001958 90 00 64         [24] 5130 	mov	dptr,#0x0064
                                   5131 ;	isp.c:880: }
      00195B 02 1C 22         [24] 5132 	ljmp	_DLY_ms
                                   5133 ;------------------------------------------------------------
                                   5134 ;Allocation info for local variables in function 'p16c_load_nvm'
                                   5135 ;------------------------------------------------------------
                                   5136 ;inc                       Allocated to stack - _bp -3
                                   5137 ;data                      Allocated to registers r6 r7 
                                   5138 ;------------------------------------------------------------
                                   5139 ;	isp.c:882: void p16c_load_nvm (unsigned int data, unsigned char inc)
                                   5140 ;	-----------------------------------------
                                   5141 ;	 function p16c_load_nvm
                                   5142 ;	-----------------------------------------
      00195E                       5143 _p16c_load_nvm:
      00195E C0 1E            [24] 5144 	push	_bp
      001960 85 81 1E         [24] 5145 	mov	_bp,sp
      001963 AE 82            [24] 5146 	mov	r6,dpl
      001965 AF 83            [24] 5147 	mov	r7,dph
                                   5148 ;	isp.c:884: if (inc==0) isp_send_8_msb(0x00);
      001967 E5 1E            [12] 5149 	mov	a,_bp
      001969 24 FD            [12] 5150 	add	a,#0xfd
      00196B F8               [12] 5151 	mov	r0,a
      00196C E6               [12] 5152 	mov	a,@r0
      00196D 70 0F            [24] 5153 	jnz	00102$
      00196F F5 82            [12] 5154 	mov	dpl,a
      001971 C0 07            [24] 5155 	push	ar7
      001973 C0 06            [24] 5156 	push	ar6
      001975 12 10 BB         [24] 5157 	lcall	_isp_send_8_msb
      001978 D0 06            [24] 5158 	pop	ar6
      00197A D0 07            [24] 5159 	pop	ar7
      00197C 80 0E            [24] 5160 	sjmp	00103$
      00197E                       5161 00102$:
                                   5162 ;	isp.c:885: else isp_send_8_msb(0x02);
      00197E 75 82 02         [24] 5163 	mov	dpl,#0x02
      001981 C0 07            [24] 5164 	push	ar7
      001983 C0 06            [24] 5165 	push	ar6
      001985 12 10 BB         [24] 5166 	lcall	_isp_send_8_msb
      001988 D0 06            [24] 5167 	pop	ar6
      00198A D0 07            [24] 5168 	pop	ar7
      00198C                       5169 00103$:
                                   5170 ;	isp.c:886: DLY_us(2);
      00198C 90 00 02         [24] 5171 	mov	dptr,#0x0002
      00198F C0 07            [24] 5172 	push	ar7
      001991 C0 06            [24] 5173 	push	ar6
      001993 12 1C 04         [24] 5174 	lcall	_DLY_us
      001996 D0 06            [24] 5175 	pop	ar6
      001998 D0 07            [24] 5176 	pop	ar7
                                   5177 ;	isp.c:887: isp_send_24_msb(data);
      00199A 7D 00            [12] 5178 	mov	r5,#0x00
      00199C 7C 00            [12] 5179 	mov	r4,#0x00
      00199E 8E 82            [24] 5180 	mov	dpl,r6
      0019A0 8F 83            [24] 5181 	mov	dph,r7
      0019A2 8D F0            [24] 5182 	mov	b,r5
      0019A4 EC               [12] 5183 	mov	a,r4
      0019A5 12 10 59         [24] 5184 	lcall	_isp_send_24_msb
                                   5185 ;	isp.c:888: DLY_us(2);
      0019A8 90 00 02         [24] 5186 	mov	dptr,#0x0002
      0019AB 12 1C 04         [24] 5187 	lcall	_DLY_us
                                   5188 ;	isp.c:889: }
      0019AE D0 1E            [24] 5189 	pop	_bp
      0019B0 22               [24] 5190 	ret
                                   5191 ;------------------------------------------------------------
                                   5192 ;Allocation info for local variables in function 'p16c_read_data_nvm'
                                   5193 ;------------------------------------------------------------
                                   5194 ;inc                       Allocated to registers r7 
                                   5195 ;retval                    Allocated to registers r5 r7 
                                   5196 ;tmp                       Allocated to registers r6 
                                   5197 ;------------------------------------------------------------
                                   5198 ;	isp.c:891: unsigned int p16c_read_data_nvm (unsigned char inc)
                                   5199 ;	-----------------------------------------
                                   5200 ;	 function p16c_read_data_nvm
                                   5201 ;	-----------------------------------------
      0019B1                       5202 _p16c_read_data_nvm:
                                   5203 ;	isp.c:895: if (inc==0) isp_send_8_msb(0xFC);
      0019B1 E5 82            [12] 5204 	mov	a,dpl
      0019B3 70 08            [24] 5205 	jnz	00102$
      0019B5 75 82 FC         [24] 5206 	mov	dpl,#0xfc
      0019B8 12 10 BB         [24] 5207 	lcall	_isp_send_8_msb
      0019BB 80 06            [24] 5208 	sjmp	00103$
      0019BD                       5209 00102$:
                                   5210 ;	isp.c:896: else isp_send_8_msb(0xFE);
      0019BD 75 82 FE         [24] 5211 	mov	dpl,#0xfe
      0019C0 12 10 BB         [24] 5212 	lcall	_isp_send_8_msb
      0019C3                       5213 00103$:
                                   5214 ;	isp.c:897: DLY_us(2);
      0019C3 90 00 02         [24] 5215 	mov	dptr,#0x0002
      0019C6 12 1C 04         [24] 5216 	lcall	_DLY_us
                                   5217 ;	isp.c:898: tmp = isp_read_8_msb();
      0019C9 12 10 F5         [24] 5218 	lcall	_isp_read_8_msb
      0019CC AE 82            [24] 5219 	mov	r6,dpl
                                   5220 ;	isp.c:899: retval = isp_read_16_msb();
      0019CE C0 06            [24] 5221 	push	ar6
      0019D0 12 11 34         [24] 5222 	lcall	_isp_read_16_msb
      0019D3 AD 82            [24] 5223 	mov	r5,dpl
      0019D5 AF 83            [24] 5224 	mov	r7,dph
      0019D7 D0 06            [24] 5225 	pop	ar6
                                   5226 ;	isp.c:900: retval = retval >> 1;
      0019D9 EF               [12] 5227 	mov	a,r7
      0019DA C3               [12] 5228 	clr	c
      0019DB 13               [12] 5229 	rrc	a
      0019DC CD               [12] 5230 	xch	a,r5
      0019DD 13               [12] 5231 	rrc	a
      0019DE CD               [12] 5232 	xch	a,r5
      0019DF FF               [12] 5233 	mov	r7,a
                                   5234 ;	isp.c:901: if (tmp&0x01) retval = retval | 0x8000;
      0019E0 EE               [12] 5235 	mov	a,r6
      0019E1 30 E0 03         [24] 5236 	jnb	acc.0,00105$
      0019E4 43 07 80         [24] 5237 	orl	ar7,#0x80
      0019E7                       5238 00105$:
                                   5239 ;	isp.c:902: return retval;
      0019E7 8D 82            [24] 5240 	mov	dpl,r5
      0019E9 8F 83            [24] 5241 	mov	dph,r7
                                   5242 ;	isp.c:903: }
      0019EB 22               [24] 5243 	ret
                                   5244 ;------------------------------------------------------------
                                   5245 ;Allocation info for local variables in function 'p16c_begin_prog'
                                   5246 ;------------------------------------------------------------
                                   5247 ;cfg_bit                   Allocated to registers r7 
                                   5248 ;------------------------------------------------------------
                                   5249 ;	isp.c:905: void p16c_begin_prog (unsigned char cfg_bit)
                                   5250 ;	-----------------------------------------
                                   5251 ;	 function p16c_begin_prog
                                   5252 ;	-----------------------------------------
      0019EC                       5253 _p16c_begin_prog:
      0019EC AF 82            [24] 5254 	mov	r7,dpl
                                   5255 ;	isp.c:907: isp_send_8_msb(0xE0);
      0019EE 75 82 E0         [24] 5256 	mov	dpl,#0xe0
      0019F1 C0 07            [24] 5257 	push	ar7
      0019F3 12 10 BB         [24] 5258 	lcall	_isp_send_8_msb
                                   5259 ;	isp.c:908: DLY_ms(3);
      0019F6 90 00 03         [24] 5260 	mov	dptr,#0x0003
      0019F9 12 1C 22         [24] 5261 	lcall	_DLY_ms
      0019FC D0 07            [24] 5262 	pop	ar7
                                   5263 ;	isp.c:909: if (cfg_bit!=0) DLY_ms(3);
      0019FE EF               [12] 5264 	mov	a,r7
      0019FF 60 06            [24] 5265 	jz	00103$
      001A01 90 00 03         [24] 5266 	mov	dptr,#0x0003
                                   5267 ;	isp.c:910: }
      001A04 02 1C 22         [24] 5268 	ljmp	_DLY_ms
      001A07                       5269 00103$:
      001A07 22               [24] 5270 	ret
                                   5271 ;------------------------------------------------------------
                                   5272 ;Allocation info for local variables in function 'p16c_get_ID'
                                   5273 ;------------------------------------------------------------
                                   5274 ;	isp.c:912: unsigned int p16c_get_ID (void)
                                   5275 ;	-----------------------------------------
                                   5276 ;	 function p16c_get_ID
                                   5277 ;	-----------------------------------------
      001A08                       5278 _p16c_get_ID:
                                   5279 ;	isp.c:914: p16c_set_pc(0x8006);
      001A08 90 80 06         [24] 5280 	mov	dptr,#0x8006
      001A0B E4               [12] 5281 	clr	a
      001A0C F5 F0            [12] 5282 	mov	b,a
      001A0E 12 19 25         [24] 5283 	lcall	_p16c_set_pc
                                   5284 ;	isp.c:915: return p16c_read_data_nvm(1);
      001A11 75 82 01         [24] 5285 	mov	dpl,#0x01
                                   5286 ;	isp.c:916: }
      001A14 02 19 B1         [24] 5287 	ljmp	_p16c_read_data_nvm
                                   5288 ;------------------------------------------------------------
                                   5289 ;Allocation info for local variables in function 'p16c_isp_write_pgm'
                                   5290 ;------------------------------------------------------------
                                   5291 ;addr                      Allocated to stack - _bp -6
                                   5292 ;n                         Allocated to stack - _bp -7
                                   5293 ;data                      Allocated to stack - _bp +1
                                   5294 ;i                         Allocated to registers r4 
                                   5295 ;------------------------------------------------------------
                                   5296 ;	isp.c:918: void p16c_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
                                   5297 ;	-----------------------------------------
                                   5298 ;	 function p16c_isp_write_pgm
                                   5299 ;	-----------------------------------------
      001A17                       5300 _p16c_isp_write_pgm:
      001A17 C0 1E            [24] 5301 	push	_bp
      001A19 85 81 1E         [24] 5302 	mov	_bp,sp
      001A1C C0 82            [24] 5303 	push	dpl
      001A1E C0 83            [24] 5304 	push	dph
      001A20 C0 F0            [24] 5305 	push	b
                                   5306 ;	isp.c:922: p16c_set_pc(addr);
      001A22 E5 1E            [12] 5307 	mov	a,_bp
      001A24 24 FA            [12] 5308 	add	a,#0xfa
      001A26 F8               [12] 5309 	mov	r0,a
      001A27 86 82            [24] 5310 	mov	dpl,@r0
      001A29 08               [12] 5311 	inc	r0
      001A2A 86 83            [24] 5312 	mov	dph,@r0
      001A2C 08               [12] 5313 	inc	r0
      001A2D 86 F0            [24] 5314 	mov	b,@r0
      001A2F 08               [12] 5315 	inc	r0
      001A30 E6               [12] 5316 	mov	a,@r0
      001A31 12 19 25         [24] 5317 	lcall	_p16c_set_pc
                                   5318 ;	isp.c:923: for (i=0;i<n;i++)
      001A34 7C 00            [12] 5319 	mov	r4,#0x00
      001A36                       5320 00103$:
      001A36 E5 1E            [12] 5321 	mov	a,_bp
      001A38 24 F9            [12] 5322 	add	a,#0xf9
      001A3A F8               [12] 5323 	mov	r0,a
      001A3B C3               [12] 5324 	clr	c
      001A3C EC               [12] 5325 	mov	a,r4
      001A3D 96               [12] 5326 	subb	a,@r0
      001A3E 50 38            [24] 5327 	jnc	00101$
                                   5328 ;	isp.c:924: p16c_load_nvm(data[i],1);
      001A40 EC               [12] 5329 	mov	a,r4
      001A41 75 F0 02         [24] 5330 	mov	b,#0x02
      001A44 A4               [48] 5331 	mul	ab
      001A45 FA               [12] 5332 	mov	r2,a
      001A46 AB F0            [24] 5333 	mov	r3,b
      001A48 A8 1E            [24] 5334 	mov	r0,_bp
      001A4A 08               [12] 5335 	inc	r0
      001A4B EA               [12] 5336 	mov	a,r2
      001A4C 26               [12] 5337 	add	a,@r0
      001A4D FA               [12] 5338 	mov	r2,a
      001A4E EB               [12] 5339 	mov	a,r3
      001A4F 08               [12] 5340 	inc	r0
      001A50 36               [12] 5341 	addc	a,@r0
      001A51 FB               [12] 5342 	mov	r3,a
      001A52 08               [12] 5343 	inc	r0
      001A53 86 07            [24] 5344 	mov	ar7,@r0
      001A55 8A 82            [24] 5345 	mov	dpl,r2
      001A57 8B 83            [24] 5346 	mov	dph,r3
      001A59 8F F0            [24] 5347 	mov	b,r7
      001A5B 12 21 BE         [24] 5348 	lcall	__gptrget
      001A5E FA               [12] 5349 	mov	r2,a
      001A5F A3               [24] 5350 	inc	dptr
      001A60 12 21 BE         [24] 5351 	lcall	__gptrget
      001A63 FB               [12] 5352 	mov	r3,a
      001A64 C0 04            [24] 5353 	push	ar4
      001A66 74 01            [12] 5354 	mov	a,#0x01
      001A68 C0 E0            [24] 5355 	push	acc
      001A6A 8A 82            [24] 5356 	mov	dpl,r2
      001A6C 8B 83            [24] 5357 	mov	dph,r3
      001A6E 12 19 5E         [24] 5358 	lcall	_p16c_load_nvm
      001A71 15 81            [12] 5359 	dec	sp
      001A73 D0 04            [24] 5360 	pop	ar4
                                   5361 ;	isp.c:923: for (i=0;i<n;i++)
      001A75 0C               [12] 5362 	inc	r4
      001A76 80 BE            [24] 5363 	sjmp	00103$
      001A78                       5364 00101$:
                                   5365 ;	isp.c:925: p16c_set_pc(addr);
      001A78 E5 1E            [12] 5366 	mov	a,_bp
      001A7A 24 FA            [12] 5367 	add	a,#0xfa
      001A7C F8               [12] 5368 	mov	r0,a
      001A7D 86 82            [24] 5369 	mov	dpl,@r0
      001A7F 08               [12] 5370 	inc	r0
      001A80 86 83            [24] 5371 	mov	dph,@r0
      001A82 08               [12] 5372 	inc	r0
      001A83 86 F0            [24] 5373 	mov	b,@r0
      001A85 08               [12] 5374 	inc	r0
      001A86 E6               [12] 5375 	mov	a,@r0
      001A87 12 19 25         [24] 5376 	lcall	_p16c_set_pc
                                   5377 ;	isp.c:926: p16c_begin_prog(0);
      001A8A 75 82 00         [24] 5378 	mov	dpl,#0x00
      001A8D 12 19 EC         [24] 5379 	lcall	_p16c_begin_prog
                                   5380 ;	isp.c:927: }
      001A90 85 1E 81         [24] 5381 	mov	sp,_bp
      001A93 D0 1E            [24] 5382 	pop	_bp
      001A95 22               [24] 5383 	ret
                                   5384 ;------------------------------------------------------------
                                   5385 ;Allocation info for local variables in function 'p16c_isp_read_pgm'
                                   5386 ;------------------------------------------------------------
                                   5387 ;addr                      Allocated to stack - _bp -6
                                   5388 ;n                         Allocated to stack - _bp -7
                                   5389 ;data                      Allocated to stack - _bp +1
                                   5390 ;i                         Allocated to registers r4 
                                   5391 ;------------------------------------------------------------
                                   5392 ;	isp.c:929: void p16c_isp_read_pgm (unsigned int * data, unsigned long addr, unsigned char n)
                                   5393 ;	-----------------------------------------
                                   5394 ;	 function p16c_isp_read_pgm
                                   5395 ;	-----------------------------------------
      001A96                       5396 _p16c_isp_read_pgm:
      001A96 C0 1E            [24] 5397 	push	_bp
      001A98 85 81 1E         [24] 5398 	mov	_bp,sp
      001A9B C0 82            [24] 5399 	push	dpl
      001A9D C0 83            [24] 5400 	push	dph
      001A9F C0 F0            [24] 5401 	push	b
                                   5402 ;	isp.c:934: p16c_set_pc(addr);
      001AA1 E5 1E            [12] 5403 	mov	a,_bp
      001AA3 24 FA            [12] 5404 	add	a,#0xfa
      001AA5 F8               [12] 5405 	mov	r0,a
      001AA6 86 82            [24] 5406 	mov	dpl,@r0
      001AA8 08               [12] 5407 	inc	r0
      001AA9 86 83            [24] 5408 	mov	dph,@r0
      001AAB 08               [12] 5409 	inc	r0
      001AAC 86 F0            [24] 5410 	mov	b,@r0
      001AAE 08               [12] 5411 	inc	r0
      001AAF E6               [12] 5412 	mov	a,@r0
      001AB0 12 19 25         [24] 5413 	lcall	_p16c_set_pc
                                   5414 ;	isp.c:935: for (i=0;i<n;i++)
      001AB3 7C 00            [12] 5415 	mov	r4,#0x00
      001AB5                       5416 00103$:
      001AB5 E5 1E            [12] 5417 	mov	a,_bp
      001AB7 24 F9            [12] 5418 	add	a,#0xf9
      001AB9 F8               [12] 5419 	mov	r0,a
      001ABA C3               [12] 5420 	clr	c
      001ABB EC               [12] 5421 	mov	a,r4
      001ABC 96               [12] 5422 	subb	a,@r0
      001ABD 50 41            [24] 5423 	jnc	00105$
                                   5424 ;	isp.c:936: data[i] = p16c_read_data_nvm(1);
      001ABF EC               [12] 5425 	mov	a,r4
      001AC0 75 F0 02         [24] 5426 	mov	b,#0x02
      001AC3 A4               [48] 5427 	mul	ab
      001AC4 FA               [12] 5428 	mov	r2,a
      001AC5 AB F0            [24] 5429 	mov	r3,b
      001AC7 A8 1E            [24] 5430 	mov	r0,_bp
      001AC9 08               [12] 5431 	inc	r0
      001ACA EA               [12] 5432 	mov	a,r2
      001ACB 26               [12] 5433 	add	a,@r0
      001ACC FA               [12] 5434 	mov	r2,a
      001ACD EB               [12] 5435 	mov	a,r3
      001ACE 08               [12] 5436 	inc	r0
      001ACF 36               [12] 5437 	addc	a,@r0
      001AD0 FB               [12] 5438 	mov	r3,a
      001AD1 08               [12] 5439 	inc	r0
      001AD2 86 07            [24] 5440 	mov	ar7,@r0
      001AD4 75 82 01         [24] 5441 	mov	dpl,#0x01
      001AD7 C0 07            [24] 5442 	push	ar7
      001AD9 C0 04            [24] 5443 	push	ar4
      001ADB C0 03            [24] 5444 	push	ar3
      001ADD C0 02            [24] 5445 	push	ar2
      001ADF 12 19 B1         [24] 5446 	lcall	_p16c_read_data_nvm
      001AE2 AD 82            [24] 5447 	mov	r5,dpl
      001AE4 AE 83            [24] 5448 	mov	r6,dph
      001AE6 D0 02            [24] 5449 	pop	ar2
      001AE8 D0 03            [24] 5450 	pop	ar3
      001AEA D0 04            [24] 5451 	pop	ar4
      001AEC D0 07            [24] 5452 	pop	ar7
      001AEE 8A 82            [24] 5453 	mov	dpl,r2
      001AF0 8B 83            [24] 5454 	mov	dph,r3
      001AF2 8F F0            [24] 5455 	mov	b,r7
      001AF4 ED               [12] 5456 	mov	a,r5
      001AF5 12 21 A3         [24] 5457 	lcall	__gptrput
      001AF8 A3               [24] 5458 	inc	dptr
      001AF9 EE               [12] 5459 	mov	a,r6
      001AFA 12 21 A3         [24] 5460 	lcall	__gptrput
                                   5461 ;	isp.c:935: for (i=0;i<n;i++)
      001AFD 0C               [12] 5462 	inc	r4
      001AFE 80 B5            [24] 5463 	sjmp	00103$
      001B00                       5464 00105$:
                                   5465 ;	isp.c:937: }
      001B00 85 1E 81         [24] 5466 	mov	sp,_bp
      001B03 D0 1E            [24] 5467 	pop	_bp
      001B05 22               [24] 5468 	ret
                                   5469 ;------------------------------------------------------------
                                   5470 ;Allocation info for local variables in function 'p16c_isp_write_cfg'
                                   5471 ;------------------------------------------------------------
                                   5472 ;addr                      Allocated to stack - _bp -6
                                   5473 ;data                      Allocated to registers r6 r7 
                                   5474 ;------------------------------------------------------------
                                   5475 ;	isp.c:939: void p16c_isp_write_cfg (unsigned int data, unsigned long addr)
                                   5476 ;	-----------------------------------------
                                   5477 ;	 function p16c_isp_write_cfg
                                   5478 ;	-----------------------------------------
      001B06                       5479 _p16c_isp_write_cfg:
      001B06 C0 1E            [24] 5480 	push	_bp
      001B08 85 81 1E         [24] 5481 	mov	_bp,sp
      001B0B AE 82            [24] 5482 	mov	r6,dpl
      001B0D AF 83            [24] 5483 	mov	r7,dph
                                   5484 ;	isp.c:943: p16c_set_pc(addr);
      001B0F E5 1E            [12] 5485 	mov	a,_bp
      001B11 24 FA            [12] 5486 	add	a,#0xfa
      001B13 F8               [12] 5487 	mov	r0,a
      001B14 86 82            [24] 5488 	mov	dpl,@r0
      001B16 08               [12] 5489 	inc	r0
      001B17 86 83            [24] 5490 	mov	dph,@r0
      001B19 08               [12] 5491 	inc	r0
      001B1A 86 F0            [24] 5492 	mov	b,@r0
      001B1C 08               [12] 5493 	inc	r0
      001B1D E6               [12] 5494 	mov	a,@r0
      001B1E C0 07            [24] 5495 	push	ar7
      001B20 C0 06            [24] 5496 	push	ar6
      001B22 12 19 25         [24] 5497 	lcall	_p16c_set_pc
      001B25 D0 06            [24] 5498 	pop	ar6
      001B27 D0 07            [24] 5499 	pop	ar7
                                   5500 ;	isp.c:944: p16c_load_nvm(data,0);
      001B29 E4               [12] 5501 	clr	a
      001B2A C0 E0            [24] 5502 	push	acc
      001B2C 8E 82            [24] 5503 	mov	dpl,r6
      001B2E 8F 83            [24] 5504 	mov	dph,r7
      001B30 12 19 5E         [24] 5505 	lcall	_p16c_load_nvm
      001B33 15 81            [12] 5506 	dec	sp
                                   5507 ;	isp.c:945: p16c_begin_prog(1);
      001B35 75 82 01         [24] 5508 	mov	dpl,#0x01
      001B38 12 19 EC         [24] 5509 	lcall	_p16c_begin_prog
                                   5510 ;	isp.c:946: }
      001B3B D0 1E            [24] 5511 	pop	_bp
      001B3D 22               [24] 5512 	ret
                                   5513 ;------------------------------------------------------------
                                   5514 ;Allocation info for local variables in function 'p18q_isp_write_pgm'
                                   5515 ;------------------------------------------------------------
                                   5516 ;addr                      Allocated to stack - _bp -6
                                   5517 ;n                         Allocated to stack - _bp -7
                                   5518 ;data                      Allocated to stack - _bp +1
                                   5519 ;i                         Allocated to registers r4 
                                   5520 ;------------------------------------------------------------
                                   5521 ;	isp.c:948: void p18q_isp_write_pgm (unsigned int * data, unsigned long addr, unsigned char n)
                                   5522 ;	-----------------------------------------
                                   5523 ;	 function p18q_isp_write_pgm
                                   5524 ;	-----------------------------------------
      001B3E                       5525 _p18q_isp_write_pgm:
      001B3E C0 1E            [24] 5526 	push	_bp
      001B40 85 81 1E         [24] 5527 	mov	_bp,sp
      001B43 C0 82            [24] 5528 	push	dpl
      001B45 C0 83            [24] 5529 	push	dph
      001B47 C0 F0            [24] 5530 	push	b
                                   5531 ;	isp.c:952: p16c_set_pc(addr);
      001B49 E5 1E            [12] 5532 	mov	a,_bp
      001B4B 24 FA            [12] 5533 	add	a,#0xfa
      001B4D F8               [12] 5534 	mov	r0,a
      001B4E 86 82            [24] 5535 	mov	dpl,@r0
      001B50 08               [12] 5536 	inc	r0
      001B51 86 83            [24] 5537 	mov	dph,@r0
      001B53 08               [12] 5538 	inc	r0
      001B54 86 F0            [24] 5539 	mov	b,@r0
      001B56 08               [12] 5540 	inc	r0
      001B57 E6               [12] 5541 	mov	a,@r0
      001B58 12 19 25         [24] 5542 	lcall	_p16c_set_pc
                                   5543 ;	isp.c:953: for (i=0;i<n;i++)
      001B5B 7C 00            [12] 5544 	mov	r4,#0x00
      001B5D                       5545 00103$:
      001B5D E5 1E            [12] 5546 	mov	a,_bp
      001B5F 24 F9            [12] 5547 	add	a,#0xf9
      001B61 F8               [12] 5548 	mov	r0,a
      001B62 C3               [12] 5549 	clr	c
      001B63 EC               [12] 5550 	mov	a,r4
      001B64 96               [12] 5551 	subb	a,@r0
      001B65 50 49            [24] 5552 	jnc	00105$
                                   5553 ;	isp.c:955: isp_send_8_msb(0xE0);
      001B67 75 82 E0         [24] 5554 	mov	dpl,#0xe0
      001B6A C0 04            [24] 5555 	push	ar4
      001B6C 12 10 BB         [24] 5556 	lcall	_isp_send_8_msb
      001B6F D0 04            [24] 5557 	pop	ar4
                                   5558 ;	isp.c:956: isp_send_24_msb(data[i]);
      001B71 EC               [12] 5559 	mov	a,r4
      001B72 75 F0 02         [24] 5560 	mov	b,#0x02
      001B75 A4               [48] 5561 	mul	ab
      001B76 FA               [12] 5562 	mov	r2,a
      001B77 AB F0            [24] 5563 	mov	r3,b
      001B79 A8 1E            [24] 5564 	mov	r0,_bp
      001B7B 08               [12] 5565 	inc	r0
      001B7C EA               [12] 5566 	mov	a,r2
      001B7D 26               [12] 5567 	add	a,@r0
      001B7E FA               [12] 5568 	mov	r2,a
      001B7F EB               [12] 5569 	mov	a,r3
      001B80 08               [12] 5570 	inc	r0
      001B81 36               [12] 5571 	addc	a,@r0
      001B82 FB               [12] 5572 	mov	r3,a
      001B83 08               [12] 5573 	inc	r0
      001B84 86 07            [24] 5574 	mov	ar7,@r0
      001B86 8A 82            [24] 5575 	mov	dpl,r2
      001B88 8B 83            [24] 5576 	mov	dph,r3
      001B8A 8F F0            [24] 5577 	mov	b,r7
      001B8C 12 21 BE         [24] 5578 	lcall	__gptrget
      001B8F FA               [12] 5579 	mov	r2,a
      001B90 A3               [24] 5580 	inc	dptr
      001B91 12 21 BE         [24] 5581 	lcall	__gptrget
      001B94 FB               [12] 5582 	mov	r3,a
      001B95 7F 00            [12] 5583 	mov	r7,#0x00
      001B97 7E 00            [12] 5584 	mov	r6,#0x00
      001B99 8A 82            [24] 5585 	mov	dpl,r2
      001B9B 8B 83            [24] 5586 	mov	dph,r3
      001B9D 8F F0            [24] 5587 	mov	b,r7
      001B9F EE               [12] 5588 	mov	a,r6
      001BA0 C0 04            [24] 5589 	push	ar4
      001BA2 12 10 59         [24] 5590 	lcall	_isp_send_24_msb
                                   5591 ;	isp.c:957: DLY_us(65);
      001BA5 90 00 41         [24] 5592 	mov	dptr,#0x0041
      001BA8 12 1C 04         [24] 5593 	lcall	_DLY_us
      001BAB D0 04            [24] 5594 	pop	ar4
                                   5595 ;	isp.c:953: for (i=0;i<n;i++)
      001BAD 0C               [12] 5596 	inc	r4
      001BAE 80 AD            [24] 5597 	sjmp	00103$
      001BB0                       5598 00105$:
                                   5599 ;	isp.c:959: }
      001BB0 85 1E 81         [24] 5600 	mov	sp,_bp
      001BB3 D0 1E            [24] 5601 	pop	_bp
      001BB5 22               [24] 5602 	ret
                                   5603 ;------------------------------------------------------------
                                   5604 ;Allocation info for local variables in function 'p18q_isp_write_cfg'
                                   5605 ;------------------------------------------------------------
                                   5606 ;addr                      Allocated to stack - _bp -6
                                   5607 ;data                      Allocated to registers r6 r7 
                                   5608 ;------------------------------------------------------------
                                   5609 ;	isp.c:961: void p18q_isp_write_cfg (unsigned int data, unsigned long addr)
                                   5610 ;	-----------------------------------------
                                   5611 ;	 function p18q_isp_write_cfg
                                   5612 ;	-----------------------------------------
      001BB6                       5613 _p18q_isp_write_cfg:
      001BB6 C0 1E            [24] 5614 	push	_bp
      001BB8 85 81 1E         [24] 5615 	mov	_bp,sp
      001BBB AE 82            [24] 5616 	mov	r6,dpl
      001BBD AF 83            [24] 5617 	mov	r7,dph
                                   5618 ;	isp.c:965: p16c_set_pc(addr);
      001BBF E5 1E            [12] 5619 	mov	a,_bp
      001BC1 24 FA            [12] 5620 	add	a,#0xfa
      001BC3 F8               [12] 5621 	mov	r0,a
      001BC4 86 82            [24] 5622 	mov	dpl,@r0
      001BC6 08               [12] 5623 	inc	r0
      001BC7 86 83            [24] 5624 	mov	dph,@r0
      001BC9 08               [12] 5625 	inc	r0
      001BCA 86 F0            [24] 5626 	mov	b,@r0
      001BCC 08               [12] 5627 	inc	r0
      001BCD E6               [12] 5628 	mov	a,@r0
      001BCE C0 07            [24] 5629 	push	ar7
      001BD0 C0 06            [24] 5630 	push	ar6
      001BD2 12 19 25         [24] 5631 	lcall	_p16c_set_pc
                                   5632 ;	isp.c:966: isp_send_8_msb(0xE0);
      001BD5 75 82 E0         [24] 5633 	mov	dpl,#0xe0
      001BD8 12 10 BB         [24] 5634 	lcall	_isp_send_8_msb
      001BDB D0 06            [24] 5635 	pop	ar6
      001BDD D0 07            [24] 5636 	pop	ar7
                                   5637 ;	isp.c:967: isp_send_24_msb(data);
      001BDF 7D 00            [12] 5638 	mov	r5,#0x00
      001BE1 7C 00            [12] 5639 	mov	r4,#0x00
      001BE3 8E 82            [24] 5640 	mov	dpl,r6
      001BE5 8F 83            [24] 5641 	mov	dph,r7
      001BE7 8D F0            [24] 5642 	mov	b,r5
      001BE9 EC               [12] 5643 	mov	a,r4
      001BEA 12 10 59         [24] 5644 	lcall	_isp_send_24_msb
                                   5645 ;	isp.c:968: DLY_us(65);
      001BED 90 00 41         [24] 5646 	mov	dptr,#0x0041
      001BF0 12 1C 04         [24] 5647 	lcall	_DLY_us
                                   5648 ;	isp.c:969: }
      001BF3 D0 1E            [24] 5649 	pop	_bp
      001BF5 22               [24] 5650 	ret
                                   5651 ;------------------------------------------------------------
                                   5652 ;Allocation info for local variables in function 'usart_tx_b'
                                   5653 ;------------------------------------------------------------
                                   5654 ;flush                     Allocated to registers b0 
                                   5655 ;data                      Allocated to registers r7 
                                   5656 ;------------------------------------------------------------
                                   5657 ;	isp.c:972: void usart_tx_b(uint8_t data, __bit flush)
                                   5658 ;	-----------------------------------------
                                   5659 ;	 function usart_tx_b
                                   5660 ;	-----------------------------------------
      001BF6                       5661 _usart_tx_b:
                                   5662 ;	isp.c:974: CDC_write(data);
      001BF6 C0 21            [24] 5663 	push	bits
      001BF8 12 1C 56         [24] 5664 	lcall	_CDC_write
      001BFB D0 21            [24] 5665 	pop	bits
                                   5666 ;	isp.c:975: if (flush) CDC_flush();
      001BFD 30 08 03         [24] 5667 	jnb	b0,00103$
                                   5668 ;	isp.c:976: }
      001C00 02 1C 3C         [24] 5669 	ljmp	_CDC_flush
      001C03                       5670 00103$:
      001C03 22               [24] 5671 	ret
                                   5672 	.area CSEG    (CODE)
                                   5673 	.area CONST   (CODE)
                                   5674 	.area XINIT   (CODE)
                                   5675 	.area CABS    (ABS,CODE)
