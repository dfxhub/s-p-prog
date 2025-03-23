                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_handler
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _USB_EP0_OUT
                                     12 	.globl _USB_EP0_IN
                                     13 	.globl _USB_EP0_SETUP
                                     14 	.globl _USB_EP_init
                                     15 	.globl _CDC_EP2_OUT
                                     16 	.globl _CDC_EP2_IN
                                     17 	.globl _CDC_EP0_OUT
                                     18 	.globl _CDC_EP_init
                                     19 	.globl _CDC_control
                                     20 	.globl _UIF_BUS_RST
                                     21 	.globl _UIF_DETECT
                                     22 	.globl _UIF_TRANSFER
                                     23 	.globl _UIF_SUSPEND
                                     24 	.globl _UIF_HST_SOF
                                     25 	.globl _UIF_FIFO_OV
                                     26 	.globl _U_SIE_FREE
                                     27 	.globl _U_TOG_OK
                                     28 	.globl _U_IS_NAK
                                     29 	.globl _ADC_CHAN0
                                     30 	.globl _ADC_CHAN1
                                     31 	.globl _CMP_CHAN
                                     32 	.globl _ADC_START
                                     33 	.globl _ADC_IF
                                     34 	.globl _CMP_IF
                                     35 	.globl _CMPO
                                     36 	.globl _U1RI
                                     37 	.globl _U1TI
                                     38 	.globl _U1RB8
                                     39 	.globl _U1TB8
                                     40 	.globl _U1REN
                                     41 	.globl _U1SMOD
                                     42 	.globl _U1SM0
                                     43 	.globl _S0_R_FIFO
                                     44 	.globl _S0_T_FIFO
                                     45 	.globl _S0_FREE
                                     46 	.globl _S0_IF_BYTE
                                     47 	.globl _S0_IF_FIRST
                                     48 	.globl _S0_IF_OV
                                     49 	.globl _S0_FST_ACT
                                     50 	.globl _CP_RL2
                                     51 	.globl _C_T2
                                     52 	.globl _TR2
                                     53 	.globl _EXEN2
                                     54 	.globl _TCLK
                                     55 	.globl _RCLK
                                     56 	.globl _EXF2
                                     57 	.globl _CAP1F
                                     58 	.globl _TF2
                                     59 	.globl _RI
                                     60 	.globl _TI
                                     61 	.globl _RB8
                                     62 	.globl _TB8
                                     63 	.globl _REN
                                     64 	.globl _SM2
                                     65 	.globl _SM1
                                     66 	.globl _SM0
                                     67 	.globl _IT0
                                     68 	.globl _IE0
                                     69 	.globl _IT1
                                     70 	.globl _IE1
                                     71 	.globl _TR0
                                     72 	.globl _TF0
                                     73 	.globl _TR1
                                     74 	.globl _TF1
                                     75 	.globl _RXD
                                     76 	.globl _PWM1_
                                     77 	.globl _TXD
                                     78 	.globl _PWM2_
                                     79 	.globl _AIN3
                                     80 	.globl _VBUS1
                                     81 	.globl _INT0
                                     82 	.globl _TXD1_
                                     83 	.globl _INT1
                                     84 	.globl _T0
                                     85 	.globl _RXD1_
                                     86 	.globl _PWM2
                                     87 	.globl _T1
                                     88 	.globl _UDP
                                     89 	.globl _UDM
                                     90 	.globl _TIN0
                                     91 	.globl _CAP1
                                     92 	.globl _T2
                                     93 	.globl _AIN0
                                     94 	.globl _VBUS2
                                     95 	.globl _TIN1
                                     96 	.globl _CAP2
                                     97 	.globl _T2EX
                                     98 	.globl _RXD_
                                     99 	.globl _TXD_
                                    100 	.globl _AIN1
                                    101 	.globl _UCC1
                                    102 	.globl _TIN2
                                    103 	.globl _SCS
                                    104 	.globl _CAP1_
                                    105 	.globl _T2_
                                    106 	.globl _AIN2
                                    107 	.globl _UCC2
                                    108 	.globl _TIN3
                                    109 	.globl _PWM1
                                    110 	.globl _MOSI
                                    111 	.globl _TIN4
                                    112 	.globl _RXD1
                                    113 	.globl _MISO
                                    114 	.globl _TIN5
                                    115 	.globl _TXD1
                                    116 	.globl _SCK
                                    117 	.globl _IE_SPI0
                                    118 	.globl _IE_TKEY
                                    119 	.globl _IE_USB
                                    120 	.globl _IE_ADC
                                    121 	.globl _IE_UART1
                                    122 	.globl _IE_PWMX
                                    123 	.globl _IE_GPIO
                                    124 	.globl _IE_WDOG
                                    125 	.globl _PX0
                                    126 	.globl _PT0
                                    127 	.globl _PX1
                                    128 	.globl _PT1
                                    129 	.globl _PS
                                    130 	.globl _PT2
                                    131 	.globl _PL_FLAG
                                    132 	.globl _PH_FLAG
                                    133 	.globl _EX0
                                    134 	.globl _ET0
                                    135 	.globl _EX1
                                    136 	.globl _ET1
                                    137 	.globl _ES
                                    138 	.globl _ET2
                                    139 	.globl _E_DIS
                                    140 	.globl _EA
                                    141 	.globl _P
                                    142 	.globl _F1
                                    143 	.globl _OV
                                    144 	.globl _RS0
                                    145 	.globl _RS1
                                    146 	.globl _F0
                                    147 	.globl _AC
                                    148 	.globl _CY
                                    149 	.globl _UEP1_DMA_H
                                    150 	.globl _UEP1_DMA_L
                                    151 	.globl _UEP1_DMA
                                    152 	.globl _UEP0_DMA_H
                                    153 	.globl _UEP0_DMA_L
                                    154 	.globl _UEP0_DMA
                                    155 	.globl _UEP2_3_MOD
                                    156 	.globl _UEP4_1_MOD
                                    157 	.globl _UEP3_DMA_H
                                    158 	.globl _UEP3_DMA_L
                                    159 	.globl _UEP3_DMA
                                    160 	.globl _UEP2_DMA_H
                                    161 	.globl _UEP2_DMA_L
                                    162 	.globl _UEP2_DMA
                                    163 	.globl _USB_DEV_AD
                                    164 	.globl _USB_CTRL
                                    165 	.globl _USB_INT_EN
                                    166 	.globl _UEP4_T_LEN
                                    167 	.globl _UEP4_CTRL
                                    168 	.globl _UEP0_T_LEN
                                    169 	.globl _UEP0_CTRL
                                    170 	.globl _USB_RX_LEN
                                    171 	.globl _USB_MIS_ST
                                    172 	.globl _USB_INT_ST
                                    173 	.globl _USB_INT_FG
                                    174 	.globl _UEP3_T_LEN
                                    175 	.globl _UEP3_CTRL
                                    176 	.globl _UEP2_T_LEN
                                    177 	.globl _UEP2_CTRL
                                    178 	.globl _UEP1_T_LEN
                                    179 	.globl _UEP1_CTRL
                                    180 	.globl _UDEV_CTRL
                                    181 	.globl _USB_C_CTRL
                                    182 	.globl _TKEY_DATH
                                    183 	.globl _TKEY_DATL
                                    184 	.globl _TKEY_DAT
                                    185 	.globl _TKEY_CTRL
                                    186 	.globl _ADC_DATA
                                    187 	.globl _ADC_CFG
                                    188 	.globl _ADC_CTRL
                                    189 	.globl _SBAUD1
                                    190 	.globl _SBUF1
                                    191 	.globl _SCON1
                                    192 	.globl _SPI0_SETUP
                                    193 	.globl _SPI0_CK_SE
                                    194 	.globl _SPI0_CTRL
                                    195 	.globl _SPI0_DATA
                                    196 	.globl _SPI0_STAT
                                    197 	.globl _PWM_CK_SE
                                    198 	.globl _PWM_CTRL
                                    199 	.globl _PWM_DATA1
                                    200 	.globl _PWM_DATA2
                                    201 	.globl _T2CAP1H
                                    202 	.globl _T2CAP1L
                                    203 	.globl _T2CAP1
                                    204 	.globl _TH2
                                    205 	.globl _TL2
                                    206 	.globl _T2COUNT
                                    207 	.globl _RCAP2H
                                    208 	.globl _RCAP2L
                                    209 	.globl _RCAP2
                                    210 	.globl _T2MOD
                                    211 	.globl _T2CON
                                    212 	.globl _SBUF
                                    213 	.globl _SCON
                                    214 	.globl _TH1
                                    215 	.globl _TH0
                                    216 	.globl _TL1
                                    217 	.globl _TL0
                                    218 	.globl _TMOD
                                    219 	.globl _TCON
                                    220 	.globl _XBUS_AUX
                                    221 	.globl _PIN_FUNC
                                    222 	.globl _P3_DIR_PU
                                    223 	.globl _P3_MOD_OC
                                    224 	.globl _P3
                                    225 	.globl _P2
                                    226 	.globl _P1_DIR_PU
                                    227 	.globl _P1_MOD_OC
                                    228 	.globl _P1
                                    229 	.globl _ROM_CTRL
                                    230 	.globl _ROM_DATA_H
                                    231 	.globl _ROM_DATA_L
                                    232 	.globl _ROM_DATA
                                    233 	.globl _ROM_ADDR_H
                                    234 	.globl _ROM_ADDR_L
                                    235 	.globl _ROM_ADDR
                                    236 	.globl _GPIO_IE
                                    237 	.globl _IP_EX
                                    238 	.globl _IE_EX
                                    239 	.globl _IP
                                    240 	.globl _IE
                                    241 	.globl _WDOG_COUNT
                                    242 	.globl _RESET_KEEP
                                    243 	.globl _WAKE_CTRL
                                    244 	.globl _CLOCK_CFG
                                    245 	.globl _PCON
                                    246 	.globl _GLOBAL_CFG
                                    247 	.globl _SAFE_MOD
                                    248 	.globl _DPH
                                    249 	.globl _DPL
                                    250 	.globl _SP
                                    251 	.globl _B
                                    252 	.globl _ACC
                                    253 	.globl _PSW
                                    254 	.globl _EP2_buffer
                                    255 	.globl _EP1_buffer
                                    256 	.globl _EP0_buffer
                                    257 	.globl _USB_ENUM_OK
                                    258 	.globl _USB_pDescr
                                    259 	.globl _USB_SetupLen
                                    260 	.globl _USB_Addr
                                    261 	.globl _USB_Config
                                    262 	.globl _USB_SetupTyp
                                    263 	.globl _USB_SetupReq
                                    264 	.globl _USB_init
                                    265 	.globl _USB_EP0_copyDescr
                                    266 	.globl _USB_interrupt
                                    267 ;--------------------------------------------------------
                                    268 ; special function registers
                                    269 ;--------------------------------------------------------
                                    270 	.area RSEG    (ABS,DATA)
      000000                        271 	.org 0x0000
                           0000D0   272 _PSW	=	0x00d0
                           0000E0   273 _ACC	=	0x00e0
                           0000F0   274 _B	=	0x00f0
                           000081   275 _SP	=	0x0081
                           000082   276 _DPL	=	0x0082
                           000083   277 _DPH	=	0x0083
                           0000A1   278 _SAFE_MOD	=	0x00a1
                           0000B1   279 _GLOBAL_CFG	=	0x00b1
                           000087   280 _PCON	=	0x0087
                           0000B9   281 _CLOCK_CFG	=	0x00b9
                           0000A9   282 _WAKE_CTRL	=	0x00a9
                           0000FE   283 _RESET_KEEP	=	0x00fe
                           0000FF   284 _WDOG_COUNT	=	0x00ff
                           0000A8   285 _IE	=	0x00a8
                           0000B8   286 _IP	=	0x00b8
                           0000E8   287 _IE_EX	=	0x00e8
                           0000E9   288 _IP_EX	=	0x00e9
                           0000C7   289 _GPIO_IE	=	0x00c7
                           008584   290 _ROM_ADDR	=	0x8584
                           000084   291 _ROM_ADDR_L	=	0x0084
                           000085   292 _ROM_ADDR_H	=	0x0085
                           008F8E   293 _ROM_DATA	=	0x8f8e
                           00008E   294 _ROM_DATA_L	=	0x008e
                           00008F   295 _ROM_DATA_H	=	0x008f
                           000086   296 _ROM_CTRL	=	0x0086
                           000090   297 _P1	=	0x0090
                           000092   298 _P1_MOD_OC	=	0x0092
                           000093   299 _P1_DIR_PU	=	0x0093
                           0000A0   300 _P2	=	0x00a0
                           0000B0   301 _P3	=	0x00b0
                           000096   302 _P3_MOD_OC	=	0x0096
                           000097   303 _P3_DIR_PU	=	0x0097
                           0000C6   304 _PIN_FUNC	=	0x00c6
                           0000A2   305 _XBUS_AUX	=	0x00a2
                           000088   306 _TCON	=	0x0088
                           000089   307 _TMOD	=	0x0089
                           00008A   308 _TL0	=	0x008a
                           00008B   309 _TL1	=	0x008b
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           000098   312 _SCON	=	0x0098
                           000099   313 _SBUF	=	0x0099
                           0000C8   314 _T2CON	=	0x00c8
                           0000C9   315 _T2MOD	=	0x00c9
                           00CBCA   316 _RCAP2	=	0xcbca
                           0000CA   317 _RCAP2L	=	0x00ca
                           0000CB   318 _RCAP2H	=	0x00cb
                           00CDCC   319 _T2COUNT	=	0xcdcc
                           0000CC   320 _TL2	=	0x00cc
                           0000CD   321 _TH2	=	0x00cd
                           00CFCE   322 _T2CAP1	=	0xcfce
                           0000CE   323 _T2CAP1L	=	0x00ce
                           0000CF   324 _T2CAP1H	=	0x00cf
                           00009B   325 _PWM_DATA2	=	0x009b
                           00009C   326 _PWM_DATA1	=	0x009c
                           00009D   327 _PWM_CTRL	=	0x009d
                           00009E   328 _PWM_CK_SE	=	0x009e
                           0000F8   329 _SPI0_STAT	=	0x00f8
                           0000F9   330 _SPI0_DATA	=	0x00f9
                           0000FA   331 _SPI0_CTRL	=	0x00fa
                           0000FB   332 _SPI0_CK_SE	=	0x00fb
                           0000FC   333 _SPI0_SETUP	=	0x00fc
                           0000C0   334 _SCON1	=	0x00c0
                           0000C1   335 _SBUF1	=	0x00c1
                           0000C2   336 _SBAUD1	=	0x00c2
                           000080   337 _ADC_CTRL	=	0x0080
                           00009A   338 _ADC_CFG	=	0x009a
                           00009F   339 _ADC_DATA	=	0x009f
                           0000C3   340 _TKEY_CTRL	=	0x00c3
                           00C5C4   341 _TKEY_DAT	=	0xc5c4
                           0000C4   342 _TKEY_DATL	=	0x00c4
                           0000C5   343 _TKEY_DATH	=	0x00c5
                           000091   344 _USB_C_CTRL	=	0x0091
                           0000D1   345 _UDEV_CTRL	=	0x00d1
                           0000D2   346 _UEP1_CTRL	=	0x00d2
                           0000D3   347 _UEP1_T_LEN	=	0x00d3
                           0000D4   348 _UEP2_CTRL	=	0x00d4
                           0000D5   349 _UEP2_T_LEN	=	0x00d5
                           0000D6   350 _UEP3_CTRL	=	0x00d6
                           0000D7   351 _UEP3_T_LEN	=	0x00d7
                           0000D8   352 _USB_INT_FG	=	0x00d8
                           0000D9   353 _USB_INT_ST	=	0x00d9
                           0000DA   354 _USB_MIS_ST	=	0x00da
                           0000DB   355 _USB_RX_LEN	=	0x00db
                           0000DC   356 _UEP0_CTRL	=	0x00dc
                           0000DD   357 _UEP0_T_LEN	=	0x00dd
                           0000DE   358 _UEP4_CTRL	=	0x00de
                           0000DF   359 _UEP4_T_LEN	=	0x00df
                           0000E1   360 _USB_INT_EN	=	0x00e1
                           0000E2   361 _USB_CTRL	=	0x00e2
                           0000E3   362 _USB_DEV_AD	=	0x00e3
                           00E5E4   363 _UEP2_DMA	=	0xe5e4
                           0000E4   364 _UEP2_DMA_L	=	0x00e4
                           0000E5   365 _UEP2_DMA_H	=	0x00e5
                           00E7E6   366 _UEP3_DMA	=	0xe7e6
                           0000E6   367 _UEP3_DMA_L	=	0x00e6
                           0000E7   368 _UEP3_DMA_H	=	0x00e7
                           0000EA   369 _UEP4_1_MOD	=	0x00ea
                           0000EB   370 _UEP2_3_MOD	=	0x00eb
                           00EDEC   371 _UEP0_DMA	=	0xedec
                           0000EC   372 _UEP0_DMA_L	=	0x00ec
                           0000ED   373 _UEP0_DMA_H	=	0x00ed
                           00EFEE   374 _UEP1_DMA	=	0xefee
                           0000EE   375 _UEP1_DMA_L	=	0x00ee
                           0000EF   376 _UEP1_DMA_H	=	0x00ef
                                    377 ;--------------------------------------------------------
                                    378 ; special function bits
                                    379 ;--------------------------------------------------------
                                    380 	.area RSEG    (ABS,DATA)
      000000                        381 	.org 0x0000
                           0000D7   382 _CY	=	0x00d7
                           0000D6   383 _AC	=	0x00d6
                           0000D5   384 _F0	=	0x00d5
                           0000D4   385 _RS1	=	0x00d4
                           0000D3   386 _RS0	=	0x00d3
                           0000D2   387 _OV	=	0x00d2
                           0000D1   388 _F1	=	0x00d1
                           0000D0   389 _P	=	0x00d0
                           0000AF   390 _EA	=	0x00af
                           0000AE   391 _E_DIS	=	0x00ae
                           0000AD   392 _ET2	=	0x00ad
                           0000AC   393 _ES	=	0x00ac
                           0000AB   394 _ET1	=	0x00ab
                           0000AA   395 _EX1	=	0x00aa
                           0000A9   396 _ET0	=	0x00a9
                           0000A8   397 _EX0	=	0x00a8
                           0000BF   398 _PH_FLAG	=	0x00bf
                           0000BE   399 _PL_FLAG	=	0x00be
                           0000BD   400 _PT2	=	0x00bd
                           0000BC   401 _PS	=	0x00bc
                           0000BB   402 _PT1	=	0x00bb
                           0000BA   403 _PX1	=	0x00ba
                           0000B9   404 _PT0	=	0x00b9
                           0000B8   405 _PX0	=	0x00b8
                           0000EF   406 _IE_WDOG	=	0x00ef
                           0000EE   407 _IE_GPIO	=	0x00ee
                           0000ED   408 _IE_PWMX	=	0x00ed
                           0000EC   409 _IE_UART1	=	0x00ec
                           0000EB   410 _IE_ADC	=	0x00eb
                           0000EA   411 _IE_USB	=	0x00ea
                           0000E9   412 _IE_TKEY	=	0x00e9
                           0000E8   413 _IE_SPI0	=	0x00e8
                           000097   414 _SCK	=	0x0097
                           000097   415 _TXD1	=	0x0097
                           000097   416 _TIN5	=	0x0097
                           000096   417 _MISO	=	0x0096
                           000096   418 _RXD1	=	0x0096
                           000096   419 _TIN4	=	0x0096
                           000095   420 _MOSI	=	0x0095
                           000095   421 _PWM1	=	0x0095
                           000095   422 _TIN3	=	0x0095
                           000095   423 _UCC2	=	0x0095
                           000095   424 _AIN2	=	0x0095
                           000094   425 _T2_	=	0x0094
                           000094   426 _CAP1_	=	0x0094
                           000094   427 _SCS	=	0x0094
                           000094   428 _TIN2	=	0x0094
                           000094   429 _UCC1	=	0x0094
                           000094   430 _AIN1	=	0x0094
                           000093   431 _TXD_	=	0x0093
                           000092   432 _RXD_	=	0x0092
                           000091   433 _T2EX	=	0x0091
                           000091   434 _CAP2	=	0x0091
                           000091   435 _TIN1	=	0x0091
                           000091   436 _VBUS2	=	0x0091
                           000091   437 _AIN0	=	0x0091
                           000090   438 _T2	=	0x0090
                           000090   439 _CAP1	=	0x0090
                           000090   440 _TIN0	=	0x0090
                           0000B7   441 _UDM	=	0x00b7
                           0000B6   442 _UDP	=	0x00b6
                           0000B5   443 _T1	=	0x00b5
                           0000B4   444 _PWM2	=	0x00b4
                           0000B4   445 _RXD1_	=	0x00b4
                           0000B4   446 _T0	=	0x00b4
                           0000B3   447 _INT1	=	0x00b3
                           0000B2   448 _TXD1_	=	0x00b2
                           0000B2   449 _INT0	=	0x00b2
                           0000B2   450 _VBUS1	=	0x00b2
                           0000B2   451 _AIN3	=	0x00b2
                           0000B1   452 _PWM2_	=	0x00b1
                           0000B1   453 _TXD	=	0x00b1
                           0000B0   454 _PWM1_	=	0x00b0
                           0000B0   455 _RXD	=	0x00b0
                           00008F   456 _TF1	=	0x008f
                           00008E   457 _TR1	=	0x008e
                           00008D   458 _TF0	=	0x008d
                           00008C   459 _TR0	=	0x008c
                           00008B   460 _IE1	=	0x008b
                           00008A   461 _IT1	=	0x008a
                           000089   462 _IE0	=	0x0089
                           000088   463 _IT0	=	0x0088
                           00009F   464 _SM0	=	0x009f
                           00009E   465 _SM1	=	0x009e
                           00009D   466 _SM2	=	0x009d
                           00009C   467 _REN	=	0x009c
                           00009B   468 _TB8	=	0x009b
                           00009A   469 _RB8	=	0x009a
                           000099   470 _TI	=	0x0099
                           000098   471 _RI	=	0x0098
                           0000CF   472 _TF2	=	0x00cf
                           0000CF   473 _CAP1F	=	0x00cf
                           0000CE   474 _EXF2	=	0x00ce
                           0000CD   475 _RCLK	=	0x00cd
                           0000CC   476 _TCLK	=	0x00cc
                           0000CB   477 _EXEN2	=	0x00cb
                           0000CA   478 _TR2	=	0x00ca
                           0000C9   479 _C_T2	=	0x00c9
                           0000C8   480 _CP_RL2	=	0x00c8
                           0000FF   481 _S0_FST_ACT	=	0x00ff
                           0000FE   482 _S0_IF_OV	=	0x00fe
                           0000FD   483 _S0_IF_FIRST	=	0x00fd
                           0000FC   484 _S0_IF_BYTE	=	0x00fc
                           0000FB   485 _S0_FREE	=	0x00fb
                           0000FA   486 _S0_T_FIFO	=	0x00fa
                           0000F8   487 _S0_R_FIFO	=	0x00f8
                           0000C7   488 _U1SM0	=	0x00c7
                           0000C5   489 _U1SMOD	=	0x00c5
                           0000C4   490 _U1REN	=	0x00c4
                           0000C3   491 _U1TB8	=	0x00c3
                           0000C2   492 _U1RB8	=	0x00c2
                           0000C1   493 _U1TI	=	0x00c1
                           0000C0   494 _U1RI	=	0x00c0
                           000087   495 _CMPO	=	0x0087
                           000086   496 _CMP_IF	=	0x0086
                           000085   497 _ADC_IF	=	0x0085
                           000084   498 _ADC_START	=	0x0084
                           000083   499 _CMP_CHAN	=	0x0083
                           000081   500 _ADC_CHAN1	=	0x0081
                           000080   501 _ADC_CHAN0	=	0x0080
                           0000DF   502 _U_IS_NAK	=	0x00df
                           0000DE   503 _U_TOG_OK	=	0x00de
                           0000DD   504 _U_SIE_FREE	=	0x00dd
                           0000DC   505 _UIF_FIFO_OV	=	0x00dc
                           0000DB   506 _UIF_HST_SOF	=	0x00db
                           0000DA   507 _UIF_SUSPEND	=	0x00da
                           0000D9   508 _UIF_TRANSFER	=	0x00d9
                           0000D8   509 _UIF_DETECT	=	0x00d8
                           0000D8   510 _UIF_BUS_RST	=	0x00d8
                                    511 ;--------------------------------------------------------
                                    512 ; overlayable register banks
                                    513 ;--------------------------------------------------------
                                    514 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        515 	.ds 8
                                    516 ;--------------------------------------------------------
                                    517 ; overlayable bit register bank
                                    518 ;--------------------------------------------------------
                                    519 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        520 bits:
      000021                        521 	.ds 1
                           008000   522 	b0 = bits[0]
                           008100   523 	b1 = bits[1]
                           008200   524 	b2 = bits[2]
                           008300   525 	b3 = bits[3]
                           008400   526 	b4 = bits[4]
                           008500   527 	b5 = bits[5]
                           008600   528 	b6 = bits[6]
                           008700   529 	b7 = bits[7]
                                    530 ;--------------------------------------------------------
                                    531 ; internal ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area DSEG    (DATA)
      000016                        534 _USB_SetupReq::
      000016                        535 	.ds 1
      000017                        536 _USB_SetupTyp::
      000017                        537 	.ds 1
      000018                        538 _USB_Config::
      000018                        539 	.ds 1
      000019                        540 _USB_Addr::
      000019                        541 	.ds 1
      00001A                        542 _USB_SetupLen::
      00001A                        543 	.ds 2
      00001C                        544 _USB_pDescr::
      00001C                        545 	.ds 2
                                    546 ;--------------------------------------------------------
                                    547 ; overlayable items in internal ram
                                    548 ;--------------------------------------------------------
                                    549 ;--------------------------------------------------------
                                    550 ; indirectly addressable internal ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area ISEG    (DATA)
                                    553 ;--------------------------------------------------------
                                    554 ; absolute internal ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area IABS    (ABS,DATA)
                                    557 	.area IABS    (ABS,DATA)
                                    558 ;--------------------------------------------------------
                                    559 ; bit data
                                    560 ;--------------------------------------------------------
                                    561 	.area BSEG    (BIT)
      000001                        562 _USB_ENUM_OK::
      000001                        563 	.ds 1
                                    564 ;--------------------------------------------------------
                                    565 ; paged external ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area PSEG    (PAG,XDATA)
                                    568 ;--------------------------------------------------------
                                    569 ; uninitialized external ram data
                                    570 ;--------------------------------------------------------
                                    571 	.area XSEG    (XDATA)
                           000000   572 _EP0_buffer	=	0x0000
                           00000A   573 _EP1_buffer	=	0x000a
                           000014   574 _EP2_buffer	=	0x0014
                                    575 ;--------------------------------------------------------
                                    576 ; absolute external ram data
                                    577 ;--------------------------------------------------------
                                    578 	.area XABS    (ABS,XDATA)
                                    579 ;--------------------------------------------------------
                                    580 ; initialized external ram data
                                    581 ;--------------------------------------------------------
                                    582 	.area XISEG   (XDATA)
                                    583 	.area HOME    (CODE)
                                    584 	.area GSINIT0 (CODE)
                                    585 	.area GSINIT1 (CODE)
                                    586 	.area GSINIT2 (CODE)
                                    587 	.area GSINIT3 (CODE)
                                    588 	.area GSINIT4 (CODE)
                                    589 	.area GSINIT5 (CODE)
                                    590 	.area GSINIT  (CODE)
                                    591 	.area GSFINAL (CODE)
                                    592 	.area CSEG    (CODE)
                                    593 ;--------------------------------------------------------
                                    594 ; global & static initialisations
                                    595 ;--------------------------------------------------------
                                    596 	.area HOME    (CODE)
                                    597 	.area GSINIT  (CODE)
                                    598 	.area GSFINAL (CODE)
                                    599 	.area GSINIT  (CODE)
                                    600 ;--------------------------------------------------------
                                    601 ; Home
                                    602 ;--------------------------------------------------------
                                    603 	.area HOME    (CODE)
                                    604 	.area HOME    (CODE)
                                    605 ;--------------------------------------------------------
                                    606 ; code
                                    607 ;--------------------------------------------------------
                                    608 	.area CSEG    (CODE)
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'USB_EP_init'
                                    611 ;------------------------------------------------------------
                                    612 ;	lib\usb_handler.c:18: void USB_EP_init(void) {
                                    613 ;	-----------------------------------------
                                    614 ;	 function USB_EP_init
                                    615 ;	-----------------------------------------
      001DAE                        616 _USB_EP_init:
                           000007   617 	ar7 = 0x07
                           000006   618 	ar6 = 0x06
                           000005   619 	ar5 = 0x05
                           000004   620 	ar4 = 0x04
                           000003   621 	ar3 = 0x03
                           000002   622 	ar2 = 0x02
                           000001   623 	ar1 = 0x01
                           000000   624 	ar0 = 0x00
                                    625 ;	lib\usb_handler.c:19: UEP0_DMA    = (uint16_t)EP0_buffer;       // EP0 data transfer address
      001DAE 7E 00            [12]  626 	mov	r6,#_EP0_buffer
      001DB0 7F 00            [12]  627 	mov	r7,#(_EP0_buffer >> 8)
      001DB2 8E EC            [24]  628 	mov	((_UEP0_DMA >> 0) & 0xFF),r6
      001DB4 8F ED            [24]  629 	mov	((_UEP0_DMA >> 8) & 0xFF),r7
                                    630 ;	lib\usb_handler.c:21: | UEP_T_RES_NAK;              // EP0 IN transaction returns NAK
      001DB6 75 DC 02         [24]  631 	mov	_UEP0_CTRL,#0x02
                                    632 ;	lib\usb_handler.c:22: UEP0_T_LEN  = 0;                          // must be zero at start
      001DB9 75 DD 00         [24]  633 	mov	_UEP0_T_LEN,#0x00
                                    634 ;	lib\usb_handler.c:23: USB_ENUM_OK = 0;                          // reset ENUM flag
                                    635 ;	assignBit
      001DBC C2 01            [12]  636 	clr	_USB_ENUM_OK
                                    637 ;	lib\usb_handler.c:26: USB_INIT_endpoints();                     // custom EP init handler
                                    638 ;	lib\usb_handler.c:28: }
      001DBE 02 1C E3         [24]  639 	ljmp	_CDC_EP_init
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'USB_init'
                                    642 ;------------------------------------------------------------
                                    643 ;	lib\usb_handler.c:33: void USB_init(void) {
                                    644 ;	-----------------------------------------
                                    645 ;	 function USB_init
                                    646 ;	-----------------------------------------
      001DC1                        647 _USB_init:
                                    648 ;	lib\usb_handler.c:36: | bUC_DMA_EN;                 // DMA enable
      001DC1 75 E2 29         [24]  649 	mov	_USB_CTRL,#0x29
                                    650 ;	lib\usb_handler.c:38: | bUD_PORT_EN;                // enable port, full-speed
      001DC4 75 D1 81         [24]  651 	mov	_UDEV_CTRL,#0x81
                                    652 ;	lib\usb_handler.c:40: USB_EP_init();                            // setup endpoints
      001DC7 12 1D AE         [24]  653 	lcall	_USB_EP_init
                                    654 ;	lib\usb_handler.c:44: | bUIE_BUS_RST;               // enable device mode USB bus reset interrupt
      001DCA 75 E1 07         [24]  655 	mov	_USB_INT_EN,#0x07
                                    656 ;	lib\usb_handler.c:46: USB_INT_FG  = 0x1f;                       // clear interrupt flags
      001DCD 75 D8 1F         [24]  657 	mov	_USB_INT_FG,#0x1f
                                    658 ;	lib\usb_handler.c:47: IE_USB      = 1;                          // enable USB interrupt
                                    659 ;	assignBit
      001DD0 D2 EA            [12]  660 	setb	_IE_USB
                                    661 ;	lib\usb_handler.c:48: EA          = 1;                          // enable global interrupts
                                    662 ;	assignBit
      001DD2 D2 AF            [12]  663 	setb	_EA
                                    664 ;	lib\usb_handler.c:49: }
      001DD4 22               [24]  665 	ret
                                    666 ;------------------------------------------------------------
                                    667 ;Allocation info for local variables in function 'USB_EP0_copyDescr'
                                    668 ;------------------------------------------------------------
                                    669 ;len                       Allocated to registers 
                                    670 ;------------------------------------------------------------
                                    671 ;	lib\usb_handler.c:57: void USB_EP0_copyDescr(uint8_t len) {
                                    672 ;	-----------------------------------------
                                    673 ;	 function USB_EP0_copyDescr
                                    674 ;	-----------------------------------------
      001DD5                        675 _USB_EP0_copyDescr:
                                    676 ;	lib\usb_handler.c:78: __endasm;
      001DD5 C0 E0            [24]  677 	push	acc ; acc -> stack
      001DD7 C0 07            [24]  678 	push	ar7 ; r7 -> stack
      001DD9 AF 82            [24]  679 	mov	r7, dpl ; r7 <- len
      001DDB 05 A2            [12]  680 	inc	_XBUS_AUX ; select dptr1
      001DDD 90 00 00         [24]  681 	mov	dptr, #_EP0_buffer ; dptr1 <- EP0_buffer
      001DE0 15 A2            [12]  682 	dec	_XBUS_AUX ; select dptr0
      001DE2 85 1C 82         [24]  683 	mov	dpl, _USB_pDescr ; dptr0 <- *USB_pDescr
      001DE5 85 1D 83         [24]  684 	mov	dph, (_USB_pDescr + 1)
      001DE8                        685 01$:
      001DE8 E4               [12]  686 	clr	a ; acc <- #0
      001DE9 93               [24]  687 	movc	a, @a+dptr ; acc <- *USB_pDescr[dptr0]
      001DEA A3               [24]  688 	inc	dptr ; inc dptr0
      001DEB A5                     689 	.db	0xA5 ; acc -> EP0_buffer[dptr1] & inc dptr1
      001DEC DF FA            [24]  690 	djnz	r7, 01$ ; repeat len times
      001DEE 85 82 1C         [24]  691 	mov	_USB_pDescr, dpl ; USB_pDescr += len
      001DF1 85 83 1D         [24]  692 	mov	(_USB_pDescr + 1), dph
      001DF4 D0 07            [24]  693 	pop	ar7 ; r7 <- stack
      001DF6 D0 E0            [24]  694 	pop	acc ; acc <- stack
                                    695 ;	lib\usb_handler.c:79: }
      001DF8 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'USB_EP0_SETUP'
                                    699 ;------------------------------------------------------------
                                    700 ;len                       Allocated to registers r7 
                                    701 ;------------------------------------------------------------
                                    702 ;	lib\usb_handler.c:86: void USB_EP0_SETUP(void) {
                                    703 ;	-----------------------------------------
                                    704 ;	 function USB_EP0_SETUP
                                    705 ;	-----------------------------------------
      001DF9                        706 _USB_EP0_SETUP:
                                    707 ;	lib\usb_handler.c:87: uint8_t len = 0;                                // default is success and upload 0 length
      001DF9 7F 00            [12]  708 	mov	r7,#0x00
                                    709 ;	lib\usb_handler.c:88: USB_SetupLen = ((uint16_t)USB_SetupBuf->wLengthH<<8) | (USB_SetupBuf->wLengthL);
      001DFB 90 00 07         [24]  710 	mov	dptr,#(_EP0_buffer + 0x0007)
      001DFE E0               [24]  711 	movx	a,@dptr
      001DFF FD               [12]  712 	mov	r5,a
      001E00 7E 00            [12]  713 	mov	r6,#0x00
      001E02 90 00 06         [24]  714 	mov	dptr,#(_EP0_buffer + 0x0006)
      001E05 E0               [24]  715 	movx	a,@dptr
      001E06 FC               [12]  716 	mov	r4,a
      001E07 7B 00            [12]  717 	mov	r3,#0x00
      001E09 4E               [12]  718 	orl	a,r6
      001E0A F5 1A            [12]  719 	mov	_USB_SetupLen,a
      001E0C EB               [12]  720 	mov	a,r3
      001E0D 4D               [12]  721 	orl	a,r5
      001E0E F5 1B            [12]  722 	mov	(_USB_SetupLen + 1),a
                                    723 ;	lib\usb_handler.c:89: USB_SetupReq = USB_SetupBuf->bRequest;
      001E10 90 00 01         [24]  724 	mov	dptr,#(_EP0_buffer + 0x0001)
      001E13 E0               [24]  725 	movx	a,@dptr
      001E14 F5 16            [12]  726 	mov	_USB_SetupReq,a
                                    727 ;	lib\usb_handler.c:90: USB_SetupTyp = USB_SetupBuf->bRequestType;
      001E16 90 00 00         [24]  728 	mov	dptr,#_EP0_buffer
      001E19 E0               [24]  729 	movx	a,@dptr
      001E1A F5 17            [12]  730 	mov	_USB_SetupTyp,a
                                    731 ;	lib\usb_handler.c:92: if((USB_SetupTyp & USB_REQ_TYP_MASK) == USB_REQ_TYP_STANDARD) {
      001E1C E5 17            [12]  732 	mov	a,_USB_SetupTyp
      001E1E 54 60            [12]  733 	anl	a,#0x60
      001E20 60 03            [24]  734 	jz	00284$
      001E22 02 20 1F         [24]  735 	ljmp	00170$
      001E25                        736 00284$:
                                    737 ;	lib\usb_handler.c:93: switch(USB_SetupReq) {                        // request type
      001E25 E5 16            [12]  738 	mov	a,_USB_SetupReq
      001E27 FE               [12]  739 	mov	r6,a
      001E28 24 F4            [12]  740 	add	a,#0xff - 0x0b
      001E2A 50 03            [24]  741 	jnc	00285$
      001E2C 02 20 1B         [24]  742 	ljmp	00164$
      001E2F                        743 00285$:
      001E2F EE               [12]  744 	mov	a,r6
      001E30 F5 F0            [12]  745 	mov	b,a
      001E32 24 0B            [12]  746 	add	a,#(00286$-3-.)
      001E34 83               [24]  747 	movc	a,@a+pc
      001E35 F5 82            [12]  748 	mov	dpl,a
      001E37 E5 F0            [12]  749 	mov	a,b
      001E39 24 10            [12]  750 	add	a,#(00287$-3-.)
      001E3B 83               [24]  751 	movc	a,@a+pc
      001E3C F5 83            [12]  752 	mov	dph,a
      001E3E E4               [12]  753 	clr	a
      001E3F 73               [24]  754 	jmp	@a+dptr
      001E40                        755 00286$:
      001E40 3F                     756 	.db	00125$
      001E41 5F                     757 	.db	00128$
      001E42 1B                     758 	.db	00164$
      001E43 BA                     759 	.db	00145$
      001E44 1B                     760 	.db	00164$
      001E45 0E                     761 	.db	00118$
      001E46 58                     762 	.db	00101$
      001E47 1B                     763 	.db	00164$
      001E48 17                     764 	.db	00119$
      001E49 34                     765 	.db	00122$
      001E4A 37                     766 	.db	00171$
      001E4B 37                     767 	.db	00171$
      001E4C                        768 00287$:
      001E4C 1F                     769 	.db	00125$>>8
      001E4D 1F                     770 	.db	00128$>>8
      001E4E 20                     771 	.db	00164$>>8
      001E4F 1F                     772 	.db	00145$>>8
      001E50 20                     773 	.db	00164$>>8
      001E51 1F                     774 	.db	00118$>>8
      001E52 1E                     775 	.db	00101$>>8
      001E53 20                     776 	.db	00164$>>8
      001E54 1F                     777 	.db	00119$>>8
      001E55 1F                     778 	.db	00122$>>8
      001E56 20                     779 	.db	00171$>>8
      001E57 20                     780 	.db	00171$>>8
                                    781 ;	lib\usb_handler.c:94: case USB_GET_DESCRIPTOR:
      001E58                        782 00101$:
                                    783 ;	lib\usb_handler.c:95: switch(USB_SetupBuf->wValueH) {
      001E58 90 00 03         [24]  784 	mov	dptr,#(_EP0_buffer + 0x0003)
      001E5B E0               [24]  785 	movx	a,@dptr
      001E5C FE               [12]  786 	mov	r6,a
      001E5D BE 01 02         [24]  787 	cjne	r6,#0x01,00288$
      001E60 80 0A            [24]  788 	sjmp	00102$
      001E62                        789 00288$:
      001E62 BE 02 02         [24]  790 	cjne	r6,#0x02,00289$
      001E65 80 0F            [24]  791 	sjmp	00103$
      001E67                        792 00289$:
                                    793 ;	lib\usb_handler.c:97: case USB_DESCR_TYP_DEVICE:              // Device Descriptor
      001E67 BE 03 68         [24]  794 	cjne	r6,#0x03,00112$
      001E6A 80 14            [24]  795 	sjmp	00104$
      001E6C                        796 00102$:
                                    797 ;	lib\usb_handler.c:98: USB_pDescr = (uint8_t*)&DevDescr;     // put descriptor into out buffer
      001E6C 75 1C 48         [24]  798 	mov	_USB_pDescr,#_DevDescr
      001E6F 75 1D 22         [24]  799 	mov	(_USB_pDescr + 1),#(_DevDescr >> 8)
                                    800 ;	lib\usb_handler.c:99: len = sizeof(DevDescr);               // descriptor length
      001E72 7F 12            [12]  801 	mov	r7,#0x12
                                    802 ;	lib\usb_handler.c:100: break;
                                    803 ;	lib\usb_handler.c:102: case USB_DESCR_TYP_CONFIG:              // Configuration Descriptor
      001E74 80 5E            [24]  804 	sjmp	00113$
      001E76                        805 00103$:
                                    806 ;	lib\usb_handler.c:103: USB_pDescr = (uint8_t*)&CfgDescr;     // put descriptor into out buffer
      001E76 75 1C 5A         [24]  807 	mov	_USB_pDescr,#_CfgDescr
      001E79 75 1D 22         [24]  808 	mov	(_USB_pDescr + 1),#(_CfgDescr >> 8)
                                    809 ;	lib\usb_handler.c:104: len = sizeof(CfgDescr);               // descriptor length
      001E7C 7F 4B            [12]  810 	mov	r7,#0x4b
                                    811 ;	lib\usb_handler.c:105: break;
                                    812 ;	lib\usb_handler.c:107: case USB_DESCR_TYP_STRING:
      001E7E 80 54            [24]  813 	sjmp	00113$
      001E80                        814 00104$:
                                    815 ;	lib\usb_handler.c:108: switch(USB_SetupBuf->wValueL) {       // String Descriptor Index
      001E80 90 00 02         [24]  816 	mov	dptr,#(_EP0_buffer + 0x0002)
      001E83 E0               [24]  817 	movx	a,@dptr
      001E84 FE               [12]  818 	mov  r6,a
      001E85 24 FB            [12]  819 	add	a,#0xff - 0x04
      001E87 40 38            [24]  820 	jc	00110$
      001E89 EE               [12]  821 	mov	a,r6
      001E8A 2E               [12]  822 	add	a,r6
                                    823 ;	lib\usb_handler.c:109: case 0:   USB_pDescr = USB_STR_DESCR_i0; break;
      001E8B 90 1E 8F         [24]  824 	mov	dptr,#00292$
      001E8E 73               [24]  825 	jmp	@a+dptr
      001E8F                        826 00292$:
      001E8F 80 08            [24]  827 	sjmp	00105$
      001E91 80 0E            [24]  828 	sjmp	00106$
      001E93 80 14            [24]  829 	sjmp	00107$
      001E95 80 1A            [24]  830 	sjmp	00108$
      001E97 80 20            [24]  831 	sjmp	00109$
      001E99                        832 00105$:
      001E99 75 1C A5         [24]  833 	mov	_USB_pDescr,#_LangDescr
      001E9C 75 1D 22         [24]  834 	mov	(_USB_pDescr + 1),#(_LangDescr >> 8)
                                    835 ;	lib\usb_handler.c:110: case 1:   USB_pDescr = USB_STR_DESCR_i1; break;
      001E9F 80 26            [24]  836 	sjmp	00111$
      001EA1                        837 00106$:
      001EA1 75 1C A9         [24]  838 	mov	_USB_pDescr,#_ManufDescr
      001EA4 75 1D 22         [24]  839 	mov	(_USB_pDescr + 1),#(_ManufDescr >> 8)
                                    840 ;	lib\usb_handler.c:111: case 2:   USB_pDescr = USB_STR_DESCR_i2; break;
      001EA7 80 1E            [24]  841 	sjmp	00111$
      001EA9                        842 00107$:
      001EA9 75 1C C1         [24]  843 	mov	_USB_pDescr,#_ProdDescr
      001EAC 75 1D 22         [24]  844 	mov	(_USB_pDescr + 1),#(_ProdDescr >> 8)
                                    845 ;	lib\usb_handler.c:112: case 3:   USB_pDescr = USB_STR_DESCR_i3; break;
      001EAF 80 16            [24]  846 	sjmp	00111$
      001EB1                        847 00108$:
      001EB1 75 1C D3         [24]  848 	mov	_USB_pDescr,#_SerDescr
      001EB4 75 1D 22         [24]  849 	mov	(_USB_pDescr + 1),#(_SerDescr >> 8)
                                    850 ;	lib\usb_handler.c:114: case 4:   USB_pDescr = USB_STR_DESCR_i4; break;
      001EB7 80 0E            [24]  851 	sjmp	00111$
      001EB9                        852 00109$:
      001EB9 75 1C E5         [24]  853 	mov	_USB_pDescr,#_InterfDescr
      001EBC 75 1D 22         [24]  854 	mov	(_USB_pDescr + 1),#(_InterfDescr >> 8)
                                    855 ;	lib\usb_handler.c:134: default:  USB_pDescr = USB_STR_DESCR_ix; break;
      001EBF 80 06            [24]  856 	sjmp	00111$
      001EC1                        857 00110$:
      001EC1 75 1C D3         [24]  858 	mov	_USB_pDescr,#_SerDescr
      001EC4 75 1D 22         [24]  859 	mov	(_USB_pDescr + 1),#(_SerDescr >> 8)
                                    860 ;	lib\usb_handler.c:135: }
      001EC7                        861 00111$:
                                    862 ;	lib\usb_handler.c:136: len = USB_pDescr[0];                  // descriptor length
      001EC7 85 1C 82         [24]  863 	mov	dpl,_USB_pDescr
      001ECA 85 1D 83         [24]  864 	mov	dph,(_USB_pDescr + 1)
      001ECD E4               [12]  865 	clr	a
      001ECE 93               [24]  866 	movc	a,@a+dptr
      001ECF FF               [12]  867 	mov	r7,a
                                    868 ;	lib\usb_handler.c:137: break;
                                    869 ;	lib\usb_handler.c:149: default:
      001ED0 80 02            [24]  870 	sjmp	00113$
      001ED2                        871 00112$:
                                    872 ;	lib\usb_handler.c:150: len = 0xff;                           // unsupported descriptors or error
      001ED2 7F FF            [12]  873 	mov	r7,#0xff
                                    874 ;	lib\usb_handler.c:152: }
      001ED4                        875 00113$:
                                    876 ;	lib\usb_handler.c:154: if(len != 0xff) {
      001ED4 BF FF 03         [24]  877 	cjne	r7,#0xff,00293$
      001ED7 02 20 37         [24]  878 	ljmp	00171$
      001EDA                        879 00293$:
                                    880 ;	lib\usb_handler.c:155: if(USB_SetupLen > len) USB_SetupLen = len;    // limit length
      001EDA 8F 05            [24]  881 	mov	ar5,r7
      001EDC 7E 00            [12]  882 	mov	r6,#0x00
      001EDE C3               [12]  883 	clr	c
      001EDF ED               [12]  884 	mov	a,r5
      001EE0 95 1A            [12]  885 	subb	a,_USB_SetupLen
      001EE2 EE               [12]  886 	mov	a,r6
      001EE3 95 1B            [12]  887 	subb	a,(_USB_SetupLen + 1)
      001EE5 50 04            [24]  888 	jnc	00115$
      001EE7 8D 1A            [24]  889 	mov	_USB_SetupLen,r5
      001EE9 8E 1B            [24]  890 	mov	(_USB_SetupLen + 1),r6
      001EEB                        891 00115$:
                                    892 ;	lib\usb_handler.c:156: len = USB_SetupLen >= EP0_SIZE ? EP0_SIZE : USB_SetupLen;
      001EEB AD 1A            [24]  893 	mov	r5,_USB_SetupLen
      001EED AE 1B            [24]  894 	mov	r6,(_USB_SetupLen + 1)
      001EEF C3               [12]  895 	clr	c
      001EF0 ED               [12]  896 	mov	a,r5
      001EF1 94 08            [12]  897 	subb	a,#0x08
      001EF3 EE               [12]  898 	mov	a,r6
      001EF4 94 00            [12]  899 	subb	a,#0x00
      001EF6 92 08            [24]  900 	mov	b0,c
      001EF8 40 06            [24]  901 	jc	00177$
      001EFA 7D 08            [12]  902 	mov	r5,#0x08
      001EFC 7E 00            [12]  903 	mov	r6,#0x00
      001EFE 80 04            [24]  904 	sjmp	00178$
      001F00                        905 00177$:
      001F00 AD 1A            [24]  906 	mov	r5,_USB_SetupLen
      001F02 AE 1B            [24]  907 	mov	r6,(_USB_SetupLen + 1)
      001F04                        908 00178$:
      001F04 8D 07            [24]  909 	mov	ar7,r5
                                    910 ;	lib\usb_handler.c:157: USB_EP0_copyDescr(len);                 // copy descriptor to EP0
      001F06 8F 82            [24]  911 	mov	dpl,r7
      001F08 12 1D D5         [24]  912 	lcall	_USB_EP0_copyDescr
                                    913 ;	lib\usb_handler.c:159: break;
      001F0B 02 20 37         [24]  914 	ljmp	00171$
                                    915 ;	lib\usb_handler.c:161: case USB_SET_ADDRESS:
      001F0E                        916 00118$:
                                    917 ;	lib\usb_handler.c:162: USB_Addr = USB_SetupBuf->wValueL;        // save the assigned address
      001F0E 90 00 02         [24]  918 	mov	dptr,#(_EP0_buffer + 0x0002)
      001F11 E0               [24]  919 	movx	a,@dptr
      001F12 F5 19            [12]  920 	mov	_USB_Addr,a
                                    921 ;	lib\usb_handler.c:163: break;
      001F14 02 20 37         [24]  922 	ljmp	00171$
                                    923 ;	lib\usb_handler.c:165: case USB_GET_CONFIGURATION:
      001F17                        924 00119$:
                                    925 ;	lib\usb_handler.c:166: EP0_buffer[0] = USB_Config;
      001F17 90 00 00         [24]  926 	mov	dptr,#_EP0_buffer
      001F1A E5 18            [12]  927 	mov	a,_USB_Config
      001F1C F0               [24]  928 	movx	@dptr,a
                                    929 ;	lib\usb_handler.c:167: if(USB_SetupLen > 1) USB_SetupLen = 1;
      001F1D AD 1A            [24]  930 	mov	r5,_USB_SetupLen
      001F1F AE 1B            [24]  931 	mov	r6,(_USB_SetupLen + 1)
      001F21 C3               [12]  932 	clr	c
      001F22 74 01            [12]  933 	mov	a,#0x01
      001F24 9D               [12]  934 	subb	a,r5
      001F25 E4               [12]  935 	clr	a
      001F26 9E               [12]  936 	subb	a,r6
      001F27 50 06            [24]  937 	jnc	00121$
      001F29 75 1A 01         [24]  938 	mov	_USB_SetupLen,#0x01
      001F2C 75 1B 00         [24]  939 	mov	(_USB_SetupLen + 1),#0x00
      001F2F                        940 00121$:
                                    941 ;	lib\usb_handler.c:168: len = USB_SetupLen;
      001F2F AF 1A            [24]  942 	mov	r7,_USB_SetupLen
                                    943 ;	lib\usb_handler.c:169: break;
      001F31 02 20 37         [24]  944 	ljmp	00171$
                                    945 ;	lib\usb_handler.c:171: case USB_SET_CONFIGURATION:
      001F34                        946 00122$:
                                    947 ;	lib\usb_handler.c:172: USB_Config  = USB_SetupBuf->wValueL;
      001F34 90 00 02         [24]  948 	mov	dptr,#(_EP0_buffer + 0x0002)
      001F37 E0               [24]  949 	movx	a,@dptr
      001F38 F5 18            [12]  950 	mov	_USB_Config,a
                                    951 ;	lib\usb_handler.c:173: USB_ENUM_OK = 1;
                                    952 ;	assignBit
      001F3A D2 01            [12]  953 	setb	_USB_ENUM_OK
                                    954 ;	lib\usb_handler.c:174: break;
      001F3C 02 20 37         [24]  955 	ljmp	00171$
                                    956 ;	lib\usb_handler.c:182: case USB_GET_STATUS:
      001F3F                        957 00125$:
                                    958 ;	lib\usb_handler.c:183: EP0_buffer[0] = 0x00;
      001F3F 90 00 00         [24]  959 	mov	dptr,#_EP0_buffer
      001F42 E4               [12]  960 	clr	a
      001F43 F0               [24]  961 	movx	@dptr,a
                                    962 ;	lib\usb_handler.c:184: EP0_buffer[1] = 0x00;
      001F44 90 00 01         [24]  963 	mov	dptr,#(_EP0_buffer + 0x0001)
      001F47 F0               [24]  964 	movx	@dptr,a
                                    965 ;	lib\usb_handler.c:185: if(USB_SetupLen > 2) USB_SetupLen = 2;
      001F48 AD 1A            [24]  966 	mov	r5,_USB_SetupLen
      001F4A AE 1B            [24]  967 	mov	r6,(_USB_SetupLen + 1)
      001F4C C3               [12]  968 	clr	c
      001F4D 74 02            [12]  969 	mov	a,#0x02
      001F4F 9D               [12]  970 	subb	a,r5
      001F50 E4               [12]  971 	clr	a
      001F51 9E               [12]  972 	subb	a,r6
      001F52 50 06            [24]  973 	jnc	00127$
      001F54 75 1A 02         [24]  974 	mov	_USB_SetupLen,#0x02
      001F57 75 1B 00         [24]  975 	mov	(_USB_SetupLen + 1),#0x00
      001F5A                        976 00127$:
                                    977 ;	lib\usb_handler.c:186: len = USB_SetupLen;
      001F5A AF 1A            [24]  978 	mov	r7,_USB_SetupLen
                                    979 ;	lib\usb_handler.c:187: break;
      001F5C 02 20 37         [24]  980 	ljmp	00171$
                                    981 ;	lib\usb_handler.c:189: case USB_CLEAR_FEATURE:
      001F5F                        982 00128$:
                                    983 ;	lib\usb_handler.c:190: if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_DEVICE) {
      001F5F E5 17            [12]  984 	mov	a,_USB_SetupTyp
      001F61 54 1F            [12]  985 	anl	a,#0x1f
      001F63 70 1E            [24]  986 	jnz	00143$
                                    987 ;	lib\usb_handler.c:191: if(USB_SetupBuf->wValueL == 0x01) {
      001F65 90 00 02         [24]  988 	mov	dptr,#(_EP0_buffer + 0x0002)
      001F68 E0               [24]  989 	movx	a,@dptr
      001F69 FE               [12]  990 	mov	r6,a
      001F6A BE 01 11         [24]  991 	cjne	r6,#0x01,00133$
                                    992 ;	lib\usb_handler.c:192: if(((uint8_t*)&CfgDescr)[7] & 0x20) {
      001F6D 90 22 61         [24]  993 	mov	dptr,#(_CfgDescr + 0x0007)
      001F70 E4               [12]  994 	clr	a
      001F71 93               [24]  995 	movc	a,@a+dptr
      001F72 FE               [12]  996 	mov	r6,a
      001F73 30 E5 03         [24]  997 	jnb	acc.5,00302$
      001F76 02 20 37         [24]  998 	ljmp	00171$
      001F79                        999 00302$:
                                   1000 ;	lib\usb_handler.c:195: else len = 0xff;               // failed
      001F79 7F FF            [12] 1001 	mov	r7,#0xff
      001F7B 02 20 37         [24] 1002 	ljmp	00171$
      001F7E                       1003 00133$:
                                   1004 ;	lib\usb_handler.c:197: else len = 0xff;                 // failed
      001F7E 7F FF            [12] 1005 	mov	r7,#0xff
      001F80 02 20 37         [24] 1006 	ljmp	00171$
      001F83                       1007 00143$:
                                   1008 ;	lib\usb_handler.c:199: else if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_ENDP) {
      001F83 AD 17            [24] 1009 	mov	r5,_USB_SetupTyp
      001F85 53 05 1F         [24] 1010 	anl	ar5,#0x1f
      001F88 7E 00            [12] 1011 	mov	r6,#0x00
      001F8A BD 02 28         [24] 1012 	cjne	r5,#0x02,00140$
      001F8D BE 00 25         [24] 1013 	cjne	r6,#0x00,00140$
                                   1014 ;	lib\usb_handler.c:200: switch(USB_SetupBuf->wIndexL) {
      001F90 90 00 04         [24] 1015 	mov	dptr,#(_EP0_buffer + 0x0004)
      001F93 E0               [24] 1016 	movx	a,@dptr
      001F94 FE               [12] 1017 	mov	r6,a
      001F95 BE 02 02         [24] 1018 	cjne	r6,#0x02,00305$
      001F98 80 05            [24] 1019 	sjmp	00135$
      001F9A                       1020 00305$:
                                   1021 ;	lib\usb_handler.c:212: case 0x02:
      001F9A BE 82 13         [24] 1022 	cjne	r6,#0x82,00137$
      001F9D 80 06            [24] 1023 	sjmp	00136$
      001F9F                       1024 00135$:
                                   1025 ;	lib\usb_handler.c:213: UEP2_CTRL = (UEP2_CTRL & ~(bUEP_R_TOG | MASK_UEP_R_RES)) | UEP_R_RES_ACK;
      001F9F 53 D4 73         [24] 1026 	anl	_UEP2_CTRL,#0x73
                                   1027 ;	lib\usb_handler.c:214: break;
      001FA2 02 20 37         [24] 1028 	ljmp	00171$
                                   1029 ;	lib\usb_handler.c:217: case 0x82:
      001FA5                       1030 00136$:
                                   1031 ;	lib\usb_handler.c:218: UEP2_CTRL = (UEP2_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES)) | UEP_T_RES_NAK;
      001FA5 74 BC            [12] 1032 	mov	a,#0xbc
      001FA7 55 D4            [12] 1033 	anl	a,_UEP2_CTRL
      001FA9 44 02            [12] 1034 	orl	a,#0x02
      001FAB F5 D4            [12] 1035 	mov	_UEP2_CTRL,a
                                   1036 ;	lib\usb_handler.c:219: break;
      001FAD 02 20 37         [24] 1037 	ljmp	00171$
                                   1038 ;	lib\usb_handler.c:241: default:
      001FB0                       1039 00137$:
                                   1040 ;	lib\usb_handler.c:242: len = 0xff;                 // unsupported endpoint
      001FB0 7F FF            [12] 1041 	mov	r7,#0xff
                                   1042 ;	lib\usb_handler.c:244: }
      001FB2 02 20 37         [24] 1043 	ljmp	00171$
      001FB5                       1044 00140$:
                                   1045 ;	lib\usb_handler.c:246: else len = 0xff;                  // unsupported for non-endpoint
      001FB5 7F FF            [12] 1046 	mov	r7,#0xff
                                   1047 ;	lib\usb_handler.c:247: break;
      001FB7 02 20 37         [24] 1048 	ljmp	00171$
                                   1049 ;	lib\usb_handler.c:249: case USB_SET_FEATURE:
      001FBA                       1050 00145$:
                                   1051 ;	lib\usb_handler.c:250: if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_DEVICE) {
      001FBA E5 17            [12] 1052 	mov	a,_USB_SetupTyp
      001FBC 54 1F            [12] 1053 	anl	a,#0x1f
      001FBE 70 19            [24] 1054 	jnz	00162$
                                   1055 ;	lib\usb_handler.c:251: if(USB_SetupBuf->wValueL == 0x01) {
      001FC0 90 00 02         [24] 1056 	mov	dptr,#(_EP0_buffer + 0x0002)
      001FC3 E0               [24] 1057 	movx	a,@dptr
      001FC4 FE               [12] 1058 	mov	r6,a
      001FC5 BE 01 0D         [24] 1059 	cjne	r6,#0x01,00149$
                                   1060 ;	lib\usb_handler.c:252: if( !(((uint8_t*)&CfgDescr)[7] & 0x20) ) len = 0xff;  // failed
      001FC8 90 22 61         [24] 1061 	mov	dptr,#(_CfgDescr + 0x0007)
      001FCB E4               [12] 1062 	clr	a
      001FCC 93               [24] 1063 	movc	a,@a+dptr
      001FCD FE               [12] 1064 	mov	r6,a
      001FCE 20 E5 66         [24] 1065 	jb	acc.5,00171$
      001FD1 7F FF            [12] 1066 	mov	r7,#0xff
      001FD3 80 62            [24] 1067 	sjmp	00171$
      001FD5                       1068 00149$:
                                   1069 ;	lib\usb_handler.c:254: else len = 0xff;                                        // failed
      001FD5 7F FF            [12] 1070 	mov	r7,#0xff
      001FD7 80 5E            [24] 1071 	sjmp	00171$
      001FD9                       1072 00162$:
                                   1073 ;	lib\usb_handler.c:256: else if((USB_SetupTyp & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_ENDP) {
      001FD9 AD 17            [24] 1074 	mov	r5,_USB_SetupTyp
      001FDB 53 05 1F         [24] 1075 	anl	ar5,#0x1f
      001FDE 7E 00            [12] 1076 	mov	r6,#0x00
      001FE0 BD 02 34         [24] 1077 	cjne	r5,#0x02,00159$
      001FE3 BE 00 31         [24] 1078 	cjne	r6,#0x00,00159$
                                   1079 ;	lib\usb_handler.c:257: if(USB_SetupBuf->wValueL == 0x00) {
      001FE6 90 00 02         [24] 1080 	mov	dptr,#(_EP0_buffer + 0x0002)
      001FE9 E0               [24] 1081 	movx	a,@dptr
      001FEA 70 27            [24] 1082 	jnz	00156$
                                   1083 ;	lib\usb_handler.c:258: switch(USB_SetupBuf->wIndexL) {
      001FEC 90 00 04         [24] 1084 	mov	dptr,#(_EP0_buffer + 0x0004)
      001FEF E0               [24] 1085 	movx	a,@dptr
      001FF0 FE               [12] 1086 	mov	r6,a
      001FF1 BE 02 02         [24] 1087 	cjne	r6,#0x02,00315$
      001FF4 80 05            [24] 1088 	sjmp	00151$
      001FF6                       1089 00315$:
                                   1090 ;	lib\usb_handler.c:270: case 0x02:
      001FF6 BE 82 16         [24] 1091 	cjne	r6,#0x82,00153$
      001FF9 80 0A            [24] 1092 	sjmp	00152$
      001FFB                       1093 00151$:
                                   1094 ;	lib\usb_handler.c:271: UEP2_CTRL = (UEP2_CTRL & ~bUEP_R_TOG) | UEP_R_RES_STALL;
      001FFB 74 7F            [12] 1095 	mov	a,#0x7f
      001FFD 55 D4            [12] 1096 	anl	a,_UEP2_CTRL
      001FFF 44 0C            [12] 1097 	orl	a,#0x0c
      002001 F5 D4            [12] 1098 	mov	_UEP2_CTRL,a
                                   1099 ;	lib\usb_handler.c:272: break;
                                   1100 ;	lib\usb_handler.c:275: case 0x82:
      002003 80 32            [24] 1101 	sjmp	00171$
      002005                       1102 00152$:
                                   1103 ;	lib\usb_handler.c:276: UEP2_CTRL = (UEP2_CTRL & ~bUEP_T_TOG) | UEP_T_RES_STALL;
      002005 74 BF            [12] 1104 	mov	a,#0xbf
      002007 55 D4            [12] 1105 	anl	a,_UEP2_CTRL
      002009 44 03            [12] 1106 	orl	a,#0x03
      00200B F5 D4            [12] 1107 	mov	_UEP2_CTRL,a
                                   1108 ;	lib\usb_handler.c:277: break;
                                   1109 ;	lib\usb_handler.c:299: default:
      00200D 80 28            [24] 1110 	sjmp	00171$
      00200F                       1111 00153$:
                                   1112 ;	lib\usb_handler.c:300: len = 0xff;               // failed
      00200F 7F FF            [12] 1113 	mov	r7,#0xff
                                   1114 ;	lib\usb_handler.c:302: }
      002011 80 24            [24] 1115 	sjmp	00171$
      002013                       1116 00156$:
                                   1117 ;	lib\usb_handler.c:304: else len = 0xff;                // failed
      002013 7F FF            [12] 1118 	mov	r7,#0xff
      002015 80 20            [24] 1119 	sjmp	00171$
      002017                       1120 00159$:
                                   1121 ;	lib\usb_handler.c:306: else len = 0xff;                  // failed
      002017 7F FF            [12] 1122 	mov	r7,#0xff
                                   1123 ;	lib\usb_handler.c:307: break;
                                   1124 ;	lib\usb_handler.c:309: default:
      002019 80 1C            [24] 1125 	sjmp	00171$
      00201B                       1126 00164$:
                                   1127 ;	lib\usb_handler.c:310: len = 0xff;                       // failed
      00201B 7F FF            [12] 1128 	mov	r7,#0xff
                                   1129 ;	lib\usb_handler.c:312: }
      00201D 80 18            [24] 1130 	sjmp	00171$
      00201F                       1131 00170$:
                                   1132 ;	lib\usb_handler.c:316: else if((USB_SetupTyp & USB_REQ_TYP_MASK) == USB_REQ_TYP_CLASS) {
      00201F AD 17            [24] 1133 	mov	r5,_USB_SetupTyp
      002021 53 05 60         [24] 1134 	anl	ar5,#0x60
      002024 7E 00            [12] 1135 	mov	r6,#0x00
      002026 BD 20 0C         [24] 1136 	cjne	r5,#0x20,00167$
      002029 BE 00 09         [24] 1137 	cjne	r6,#0x00,00167$
                                   1138 ;	lib\usb_handler.c:317: len = USB_CLASS_SETUP_handler();
      00202C 12 1D 0D         [24] 1139 	lcall	_CDC_control
      00202F AE 82            [24] 1140 	mov	r6,dpl
      002031 8E 07            [24] 1141 	mov	ar7,r6
      002033 80 02            [24] 1142 	sjmp	00171$
      002035                       1143 00167$:
                                   1144 ;	lib\usb_handler.c:327: else len = 0xff;
      002035 7F FF            [12] 1145 	mov	r7,#0xff
      002037                       1146 00171$:
                                   1147 ;	lib\usb_handler.c:329: if(len == 0xff) {                         // stall
      002037 BF FF 07         [24] 1148 	cjne	r7,#0xff,00173$
                                   1149 ;	lib\usb_handler.c:330: USB_SetupReq = 0xff;
      00203A 75 16 FF         [24] 1150 	mov	_USB_SetupReq,#0xff
                                   1151 ;	lib\usb_handler.c:331: UEP0_CTRL  = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL; // STALL
      00203D 75 DC CF         [24] 1152 	mov	_UEP0_CTRL,#0xcf
      002040 22               [24] 1153 	ret
      002041                       1154 00173$:
                                   1155 ;	lib\usb_handler.c:334: USB_SetupLen -= len;
      002041 8F 05            [24] 1156 	mov	ar5,r7
      002043 7E 00            [12] 1157 	mov	r6,#0x00
      002045 AB 1A            [24] 1158 	mov	r3,_USB_SetupLen
      002047 AC 1B            [24] 1159 	mov	r4,(_USB_SetupLen + 1)
      002049 EB               [12] 1160 	mov	a,r3
      00204A C3               [12] 1161 	clr	c
      00204B 9D               [12] 1162 	subb	a,r5
      00204C FB               [12] 1163 	mov	r3,a
      00204D EC               [12] 1164 	mov	a,r4
      00204E 9E               [12] 1165 	subb	a,r6
      00204F FC               [12] 1166 	mov	r4,a
      002050 8B 1A            [24] 1167 	mov	_USB_SetupLen,r3
      002052 8C 1B            [24] 1168 	mov	(_USB_SetupLen + 1),r4
                                   1169 ;	lib\usb_handler.c:335: UEP0_T_LEN    = len;
      002054 8F DD            [24] 1170 	mov	_UEP0_T_LEN,r7
                                   1171 ;	lib\usb_handler.c:336: UEP0_CTRL     = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;
      002056 75 DC C0         [24] 1172 	mov	_UEP0_CTRL,#0xc0
                                   1173 ;	lib\usb_handler.c:338: }
      002059 22               [24] 1174 	ret
                                   1175 ;------------------------------------------------------------
                                   1176 ;Allocation info for local variables in function 'USB_EP0_IN'
                                   1177 ;------------------------------------------------------------
                                   1178 ;len                       Allocated to registers r6 
                                   1179 ;------------------------------------------------------------
                                   1180 ;	lib\usb_handler.c:341: void USB_EP0_IN(void) {
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function USB_EP0_IN
                                   1183 ;	-----------------------------------------
      00205A                       1184 _USB_EP0_IN:
                                   1185 ;	lib\usb_handler.c:358: switch(USB_SetupReq) {
      00205A AF 16            [24] 1186 	mov	r7,_USB_SetupReq
      00205C BF 05 02         [24] 1187 	cjne	r7,#0x05,00121$
      00205F 80 3A            [24] 1188 	sjmp	00102$
      002061                       1189 00121$:
      002061 BF 06 45         [24] 1190 	cjne	r7,#0x06,00103$
                                   1191 ;	lib\usb_handler.c:360: len = USB_SetupLen >= EP0_SIZE ? EP0_SIZE : USB_SetupLen;
      002064 AE 1A            [24] 1192 	mov	r6,_USB_SetupLen
      002066 AF 1B            [24] 1193 	mov	r7,(_USB_SetupLen + 1)
      002068 C3               [12] 1194 	clr	c
      002069 EE               [12] 1195 	mov	a,r6
      00206A 94 08            [12] 1196 	subb	a,#0x08
      00206C EF               [12] 1197 	mov	a,r7
      00206D 94 00            [12] 1198 	subb	a,#0x00
      00206F 92 08            [24] 1199 	mov	b0,c
      002071 40 06            [24] 1200 	jc	00107$
      002073 7E 08            [12] 1201 	mov	r6,#0x08
      002075 7F 00            [12] 1202 	mov	r7,#0x00
      002077 80 04            [24] 1203 	sjmp	00108$
      002079                       1204 00107$:
      002079 AE 1A            [24] 1205 	mov	r6,_USB_SetupLen
      00207B AF 1B            [24] 1206 	mov	r7,(_USB_SetupLen + 1)
      00207D                       1207 00108$:
                                   1208 ;	lib\usb_handler.c:361: USB_EP0_copyDescr(len);                     // copy descriptor to EP0                                
      00207D 8E 82            [24] 1209 	mov	dpl,r6
      00207F 12 1D D5         [24] 1210 	lcall	_USB_EP0_copyDescr
                                   1211 ;	lib\usb_handler.c:362: USB_SetupLen -= len;
      002082 8E 05            [24] 1212 	mov	ar5,r6
      002084 7F 00            [12] 1213 	mov	r7,#0x00
      002086 AB 1A            [24] 1214 	mov	r3,_USB_SetupLen
      002088 AC 1B            [24] 1215 	mov	r4,(_USB_SetupLen + 1)
      00208A EB               [12] 1216 	mov	a,r3
      00208B C3               [12] 1217 	clr	c
      00208C 9D               [12] 1218 	subb	a,r5
      00208D FB               [12] 1219 	mov	r3,a
      00208E EC               [12] 1220 	mov	a,r4
      00208F 9F               [12] 1221 	subb	a,r7
      002090 FC               [12] 1222 	mov	r4,a
      002091 8B 1A            [24] 1223 	mov	_USB_SetupLen,r3
      002093 8C 1B            [24] 1224 	mov	(_USB_SetupLen + 1),r4
                                   1225 ;	lib\usb_handler.c:363: UEP0_T_LEN    = len;
      002095 8E DD            [24] 1226 	mov	_UEP0_T_LEN,r6
                                   1227 ;	lib\usb_handler.c:364: UEP0_CTRL    ^= bUEP_T_TOG;                 // switch between DATA0 and DATA1
      002097 63 DC 40         [24] 1228 	xrl	_UEP0_CTRL,#0x40
                                   1229 ;	lib\usb_handler.c:365: break;
                                   1230 ;	lib\usb_handler.c:367: case USB_SET_ADDRESS:
      00209A 22               [24] 1231 	ret
      00209B                       1232 00102$:
                                   1233 ;	lib\usb_handler.c:368: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | USB_Addr;
      00209B E5 E3            [12] 1234 	mov	a,_USB_DEV_AD
      00209D 54 80            [12] 1235 	anl	a,#0x80
      00209F FF               [12] 1236 	mov	r7,a
      0020A0 E5 19            [12] 1237 	mov	a,_USB_Addr
      0020A2 4F               [12] 1238 	orl	a,r7
      0020A3 F5 E3            [12] 1239 	mov	_USB_DEV_AD,a
                                   1240 ;	lib\usb_handler.c:369: UEP0_CTRL  = bUEP_R_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
      0020A5 75 DC 82         [24] 1241 	mov	_UEP0_CTRL,#0x82
                                   1242 ;	lib\usb_handler.c:370: break;
                                   1243 ;	lib\usb_handler.c:372: default:
      0020A8 22               [24] 1244 	ret
      0020A9                       1245 00103$:
                                   1246 ;	lib\usb_handler.c:373: UEP0_CTRL  = bUEP_R_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
      0020A9 75 DC 82         [24] 1247 	mov	_UEP0_CTRL,#0x82
                                   1248 ;	lib\usb_handler.c:375: }
                                   1249 ;	lib\usb_handler.c:376: }
      0020AC 22               [24] 1250 	ret
                                   1251 ;------------------------------------------------------------
                                   1252 ;Allocation info for local variables in function 'USB_EP0_OUT'
                                   1253 ;------------------------------------------------------------
                                   1254 ;	lib\usb_handler.c:379: void USB_EP0_OUT(void) {
                                   1255 ;	-----------------------------------------
                                   1256 ;	 function USB_EP0_OUT
                                   1257 ;	-----------------------------------------
      0020AD                       1258 _USB_EP0_OUT:
                                   1259 ;	lib\usb_handler.c:381: if((USB_SetupTyp & USB_REQ_TYP_MASK) == USB_REQ_TYP_CLASS) {
      0020AD AE 17            [24] 1260 	mov	r6,_USB_SetupTyp
      0020AF 53 06 60         [24] 1261 	anl	ar6,#0x60
      0020B2 7F 00            [12] 1262 	mov	r7,#0x00
      0020B4 BE 20 06         [24] 1263 	cjne	r6,#0x20,00102$
      0020B7 BF 00 03         [24] 1264 	cjne	r7,#0x00,00102$
                                   1265 ;	lib\usb_handler.c:382: USB_CLASS_OUT_handler();
                                   1266 ;	lib\usb_handler.c:383: return;
      0020BA 02 1D 52         [24] 1267 	ljmp	_CDC_EP0_OUT
      0020BD                       1268 00102$:
                                   1269 ;	lib\usb_handler.c:394: UEP0_CTRL  = bUEP_T_TOG | UEP_T_RES_ACK | UEP_R_RES_ACK;
      0020BD 75 DC 40         [24] 1270 	mov	_UEP0_CTRL,#0x40
                                   1271 ;	lib\usb_handler.c:395: }
      0020C0 22               [24] 1272 	ret
                                   1273 ;------------------------------------------------------------
                                   1274 ;Allocation info for local variables in function 'USB_interrupt'
                                   1275 ;------------------------------------------------------------
                                   1276 ;callIndex                 Allocated to registers r7 
                                   1277 ;------------------------------------------------------------
                                   1278 ;	lib\usb_handler.c:402: void USB_interrupt(void) {
                                   1279 ;	-----------------------------------------
                                   1280 ;	 function USB_interrupt
                                   1281 ;	-----------------------------------------
      0020C1                       1282 _USB_interrupt:
                                   1283 ;	lib\usb_handler.c:405: if(UIF_TRANSFER) {
      0020C1 30 D9 4F         [24] 1284 	jnb	_UIF_TRANSFER,00114$
                                   1285 ;	lib\usb_handler.c:407: uint8_t callIndex = USB_INT_ST & MASK_UIS_ENDP;
      0020C4 AF D9            [24] 1286 	mov	r7,_USB_INT_ST
      0020C6 53 07 0F         [24] 1287 	anl	ar7,#0x0f
                                   1288 ;	lib\usb_handler.c:408: switch (USB_INT_ST & MASK_UIS_TOKEN) {
      0020C9 AD D9            [24] 1289 	mov	r5,_USB_INT_ST
      0020CB 53 05 30         [24] 1290 	anl	ar5,#0x30
      0020CE 7E 00            [12] 1291 	mov	r6,#0x00
      0020D0 BD 00 05         [24] 1292 	cjne	r5,#0x00,00162$
      0020D3 BE 00 02         [24] 1293 	cjne	r6,#0x00,00162$
      0020D6 80 27            [24] 1294 	sjmp	00107$
      0020D8                       1295 00162$:
      0020D8 BD 20 05         [24] 1296 	cjne	r5,#0x20,00163$
      0020DB BE 00 02         [24] 1297 	cjne	r6,#0x00,00163$
      0020DE 80 0B            [24] 1298 	sjmp	00102$
      0020E0                       1299 00163$:
      0020E0 BD 30 2E         [24] 1300 	cjne	r5,#0x30,00112$
      0020E3 BE 00 2B         [24] 1301 	cjne	r6,#0x00,00112$
                                   1302 ;	lib\usb_handler.c:411: EP0_SETUP_callback();
      0020E6 12 1D F9         [24] 1303 	lcall	_USB_EP0_SETUP
                                   1304 ;	lib\usb_handler.c:412: break;
                                   1305 ;	lib\usb_handler.c:414: case UIS_TOKEN_IN:
      0020E9 80 26            [24] 1306 	sjmp	00112$
      0020EB                       1307 00102$:
                                   1308 ;	lib\usb_handler.c:415: switch (callIndex) {
      0020EB BF 00 02         [24] 1309 	cjne	r7,#0x00,00166$
      0020EE 80 05            [24] 1310 	sjmp	00103$
      0020F0                       1311 00166$:
                                   1312 ;	lib\usb_handler.c:416: case 0: EP0_IN_callback(); break;
      0020F0 BF 02 1E         [24] 1313 	cjne	r7,#0x02,00112$
      0020F3 80 05            [24] 1314 	sjmp	00104$
      0020F5                       1315 00103$:
      0020F5 12 20 5A         [24] 1316 	lcall	_USB_EP0_IN
                                   1317 ;	lib\usb_handler.c:421: case 2: EP2_IN_callback(); break;
      0020F8 80 17            [24] 1318 	sjmp	00112$
      0020FA                       1319 00104$:
      0020FA 12 1D 88         [24] 1320 	lcall	_CDC_EP2_IN
                                   1321 ;	lib\usb_handler.c:433: case UIS_TOKEN_OUT:
      0020FD 80 12            [24] 1322 	sjmp	00112$
      0020FF                       1323 00107$:
                                   1324 ;	lib\usb_handler.c:434: switch (callIndex) {
      0020FF BF 00 02         [24] 1325 	cjne	r7,#0x00,00168$
      002102 80 05            [24] 1326 	sjmp	00108$
      002104                       1327 00168$:
                                   1328 ;	lib\usb_handler.c:435: case 0: EP0_OUT_callback(); break;
      002104 BF 02 0A         [24] 1329 	cjne	r7,#0x02,00112$
      002107 80 05            [24] 1330 	sjmp	00109$
      002109                       1331 00108$:
      002109 12 20 AD         [24] 1332 	lcall	_USB_EP0_OUT
                                   1333 ;	lib\usb_handler.c:440: case 2: EP2_OUT_callback(); break;
      00210C 80 03            [24] 1334 	sjmp	00112$
      00210E                       1335 00109$:
      00210E 12 1D 93         [24] 1336 	lcall	_CDC_EP2_OUT
                                   1337 ;	lib\usb_handler.c:451: }
      002111                       1338 00112$:
                                   1339 ;	lib\usb_handler.c:452: UIF_TRANSFER = 0;                       // clear interrupt flag
                                   1340 ;	assignBit
      002111 C2 D9            [12] 1341 	clr	_UIF_TRANSFER
      002113                       1342 00114$:
                                   1343 ;	lib\usb_handler.c:456: if(UIF_SUSPEND) {
                                   1344 ;	lib\usb_handler.c:457: UIF_SUSPEND = 0;                        // clear interrupt flag
                                   1345 ;	assignBit
      002113 10 DA 02         [24] 1346 	jbc	_UIF_SUSPEND,00170$
      002116 80 00            [24] 1347 	sjmp	00116$
      002118                       1348 00170$:
      002118                       1349 00116$:
                                   1350 ;	lib\usb_handler.c:472: if(UIF_BUS_RST) {
      002118 30 D8 09         [24] 1351 	jnb	_UIF_BUS_RST,00119$
                                   1352 ;	lib\usb_handler.c:476: USB_EP_init();                          // reset endpoints
      00211B 12 1D AE         [24] 1353 	lcall	_USB_EP_init
                                   1354 ;	lib\usb_handler.c:477: USB_DEV_AD = 0x00;                      // reset device address
      00211E 75 E3 00         [24] 1355 	mov	_USB_DEV_AD,#0x00
                                   1356 ;	lib\usb_handler.c:478: USB_INT_FG = 0x1f;                      // clear all interrupt flags
      002121 75 D8 1F         [24] 1357 	mov	_USB_INT_FG,#0x1f
      002124                       1358 00119$:
                                   1359 ;	lib\usb_handler.c:480: }
      002124 22               [24] 1360 	ret
                                   1361 	.area CSEG    (CODE)
                                   1362 	.area CONST   (CODE)
                                   1363 	.area XINIT   (CODE)
                                   1364 	.area CABS    (ABS,CODE)
