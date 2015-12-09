                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
                              4 ; This file was generated Wed Dec  9 12:52:27 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-huge
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _autostart_processes
                             13 	.globl _device_fs_init
                             14 	.globl _crypto_init
                             15 	.globl _create_security_data_msg
                             16 	.globl _create_security_client_hello_msg
                             17 	.globl _decrypt_data_by_master_key
                             18 	.globl _get_network_shared_key
                             19 	.globl _set_network_shared_key
                             20 	.globl _decrypt_data_by_network_shared_key
                             21 	.globl _create_new_device_msg
                             22 	.globl _device_find_object
                             23 	.globl _object_remove_subscriber
                             24 	.globl _object_add_subscriber
                             25 	.globl _object_instance_find_resource
                             26 	.globl _set_resource_value
                             27 	.globl _get_resource_value
                             28 	.globl _subscriber_value_compare_type_init
                             29 	.globl _subscriber_report_type_init
                             30 	.globl _subscriber_alloc
                             31 	.globl _subscribers_mem_pool_init
                             32 	.globl _uip_debug_ipaddr_print
                             33 	.globl _create_device
                             34 	.globl _cJSON_GetArrayItem
                             35 	.globl _cJSON_GetArraySize
                             36 	.globl _cJSON_Parse
                             37 	.globl _sprintf
                             38 	.globl _printf
                             39 	.globl _uip_udp_packet_sendto
                             40 	.globl _uip_ds6_set_addr_iid
                             41 	.globl _uip_ds6_get_global
                             42 	.globl _uip_ds6_addr_add
                             43 	.globl _udp_new
                             44 	.globl _etimer_expired
                             45 	.globl _etimer_restart
                             46 	.globl _etimer_set
                             47 	.globl _process_post
                             48 	.globl _strlen
                             49 	.globl _memcmp
                             50 	.globl _strcpy
                             51 	.globl _memcpy
                             52 	.globl _ACTIVE
                             53 	.globl _TX_BYTE
                             54 	.globl _RX_BYTE
                             55 	.globl _ERR
                             56 	.globl _FE
                             57 	.globl _SLAVE
                             58 	.globl _RE
                             59 	.globl _MODE
                             60 	.globl _T3OVFIF
                             61 	.globl _T3CH0IF
                             62 	.globl _T3CH1IF
                             63 	.globl _T4OVFIF
                             64 	.globl _T4CH0IF
                             65 	.globl _T4CH1IF
                             66 	.globl _OVFIM
                             67 	.globl _B_0
                             68 	.globl _B_1
                             69 	.globl _B_2
                             70 	.globl _B_3
                             71 	.globl _B_4
                             72 	.globl _B_5
                             73 	.globl _B_6
                             74 	.globl _B_7
                             75 	.globl _P2IF
                             76 	.globl _UTX0IF
                             77 	.globl _UTX1IF
                             78 	.globl _P1IF
                             79 	.globl _WDTIF
                             80 	.globl _ACC_0
                             81 	.globl _ACC_1
                             82 	.globl _ACC_2
                             83 	.globl _ACC_3
                             84 	.globl _ACC_4
                             85 	.globl _ACC_5
                             86 	.globl _ACC_6
                             87 	.globl _ACC_7
                             88 	.globl _P
                             89 	.globl _F1
                             90 	.globl _OV
                             91 	.globl _RS0
                             92 	.globl _RS1
                             93 	.globl _F0
                             94 	.globl _AC
                             95 	.globl _CY
                             96 	.globl _DMAIF
                             97 	.globl _T1IF
                             98 	.globl _T2IF
                             99 	.globl _T3IF
                            100 	.globl _T4IF
                            101 	.globl _P0IF
                            102 	.globl _STIF
                            103 	.globl _DMAIE
                            104 	.globl _T1IE
                            105 	.globl _T2IE
                            106 	.globl _T3IE
                            107 	.globl _T4IE
                            108 	.globl _P0IE
                            109 	.globl _RFERRIE
                            110 	.globl _ADCIE
                            111 	.globl _URX0IE
                            112 	.globl _URX1IE
                            113 	.globl _ENCIE
                            114 	.globl _STIE
                            115 	.globl _EA
                            116 	.globl _P2_0
                            117 	.globl _P2_1
                            118 	.globl _P2_2
                            119 	.globl _P2_3
                            120 	.globl _P2_4
                            121 	.globl _P2_5
                            122 	.globl _P2_6
                            123 	.globl _P2_7
                            124 	.globl _ENCIF_0
                            125 	.globl _ENCIF_1
                            126 	.globl _P1_0
                            127 	.globl _P1_1
                            128 	.globl _P1_2
                            129 	.globl _P1_3
                            130 	.globl _P1_4
                            131 	.globl _P1_5
                            132 	.globl _P1_6
                            133 	.globl _P1_7
                            134 	.globl _IT0
                            135 	.globl _RFERRIF
                            136 	.globl _IT1
                            137 	.globl _URX0IF
                            138 	.globl _ADCIF
                            139 	.globl _URX1IF
                            140 	.globl _P0_0
                            141 	.globl _P0_1
                            142 	.globl _P0_2
                            143 	.globl _P0_3
                            144 	.globl _P0_4
                            145 	.globl _P0_5
                            146 	.globl _P0_6
                            147 	.globl _P0_7
                            148 	.globl _WDCTL
                            149 	.globl _U1GCR
                            150 	.globl _U1UCR
                            151 	.globl _U1BAUD
                            152 	.globl _U1DBUF
                            153 	.globl _U1CSR
                            154 	.globl _U0GCR
                            155 	.globl _U0UCR
                            156 	.globl _U0BAUD
                            157 	.globl _U0DBUF
                            158 	.globl _U0CSR
                            159 	.globl _TIMIF
                            160 	.globl _T4CC1
                            161 	.globl _T4CCTL1
                            162 	.globl _T4CC0
                            163 	.globl _T4CCTL0
                            164 	.globl _T4CTL
                            165 	.globl _T4CNT
                            166 	.globl _T3CC1
                            167 	.globl _T3CCTL1
                            168 	.globl _T3CC0
                            169 	.globl _T3CCTL0
                            170 	.globl _T3CTL
                            171 	.globl _T3CNT
                            172 	.globl _T2MSEL
                            173 	.globl _T2IRQM
                            174 	.globl _T2MOVF2
                            175 	.globl _T2MOVF1
                            176 	.globl _T2MOVF0
                            177 	.globl _T2M1
                            178 	.globl _T2M0
                            179 	.globl _T2IRQF
                            180 	.globl _T2EVTCFG
                            181 	.globl _T2CTRL
                            182 	.globl _T1STAT
                            183 	.globl _T1CCTL2
                            184 	.globl _T1CCTL1
                            185 	.globl _T1CCTL0
                            186 	.globl _T1CTL
                            187 	.globl _T1CNTH
                            188 	.globl _T1CNTL
                            189 	.globl _T1CC2H
                            190 	.globl _T1CC2L
                            191 	.globl _T1CC1H
                            192 	.globl _T1CC1L
                            193 	.globl _T1CC0H
                            194 	.globl _T1CC0L
                            195 	.globl _CLKCONSTA
                            196 	.globl _CLKCONCMD
                            197 	.globl _SLEEPSTA
                            198 	.globl _SLEEPCMD
                            199 	.globl _STLOAD
                            200 	.globl _ST2
                            201 	.globl _ST1
                            202 	.globl _ST0
                            203 	.globl _RFERRF
                            204 	.globl _RFIRQF0
                            205 	.globl _RFST
                            206 	.globl _RFD
                            207 	.globl _RFIRQF1
                            208 	.globl _PSBANK
                            209 	.globl _FMAP
                            210 	.globl _MEMCTR
                            211 	.globl __XPAGE
                            212 	.globl _MPAGE
                            213 	.globl _PMUX
                            214 	.globl _P2DIR
                            215 	.globl _P1DIR
                            216 	.globl _P0DIR
                            217 	.globl _P2INP
                            218 	.globl _P1INP
                            219 	.globl _P2SEL
                            220 	.globl _P1SEL
                            221 	.globl _P0SEL
                            222 	.globl _APCFG
                            223 	.globl _PERCFG
                            224 	.globl _P0INP
                            225 	.globl _P2IEN
                            226 	.globl _P1IEN
                            227 	.globl _P0IEN
                            228 	.globl _PICTL
                            229 	.globl _P2IFG
                            230 	.globl _P1IFG
                            231 	.globl _P0IFG
                            232 	.globl _DMAREQ
                            233 	.globl _DMAARM
                            234 	.globl _DMA0CFGH
                            235 	.globl _DMA0CFGL
                            236 	.globl _DMA1CFGH
                            237 	.globl _DMA1CFGL
                            238 	.globl _DMAIRQ
                            239 	.globl _ENCCS
                            240 	.globl _ENCDO
                            241 	.globl _ENCDI
                            242 	.globl _RNDH
                            243 	.globl _RNDL
                            244 	.globl _ADCH
                            245 	.globl _ADCL
                            246 	.globl _ADCCON3
                            247 	.globl _ADCCON2
                            248 	.globl _ADCCON1
                            249 	.globl _B
                            250 	.globl _IRCON2
                            251 	.globl _ACC
                            252 	.globl _PSW
                            253 	.globl _IRCON
                            254 	.globl _IP1
                            255 	.globl _IEN1
                            256 	.globl _IP0
                            257 	.globl _IEN0
                            258 	.globl _P2
                            259 	.globl _S1CON
                            260 	.globl _IEN2
                            261 	.globl _S0CON
                            262 	.globl _DPS
                            263 	.globl _P1
                            264 	.globl _TCON
                            265 	.globl _PCON
                            266 	.globl _DPH1
                            267 	.globl _DPL1
                            268 	.globl _DPH0
                            269 	.globl _DPL0
                            270 	.globl _SP
                            271 	.globl _P0
                            272 	.globl _coconut_sensor_process
                            273 	.globl _get_global_addr_success
                            274 	.globl _reg_success
                            275 	.globl _auth_success
                            276 	.globl _output_buf
                            277 	.globl _X_IEEE_ADDR
                            278 	.globl _X_INFOPAGE
                            279 	.globl _X_P2DIR
                            280 	.globl _X_P1DIR
                            281 	.globl _X_P0DIR
                            282 	.globl _X_U1GCR
                            283 	.globl _X_U1UCR
                            284 	.globl _X_U1BAUD
                            285 	.globl _X_U1DBUF
                            286 	.globl _X_U1CSR
                            287 	.globl _X_P2INP
                            288 	.globl _X_P1INP
                            289 	.globl _X_P2SEL
                            290 	.globl _X_P1SEL
                            291 	.globl _X_P0SEL
                            292 	.globl _X_APCFG
                            293 	.globl _X_PERCFG
                            294 	.globl _X_T4CC1
                            295 	.globl _X_T4CCTL1
                            296 	.globl _X_T4CC0
                            297 	.globl _X_T4CCTL0
                            298 	.globl _X_T4CTL
                            299 	.globl _X_T4CNT
                            300 	.globl _X_RFIRQF0
                            301 	.globl _X_T1CCTL2
                            302 	.globl _X_T1CCTL1
                            303 	.globl _X_T1CCTL0
                            304 	.globl _X_T1CTL
                            305 	.globl _X_T1CNTH
                            306 	.globl _X_T1CNTL
                            307 	.globl _X_RFST
                            308 	.globl _X_T1CC2H
                            309 	.globl _X_T1CC2L
                            310 	.globl _X_T1CC1H
                            311 	.globl _X_T1CC1L
                            312 	.globl _X_T1CC0H
                            313 	.globl _X_T1CC0L
                            314 	.globl _X_RFD
                            315 	.globl _X_TIMIF
                            316 	.globl _X_DMAREQ
                            317 	.globl _X_DMAARM
                            318 	.globl _X_DMA0CFGH
                            319 	.globl _X_DMA0CFGL
                            320 	.globl _X_DMA1CFGH
                            321 	.globl _X_DMA1CFGL
                            322 	.globl _X_DMAIRQ
                            323 	.globl _X_T3CC1
                            324 	.globl _X_T3CCTL1
                            325 	.globl _X_T3CC0
                            326 	.globl _X_T3CCTL0
                            327 	.globl _X_T3CTL
                            328 	.globl _X_T3CNT
                            329 	.globl _X_WDCTL
                            330 	.globl _X_MEMCTR
                            331 	.globl _X_CLKCONCMD
                            332 	.globl _X_U0GCR
                            333 	.globl _X_U0UCR
                            334 	.globl _X_T2MSEL
                            335 	.globl _X_U0BAUD
                            336 	.globl _X_U0DBUF
                            337 	.globl _X_RFERRF
                            338 	.globl _X_SLEEPCMD
                            339 	.globl _X_RNDH
                            340 	.globl _X_RNDL
                            341 	.globl _X_ADCH
                            342 	.globl _X_ADCL
                            343 	.globl _X_ADCCON3
                            344 	.globl _X_ADCCON2
                            345 	.globl _X_ADCCON1
                            346 	.globl _X_ENCCS
                            347 	.globl _X_ENCDO
                            348 	.globl _X_ENCDI
                            349 	.globl _X_T1STAT
                            350 	.globl _X_PMUX
                            351 	.globl _X_STLOAD
                            352 	.globl _X_P2IEN
                            353 	.globl _X_P0IEN
                            354 	.globl _X_T2IRQM
                            355 	.globl _X_T2MOVF2
                            356 	.globl _X_T2MOVF1
                            357 	.globl _X_T2MOVF0
                            358 	.globl _X_T2M1
                            359 	.globl _X_T2M0
                            360 	.globl _X_T2IRQF
                            361 	.globl _X_P2
                            362 	.globl _X_PSBANK
                            363 	.globl _X_FMAP
                            364 	.globl _X_CLKCONSTA
                            365 	.globl _X_SLEEPSTA
                            366 	.globl _X_T2EVTCFG
                            367 	.globl _X_ST2
                            368 	.globl _X_ST1
                            369 	.globl _X_ST0
                            370 	.globl _X_T2CTRL
                            371 	.globl _X__XPAGE
                            372 	.globl _X_MPAGE
                            373 	.globl _X_RFIRQF1
                            374 	.globl _X_P1
                            375 	.globl _X_P0INP
                            376 	.globl _X_P1IEN
                            377 	.globl _X_PICTL
                            378 	.globl _X_P2IFG
                            379 	.globl _X_P1IFG
                            380 	.globl _X_P0IFG
                            381 	.globl _X_U0CSR
                            382 	.globl _X_P0
                            383 	.globl _USBF5
                            384 	.globl _USBF4
                            385 	.globl _USBF3
                            386 	.globl _USBF2
                            387 	.globl _USBF1
                            388 	.globl _USBF0
                            389 	.globl _USBCNTH
                            390 	.globl _USBCNTL
                            391 	.globl _USBCNT0
                            392 	.globl _USBCSOH
                            393 	.globl _USBCSOL
                            394 	.globl _USBMAXO
                            395 	.globl _USBCSIH
                            396 	.globl _USBCSIL
                            397 	.globl _USBCS0
                            398 	.globl _USBMAXI
                            399 	.globl _USBCTRL
                            400 	.globl _USBINDEX
                            401 	.globl _USBFRMH
                            402 	.globl _USBFRML
                            403 	.globl _USBCIE
                            404 	.globl _USBOIE
                            405 	.globl _USBIIE
                            406 	.globl _USBCIF
                            407 	.globl _USBOIF
                            408 	.globl _USBIIF
                            409 	.globl _USBPOW
                            410 	.globl _USBADDR
                            411 	.globl _CSPT
                            412 	.globl _CSPZ
                            413 	.globl _CSPY
                            414 	.globl _CSPX
                            415 	.globl _CSPSTAT
                            416 	.globl _CSPCTRL
                            417 	.globl _CSPPROG23
                            418 	.globl _CSPPROG22
                            419 	.globl _CSPPROG21
                            420 	.globl _CSPPROG20
                            421 	.globl _CSPPROG19
                            422 	.globl _CSPPROG18
                            423 	.globl _CSPPROG17
                            424 	.globl _CSPPROG16
                            425 	.globl _CSPPROG15
                            426 	.globl _CSPPROG14
                            427 	.globl _CSPPROG13
                            428 	.globl _CSPPROG12
                            429 	.globl _CSPPROG11
                            430 	.globl _CSPPROG10
                            431 	.globl _CSPPROG9
                            432 	.globl _CSPPROG8
                            433 	.globl _CSPPROG7
                            434 	.globl _CSPPROG6
                            435 	.globl _CSPPROG5
                            436 	.globl _CSPPROG4
                            437 	.globl _CSPPROG3
                            438 	.globl _CSPPROG2
                            439 	.globl _CSPPROG1
                            440 	.globl _CSPPROG0
                            441 	.globl _RFC_OBS_CTRL2
                            442 	.globl _RFC_OBS_CTRL1
                            443 	.globl _RFC_OBS_CTRL0
                            444 	.globl _TXFILTCFG
                            445 	.globl _PTEST1
                            446 	.globl _PTEST0
                            447 	.globl _ATEST
                            448 	.globl _DACTEST2
                            449 	.globl _DACTEST1
                            450 	.globl _DACTEST0
                            451 	.globl _MDMTEST1
                            452 	.globl _MDMTEST0
                            453 	.globl _ADCTEST2
                            454 	.globl _ADCTEST1
                            455 	.globl _ADCTEST0
                            456 	.globl _AGCCTRL3
                            457 	.globl _AGCCTRL2
                            458 	.globl _AGCCTRL1
                            459 	.globl _AGCCTRL0
                            460 	.globl _FSCAL3
                            461 	.globl _FSCAL2
                            462 	.globl _FSCAL1
                            463 	.globl _FSCAL0
                            464 	.globl _FSCTRL
                            465 	.globl _RXCTRL
                            466 	.globl _FREQEST
                            467 	.globl _MDMCTRL1
                            468 	.globl _MDMCTRL0
                            469 	.globl _RFRND
                            470 	.globl _RFERRM
                            471 	.globl _RFIRQM1
                            472 	.globl _RFIRQM0
                            473 	.globl _TXLAST_PTR
                            474 	.globl _TXFIRST_PTR
                            475 	.globl _RXP1_PTR
                            476 	.globl _RXLAST_PTR
                            477 	.globl _RXFIRST_PTR
                            478 	.globl _TXFIFOCNT
                            479 	.globl _RXFIFOCNT
                            480 	.globl _RXFIRST
                            481 	.globl _RSSISTAT
                            482 	.globl _RSSI
                            483 	.globl _CCACTRL1
                            484 	.globl _CCACTRL0
                            485 	.globl _FSMCTRL
                            486 	.globl _FIFOPCTRL
                            487 	.globl _FSMSTAT1
                            488 	.globl _FSMSTAT0
                            489 	.globl _TXCTRL
                            490 	.globl _TXPOWER
                            491 	.globl _FREQCTRL
                            492 	.globl _FREQTUNE
                            493 	.globl _RXMASKCLR
                            494 	.globl _RXMASKSET
                            495 	.globl _RXENABLE
                            496 	.globl _FRMCTRL1
                            497 	.globl _FRMCTRL0
                            498 	.globl _SRCEXTEN2
                            499 	.globl _SRCEXTEN1
                            500 	.globl _SRCEXTEN0
                            501 	.globl _SRCSHORTEN2
                            502 	.globl _SRCSHORTEN1
                            503 	.globl _SRCSHORTEN0
                            504 	.globl _SRCMATCH
                            505 	.globl _FRMFILT1
                            506 	.globl _FRMFILT0
                            507 	.globl _SHORT_ADDR1
                            508 	.globl _SHORT_ADDR0
                            509 	.globl _PAN_ID1
                            510 	.globl _PAN_ID0
                            511 	.globl _EXT_ADDR7
                            512 	.globl _EXT_ADDR6
                            513 	.globl _EXT_ADDR5
                            514 	.globl _EXT_ADDR4
                            515 	.globl _EXT_ADDR3
                            516 	.globl _EXT_ADDR2
                            517 	.globl _EXT_ADDR1
                            518 	.globl _EXT_ADDR0
                            519 	.globl _SRCSHORTPENDEN2
                            520 	.globl _SRCSHORTPENDEN1
                            521 	.globl _SRCSHORTPENDEN0
                            522 	.globl _SRCEXTPENDEN2
                            523 	.globl _SRCEXTPENDEN1
                            524 	.globl _SRCEXTPENDEN0
                            525 	.globl _SRCRESINDEX
                            526 	.globl _SRCRESMASK2
                            527 	.globl _SRCRESMASK1
                            528 	.globl _SRCRESMASK0
                            529 	.globl _SRC_ADDR_TABLE
                            530 	.globl _TXFIFO
                            531 	.globl _RXFIFO
                            532 	.globl _RFCORE_RAM
                            533 	.globl _CMPCTL
                            534 	.globl _OPAMPS
                            535 	.globl _OPAMPC
                            536 	.globl _STCV2
                            537 	.globl _STCV1
                            538 	.globl _STCV0
                            539 	.globl _STCS
                            540 	.globl _STCC
                            541 	.globl _T1CC4H
                            542 	.globl _T1CC4L
                            543 	.globl _T1CC3H
                            544 	.globl _T1CC3L
                            545 	.globl _XX_T1CC2H
                            546 	.globl _XX_T1CC2L
                            547 	.globl _XX_T1CC1H
                            548 	.globl _XX_T1CC1L
                            549 	.globl _XX_T1CC0H
                            550 	.globl _XX_T1CC0L
                            551 	.globl _T1CCTL4
                            552 	.globl _T1CCTL3
                            553 	.globl _XX_T1CCTL2
                            554 	.globl _XX_T1CCTL1
                            555 	.globl _XX_T1CCTL0
                            556 	.globl _CLD
                            557 	.globl _IRCTL
                            558 	.globl _CHIPINFO1
                            559 	.globl _CHIPINFO0
                            560 	.globl _FWDATA
                            561 	.globl _FADDRH
                            562 	.globl _FADDRL
                            563 	.globl _FCTL
                            564 	.globl _IVCTRL
                            565 	.globl _BATTMON
                            566 	.globl _SRCRC
                            567 	.globl _DBGDATA
                            568 	.globl _TESTREG0
                            569 	.globl _CHIPID
                            570 	.globl _CHVER
                            571 	.globl _OBSSEL5
                            572 	.globl _OBSSEL4
                            573 	.globl _OBSSEL3
                            574 	.globl _OBSSEL2
                            575 	.globl _OBSSEL1
                            576 	.globl _OBSSEL0
                            577 	.globl _I2CIO
                            578 	.globl _I2CWC
                            579 	.globl _I2CADDR
                            580 	.globl _I2CDATA
                            581 	.globl _I2CSTAT
                            582 	.globl _I2CCFG
                            583 	.globl _OPAMPMC
                            584 	.globl _MONMUX
                            585 	.globl _send_msg
                            586 	.globl _send_msg_to_gateway
                            587 ;--------------------------------------------------------
                            588 ; special function registers
                            589 ;--------------------------------------------------------
                            590 	.area RSEG    (ABS,DATA)
   0000                     591 	.org 0x0000
                    0080    592 _P0	=	0x0080
                    0081    593 _SP	=	0x0081
                    0082    594 _DPL0	=	0x0082
                    0083    595 _DPH0	=	0x0083
                    0084    596 _DPL1	=	0x0084
                    0085    597 _DPH1	=	0x0085
                    0087    598 _PCON	=	0x0087
                    0088    599 _TCON	=	0x0088
                    0090    600 _P1	=	0x0090
                    0092    601 _DPS	=	0x0092
                    0098    602 _S0CON	=	0x0098
                    009A    603 _IEN2	=	0x009a
                    009B    604 _S1CON	=	0x009b
                    00A0    605 _P2	=	0x00a0
                    00A8    606 _IEN0	=	0x00a8
                    00A9    607 _IP0	=	0x00a9
                    00B8    608 _IEN1	=	0x00b8
                    00B9    609 _IP1	=	0x00b9
                    00C0    610 _IRCON	=	0x00c0
                    00D0    611 _PSW	=	0x00d0
                    00E0    612 _ACC	=	0x00e0
                    00E8    613 _IRCON2	=	0x00e8
                    00F0    614 _B	=	0x00f0
                    00B4    615 _ADCCON1	=	0x00b4
                    00B5    616 _ADCCON2	=	0x00b5
                    00B6    617 _ADCCON3	=	0x00b6
                    00BA    618 _ADCL	=	0x00ba
                    00BB    619 _ADCH	=	0x00bb
                    00BC    620 _RNDL	=	0x00bc
                    00BD    621 _RNDH	=	0x00bd
                    00B1    622 _ENCDI	=	0x00b1
                    00B2    623 _ENCDO	=	0x00b2
                    00B3    624 _ENCCS	=	0x00b3
                    00D1    625 _DMAIRQ	=	0x00d1
                    00D2    626 _DMA1CFGL	=	0x00d2
                    00D3    627 _DMA1CFGH	=	0x00d3
                    00D4    628 _DMA0CFGL	=	0x00d4
                    00D5    629 _DMA0CFGH	=	0x00d5
                    00D6    630 _DMAARM	=	0x00d6
                    00D7    631 _DMAREQ	=	0x00d7
                    0089    632 _P0IFG	=	0x0089
                    008A    633 _P1IFG	=	0x008a
                    008B    634 _P2IFG	=	0x008b
                    008C    635 _PICTL	=	0x008c
                    00AB    636 _P0IEN	=	0x00ab
                    008D    637 _P1IEN	=	0x008d
                    00AC    638 _P2IEN	=	0x00ac
                    008F    639 _P0INP	=	0x008f
                    00F1    640 _PERCFG	=	0x00f1
                    00F2    641 _APCFG	=	0x00f2
                    00F3    642 _P0SEL	=	0x00f3
                    00F4    643 _P1SEL	=	0x00f4
                    00F5    644 _P2SEL	=	0x00f5
                    00F6    645 _P1INP	=	0x00f6
                    00F7    646 _P2INP	=	0x00f7
                    00FD    647 _P0DIR	=	0x00fd
                    00FE    648 _P1DIR	=	0x00fe
                    00FF    649 _P2DIR	=	0x00ff
                    00AE    650 _PMUX	=	0x00ae
                    0093    651 _MPAGE	=	0x0093
                    0093    652 __XPAGE	=	0x0093
                    00C7    653 _MEMCTR	=	0x00c7
                    009F    654 _FMAP	=	0x009f
                    009F    655 _PSBANK	=	0x009f
                    0091    656 _RFIRQF1	=	0x0091
                    00D9    657 _RFD	=	0x00d9
                    00E1    658 _RFST	=	0x00e1
                    00E9    659 _RFIRQF0	=	0x00e9
                    00BF    660 _RFERRF	=	0x00bf
                    0095    661 _ST0	=	0x0095
                    0096    662 _ST1	=	0x0096
                    0097    663 _ST2	=	0x0097
                    00AD    664 _STLOAD	=	0x00ad
                    00BE    665 _SLEEPCMD	=	0x00be
                    009D    666 _SLEEPSTA	=	0x009d
                    00C6    667 _CLKCONCMD	=	0x00c6
                    009E    668 _CLKCONSTA	=	0x009e
                    00DA    669 _T1CC0L	=	0x00da
                    00DB    670 _T1CC0H	=	0x00db
                    00DC    671 _T1CC1L	=	0x00dc
                    00DD    672 _T1CC1H	=	0x00dd
                    00DE    673 _T1CC2L	=	0x00de
                    00DF    674 _T1CC2H	=	0x00df
                    00E2    675 _T1CNTL	=	0x00e2
                    00E3    676 _T1CNTH	=	0x00e3
                    00E4    677 _T1CTL	=	0x00e4
                    00E5    678 _T1CCTL0	=	0x00e5
                    00E6    679 _T1CCTL1	=	0x00e6
                    00E7    680 _T1CCTL2	=	0x00e7
                    00AF    681 _T1STAT	=	0x00af
                    0094    682 _T2CTRL	=	0x0094
                    009C    683 _T2EVTCFG	=	0x009c
                    00A1    684 _T2IRQF	=	0x00a1
                    00A2    685 _T2M0	=	0x00a2
                    00A3    686 _T2M1	=	0x00a3
                    00A4    687 _T2MOVF0	=	0x00a4
                    00A5    688 _T2MOVF1	=	0x00a5
                    00A6    689 _T2MOVF2	=	0x00a6
                    00A7    690 _T2IRQM	=	0x00a7
                    00C3    691 _T2MSEL	=	0x00c3
                    00CA    692 _T3CNT	=	0x00ca
                    00CB    693 _T3CTL	=	0x00cb
                    00CC    694 _T3CCTL0	=	0x00cc
                    00CD    695 _T3CC0	=	0x00cd
                    00CE    696 _T3CCTL1	=	0x00ce
                    00CF    697 _T3CC1	=	0x00cf
                    00EA    698 _T4CNT	=	0x00ea
                    00EB    699 _T4CTL	=	0x00eb
                    00EC    700 _T4CCTL0	=	0x00ec
                    00ED    701 _T4CC0	=	0x00ed
                    00EE    702 _T4CCTL1	=	0x00ee
                    00EF    703 _T4CC1	=	0x00ef
                    00D8    704 _TIMIF	=	0x00d8
                    0086    705 _U0CSR	=	0x0086
                    00C1    706 _U0DBUF	=	0x00c1
                    00C2    707 _U0BAUD	=	0x00c2
                    00C4    708 _U0UCR	=	0x00c4
                    00C5    709 _U0GCR	=	0x00c5
                    00F8    710 _U1CSR	=	0x00f8
                    00F9    711 _U1DBUF	=	0x00f9
                    00FA    712 _U1BAUD	=	0x00fa
                    00FB    713 _U1UCR	=	0x00fb
                    00FC    714 _U1GCR	=	0x00fc
                    00C9    715 _WDCTL	=	0x00c9
                            716 ;--------------------------------------------------------
                            717 ; special function bits
                            718 ;--------------------------------------------------------
                            719 	.area RSEG    (ABS,DATA)
   0000                     720 	.org 0x0000
                    0087    721 _P0_7	=	0x0087
                    0086    722 _P0_6	=	0x0086
                    0085    723 _P0_5	=	0x0085
                    0084    724 _P0_4	=	0x0084
                    0083    725 _P0_3	=	0x0083
                    0082    726 _P0_2	=	0x0082
                    0081    727 _P0_1	=	0x0081
                    0080    728 _P0_0	=	0x0080
                    008F    729 _URX1IF	=	0x008f
                    008D    730 _ADCIF	=	0x008d
                    008B    731 _URX0IF	=	0x008b
                    008A    732 _IT1	=	0x008a
                    0089    733 _RFERRIF	=	0x0089
                    0088    734 _IT0	=	0x0088
                    0097    735 _P1_7	=	0x0097
                    0096    736 _P1_6	=	0x0096
                    0095    737 _P1_5	=	0x0095
                    0094    738 _P1_4	=	0x0094
                    0093    739 _P1_3	=	0x0093
                    0092    740 _P1_2	=	0x0092
                    0091    741 _P1_1	=	0x0091
                    0090    742 _P1_0	=	0x0090
                    0099    743 _ENCIF_1	=	0x0099
                    0098    744 _ENCIF_0	=	0x0098
                    00A7    745 _P2_7	=	0x00a7
                    00A6    746 _P2_6	=	0x00a6
                    00A5    747 _P2_5	=	0x00a5
                    00A4    748 _P2_4	=	0x00a4
                    00A3    749 _P2_3	=	0x00a3
                    00A2    750 _P2_2	=	0x00a2
                    00A1    751 _P2_1	=	0x00a1
                    00A0    752 _P2_0	=	0x00a0
                    00AF    753 _EA	=	0x00af
                    00AD    754 _STIE	=	0x00ad
                    00AC    755 _ENCIE	=	0x00ac
                    00AB    756 _URX1IE	=	0x00ab
                    00AA    757 _URX0IE	=	0x00aa
                    00A9    758 _ADCIE	=	0x00a9
                    00A8    759 _RFERRIE	=	0x00a8
                    00BD    760 _P0IE	=	0x00bd
                    00BC    761 _T4IE	=	0x00bc
                    00BB    762 _T3IE	=	0x00bb
                    00BA    763 _T2IE	=	0x00ba
                    00B9    764 _T1IE	=	0x00b9
                    00B8    765 _DMAIE	=	0x00b8
                    00C7    766 _STIF	=	0x00c7
                    00C5    767 _P0IF	=	0x00c5
                    00C4    768 _T4IF	=	0x00c4
                    00C3    769 _T3IF	=	0x00c3
                    00C2    770 _T2IF	=	0x00c2
                    00C1    771 _T1IF	=	0x00c1
                    00C0    772 _DMAIF	=	0x00c0
                    00D7    773 _CY	=	0x00d7
                    00D6    774 _AC	=	0x00d6
                    00D5    775 _F0	=	0x00d5
                    00D4    776 _RS1	=	0x00d4
                    00D3    777 _RS0	=	0x00d3
                    00D2    778 _OV	=	0x00d2
                    00D1    779 _F1	=	0x00d1
                    00D0    780 _P	=	0x00d0
                    00E7    781 _ACC_7	=	0x00e7
                    00E6    782 _ACC_6	=	0x00e6
                    00E5    783 _ACC_5	=	0x00e5
                    00E4    784 _ACC_4	=	0x00e4
                    00E3    785 _ACC_3	=	0x00e3
                    00E2    786 _ACC_2	=	0x00e2
                    00E1    787 _ACC_1	=	0x00e1
                    00E0    788 _ACC_0	=	0x00e0
                    00EC    789 _WDTIF	=	0x00ec
                    00EB    790 _P1IF	=	0x00eb
                    00EA    791 _UTX1IF	=	0x00ea
                    00E9    792 _UTX0IF	=	0x00e9
                    00E8    793 _P2IF	=	0x00e8
                    00F7    794 _B_7	=	0x00f7
                    00F6    795 _B_6	=	0x00f6
                    00F5    796 _B_5	=	0x00f5
                    00F4    797 _B_4	=	0x00f4
                    00F3    798 _B_3	=	0x00f3
                    00F2    799 _B_2	=	0x00f2
                    00F1    800 _B_1	=	0x00f1
                    00F0    801 _B_0	=	0x00f0
                    00DE    802 _OVFIM	=	0x00de
                    00DD    803 _T4CH1IF	=	0x00dd
                    00DC    804 _T4CH0IF	=	0x00dc
                    00DB    805 _T4OVFIF	=	0x00db
                    00DA    806 _T3CH1IF	=	0x00da
                    00D9    807 _T3CH0IF	=	0x00d9
                    00D8    808 _T3OVFIF	=	0x00d8
                    00FF    809 _MODE	=	0x00ff
                    00FE    810 _RE	=	0x00fe
                    00FD    811 _SLAVE	=	0x00fd
                    00FC    812 _FE	=	0x00fc
                    00FB    813 _ERR	=	0x00fb
                    00FA    814 _RX_BYTE	=	0x00fa
                    00F9    815 _TX_BYTE	=	0x00f9
                    00F8    816 _ACTIVE	=	0x00f8
                            817 ;--------------------------------------------------------
                            818 ; overlayable register banks
                            819 ;--------------------------------------------------------
                            820 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     821 	.ds 8
                            822 ;--------------------------------------------------------
                            823 ; internal ram data
                            824 ;--------------------------------------------------------
                            825 	.area DSEG    (DATA)
                            826 ;--------------------------------------------------------
                            827 ; overlayable items in internal ram 
                            828 ;--------------------------------------------------------
                            829 	.area OSEG    (OVR,DATA)
                            830 ;--------------------------------------------------------
                            831 ; indirectly addressable internal ram data
                            832 ;--------------------------------------------------------
                            833 	.area ISEG    (DATA)
                            834 ;--------------------------------------------------------
                            835 ; absolute internal ram data
                            836 ;--------------------------------------------------------
                            837 	.area IABS    (ABS,DATA)
                            838 	.area IABS    (ABS,DATA)
                            839 ;--------------------------------------------------------
                            840 ; bit data
                            841 ;--------------------------------------------------------
                            842 	.area BSEG    (BIT)
                            843 ;--------------------------------------------------------
                            844 ; paged external ram data
                            845 ;--------------------------------------------------------
                            846 	.area PSEG    (PAG,XDATA)
                            847 ;--------------------------------------------------------
                            848 ; external ram data
                            849 ;--------------------------------------------------------
                            850 	.area XSEG    (XDATA)
                    61A6    851 _MONMUX	=	0x61a6
                    61A6    852 _OPAMPMC	=	0x61a6
                    6230    853 _I2CCFG	=	0x6230
                    6231    854 _I2CSTAT	=	0x6231
                    6232    855 _I2CDATA	=	0x6232
                    6233    856 _I2CADDR	=	0x6233
                    6234    857 _I2CWC	=	0x6234
                    6235    858 _I2CIO	=	0x6235
                    6243    859 _OBSSEL0	=	0x6243
                    6244    860 _OBSSEL1	=	0x6244
                    6245    861 _OBSSEL2	=	0x6245
                    6246    862 _OBSSEL3	=	0x6246
                    6247    863 _OBSSEL4	=	0x6247
                    6248    864 _OBSSEL5	=	0x6248
                    6249    865 _CHVER	=	0x6249
                    624A    866 _CHIPID	=	0x624a
                    624B    867 _TESTREG0	=	0x624b
                    6260    868 _DBGDATA	=	0x6260
                    6262    869 _SRCRC	=	0x6262
                    6264    870 _BATTMON	=	0x6264
                    6265    871 _IVCTRL	=	0x6265
                    6270    872 _FCTL	=	0x6270
                    6271    873 _FADDRL	=	0x6271
                    6272    874 _FADDRH	=	0x6272
                    6273    875 _FWDATA	=	0x6273
                    6276    876 _CHIPINFO0	=	0x6276
                    6277    877 _CHIPINFO1	=	0x6277
                    6281    878 _IRCTL	=	0x6281
                    6290    879 _CLD	=	0x6290
                    62A0    880 _XX_T1CCTL0	=	0x62a0
                    62A1    881 _XX_T1CCTL1	=	0x62a1
                    62A2    882 _XX_T1CCTL2	=	0x62a2
                    62A3    883 _T1CCTL3	=	0x62a3
                    62A4    884 _T1CCTL4	=	0x62a4
                    62A6    885 _XX_T1CC0L	=	0x62a6
                    62A7    886 _XX_T1CC0H	=	0x62a7
                    62A8    887 _XX_T1CC1L	=	0x62a8
                    62A9    888 _XX_T1CC1H	=	0x62a9
                    62AA    889 _XX_T1CC2L	=	0x62aa
                    62AB    890 _XX_T1CC2H	=	0x62ab
                    62AC    891 _T1CC3L	=	0x62ac
                    62AD    892 _T1CC3H	=	0x62ad
                    62AE    893 _T1CC4L	=	0x62ae
                    62AF    894 _T1CC4H	=	0x62af
                    62B0    895 _STCC	=	0x62b0
                    62B1    896 _STCS	=	0x62b1
                    62B2    897 _STCV0	=	0x62b2
                    62B3    898 _STCV1	=	0x62b3
                    62B4    899 _STCV2	=	0x62b4
                    62C0    900 _OPAMPC	=	0x62c0
                    62C1    901 _OPAMPS	=	0x62c1
                    62D0    902 _CMPCTL	=	0x62d0
                    6000    903 _RFCORE_RAM	=	0x6000
                    6000    904 _RXFIFO	=	0x6000
                    6080    905 _TXFIFO	=	0x6080
                    6100    906 _SRC_ADDR_TABLE	=	0x6100
                    6160    907 _SRCRESMASK0	=	0x6160
                    6161    908 _SRCRESMASK1	=	0x6161
                    6162    909 _SRCRESMASK2	=	0x6162
                    6163    910 _SRCRESINDEX	=	0x6163
                    6164    911 _SRCEXTPENDEN0	=	0x6164
                    6165    912 _SRCEXTPENDEN1	=	0x6165
                    6166    913 _SRCEXTPENDEN2	=	0x6166
                    6167    914 _SRCSHORTPENDEN0	=	0x6167
                    6168    915 _SRCSHORTPENDEN1	=	0x6168
                    6169    916 _SRCSHORTPENDEN2	=	0x6169
                    616A    917 _EXT_ADDR0	=	0x616a
                    616B    918 _EXT_ADDR1	=	0x616b
                    616C    919 _EXT_ADDR2	=	0x616c
                    616D    920 _EXT_ADDR3	=	0x616d
                    616E    921 _EXT_ADDR4	=	0x616e
                    616F    922 _EXT_ADDR5	=	0x616f
                    6170    923 _EXT_ADDR6	=	0x6170
                    6171    924 _EXT_ADDR7	=	0x6171
                    6172    925 _PAN_ID0	=	0x6172
                    6173    926 _PAN_ID1	=	0x6173
                    6174    927 _SHORT_ADDR0	=	0x6174
                    6175    928 _SHORT_ADDR1	=	0x6175
                    6180    929 _FRMFILT0	=	0x6180
                    6181    930 _FRMFILT1	=	0x6181
                    6182    931 _SRCMATCH	=	0x6182
                    6183    932 _SRCSHORTEN0	=	0x6183
                    6184    933 _SRCSHORTEN1	=	0x6184
                    6185    934 _SRCSHORTEN2	=	0x6185
                    6186    935 _SRCEXTEN0	=	0x6186
                    6187    936 _SRCEXTEN1	=	0x6187
                    6188    937 _SRCEXTEN2	=	0x6188
                    6189    938 _FRMCTRL0	=	0x6189
                    618A    939 _FRMCTRL1	=	0x618a
                    618B    940 _RXENABLE	=	0x618b
                    618C    941 _RXMASKSET	=	0x618c
                    618D    942 _RXMASKCLR	=	0x618d
                    618E    943 _FREQTUNE	=	0x618e
                    618F    944 _FREQCTRL	=	0x618f
                    6190    945 _TXPOWER	=	0x6190
                    6191    946 _TXCTRL	=	0x6191
                    6192    947 _FSMSTAT0	=	0x6192
                    6193    948 _FSMSTAT1	=	0x6193
                    6194    949 _FIFOPCTRL	=	0x6194
                    6195    950 _FSMCTRL	=	0x6195
                    6196    951 _CCACTRL0	=	0x6196
                    6197    952 _CCACTRL1	=	0x6197
                    6198    953 _RSSI	=	0x6198
                    6199    954 _RSSISTAT	=	0x6199
                    619A    955 _RXFIRST	=	0x619a
                    619B    956 _RXFIFOCNT	=	0x619b
                    619C    957 _TXFIFOCNT	=	0x619c
                    619D    958 _RXFIRST_PTR	=	0x619d
                    619E    959 _RXLAST_PTR	=	0x619e
                    619F    960 _RXP1_PTR	=	0x619f
                    61A1    961 _TXFIRST_PTR	=	0x61a1
                    61A2    962 _TXLAST_PTR	=	0x61a2
                    61A3    963 _RFIRQM0	=	0x61a3
                    61A4    964 _RFIRQM1	=	0x61a4
                    61A5    965 _RFERRM	=	0x61a5
                    61A7    966 _RFRND	=	0x61a7
                    61A8    967 _MDMCTRL0	=	0x61a8
                    61A9    968 _MDMCTRL1	=	0x61a9
                    61AA    969 _FREQEST	=	0x61aa
                    61AB    970 _RXCTRL	=	0x61ab
                    61AC    971 _FSCTRL	=	0x61ac
                    61AD    972 _FSCAL0	=	0x61ad
                    61AE    973 _FSCAL1	=	0x61ae
                    61AF    974 _FSCAL2	=	0x61af
                    61B0    975 _FSCAL3	=	0x61b0
                    61B1    976 _AGCCTRL0	=	0x61b1
                    61B2    977 _AGCCTRL1	=	0x61b2
                    61B3    978 _AGCCTRL2	=	0x61b3
                    61B4    979 _AGCCTRL3	=	0x61b4
                    61B5    980 _ADCTEST0	=	0x61b5
                    61B6    981 _ADCTEST1	=	0x61b6
                    61B7    982 _ADCTEST2	=	0x61b7
                    61B8    983 _MDMTEST0	=	0x61b8
                    61B9    984 _MDMTEST1	=	0x61b9
                    61BA    985 _DACTEST0	=	0x61ba
                    61BB    986 _DACTEST1	=	0x61bb
                    61BC    987 _DACTEST2	=	0x61bc
                    61BD    988 _ATEST	=	0x61bd
                    61BE    989 _PTEST0	=	0x61be
                    61BF    990 _PTEST1	=	0x61bf
                    61FA    991 _TXFILTCFG	=	0x61fa
                    61EB    992 _RFC_OBS_CTRL0	=	0x61eb
                    61EC    993 _RFC_OBS_CTRL1	=	0x61ec
                    61ED    994 _RFC_OBS_CTRL2	=	0x61ed
                    61C0    995 _CSPPROG0	=	0x61c0
                    61C1    996 _CSPPROG1	=	0x61c1
                    61C2    997 _CSPPROG2	=	0x61c2
                    61C3    998 _CSPPROG3	=	0x61c3
                    61C4    999 _CSPPROG4	=	0x61c4
                    61C5   1000 _CSPPROG5	=	0x61c5
                    61C6   1001 _CSPPROG6	=	0x61c6
                    61C7   1002 _CSPPROG7	=	0x61c7
                    61C8   1003 _CSPPROG8	=	0x61c8
                    61C9   1004 _CSPPROG9	=	0x61c9
                    61CA   1005 _CSPPROG10	=	0x61ca
                    61CB   1006 _CSPPROG11	=	0x61cb
                    61CC   1007 _CSPPROG12	=	0x61cc
                    61CD   1008 _CSPPROG13	=	0x61cd
                    61CE   1009 _CSPPROG14	=	0x61ce
                    61CF   1010 _CSPPROG15	=	0x61cf
                    61D0   1011 _CSPPROG16	=	0x61d0
                    61D1   1012 _CSPPROG17	=	0x61d1
                    61D2   1013 _CSPPROG18	=	0x61d2
                    61D3   1014 _CSPPROG19	=	0x61d3
                    61D4   1015 _CSPPROG20	=	0x61d4
                    61D5   1016 _CSPPROG21	=	0x61d5
                    61D6   1017 _CSPPROG22	=	0x61d6
                    61D7   1018 _CSPPROG23	=	0x61d7
                    61E0   1019 _CSPCTRL	=	0x61e0
                    61E1   1020 _CSPSTAT	=	0x61e1
                    61E2   1021 _CSPX	=	0x61e2
                    61E3   1022 _CSPY	=	0x61e3
                    61E4   1023 _CSPZ	=	0x61e4
                    61E5   1024 _CSPT	=	0x61e5
                    6200   1025 _USBADDR	=	0x6200
                    6201   1026 _USBPOW	=	0x6201
                    6202   1027 _USBIIF	=	0x6202
                    6204   1028 _USBOIF	=	0x6204
                    6206   1029 _USBCIF	=	0x6206
                    6207   1030 _USBIIE	=	0x6207
                    6209   1031 _USBOIE	=	0x6209
                    620B   1032 _USBCIE	=	0x620b
                    620C   1033 _USBFRML	=	0x620c
                    620D   1034 _USBFRMH	=	0x620d
                    620E   1035 _USBINDEX	=	0x620e
                    620F   1036 _USBCTRL	=	0x620f
                    6210   1037 _USBMAXI	=	0x6210
                    6211   1038 _USBCS0	=	0x6211
                    6211   1039 _USBCSIL	=	0x6211
                    6212   1040 _USBCSIH	=	0x6212
                    6213   1041 _USBMAXO	=	0x6213
                    6214   1042 _USBCSOL	=	0x6214
                    6215   1043 _USBCSOH	=	0x6215
                    6216   1044 _USBCNT0	=	0x6216
                    6216   1045 _USBCNTL	=	0x6216
                    6217   1046 _USBCNTH	=	0x6217
                    6220   1047 _USBF0	=	0x6220
                    6222   1048 _USBF1	=	0x6222
                    6224   1049 _USBF2	=	0x6224
                    6226   1050 _USBF3	=	0x6226
                    6228   1051 _USBF4	=	0x6228
                    622A   1052 _USBF5	=	0x622a
                    7080   1053 _X_P0	=	0x7080
                    7086   1054 _X_U0CSR	=	0x7086
                    7089   1055 _X_P0IFG	=	0x7089
                    708A   1056 _X_P1IFG	=	0x708a
                    708B   1057 _X_P2IFG	=	0x708b
                    708C   1058 _X_PICTL	=	0x708c
                    708D   1059 _X_P1IEN	=	0x708d
                    708F   1060 _X_P0INP	=	0x708f
                    7090   1061 _X_P1	=	0x7090
                    7091   1062 _X_RFIRQF1	=	0x7091
                    7093   1063 _X_MPAGE	=	0x7093
                    7093   1064 _X__XPAGE	=	0x7093
                    7094   1065 _X_T2CTRL	=	0x7094
                    7095   1066 _X_ST0	=	0x7095
                    7096   1067 _X_ST1	=	0x7096
                    7097   1068 _X_ST2	=	0x7097
                    709C   1069 _X_T2EVTCFG	=	0x709c
                    709D   1070 _X_SLEEPSTA	=	0x709d
                    709E   1071 _X_CLKCONSTA	=	0x709e
                    709F   1072 _X_FMAP	=	0x709f
                    709F   1073 _X_PSBANK	=	0x709f
                    70A0   1074 _X_P2	=	0x70a0
                    70A1   1075 _X_T2IRQF	=	0x70a1
                    70A2   1076 _X_T2M0	=	0x70a2
                    70A3   1077 _X_T2M1	=	0x70a3
                    70A4   1078 _X_T2MOVF0	=	0x70a4
                    70A5   1079 _X_T2MOVF1	=	0x70a5
                    70A6   1080 _X_T2MOVF2	=	0x70a6
                    70A7   1081 _X_T2IRQM	=	0x70a7
                    70AB   1082 _X_P0IEN	=	0x70ab
                    70AC   1083 _X_P2IEN	=	0x70ac
                    70AD   1084 _X_STLOAD	=	0x70ad
                    70AE   1085 _X_PMUX	=	0x70ae
                    70AF   1086 _X_T1STAT	=	0x70af
                    70B1   1087 _X_ENCDI	=	0x70b1
                    70B2   1088 _X_ENCDO	=	0x70b2
                    70B3   1089 _X_ENCCS	=	0x70b3
                    70B4   1090 _X_ADCCON1	=	0x70b4
                    70B5   1091 _X_ADCCON2	=	0x70b5
                    70B6   1092 _X_ADCCON3	=	0x70b6
                    70BA   1093 _X_ADCL	=	0x70ba
                    70BB   1094 _X_ADCH	=	0x70bb
                    70BC   1095 _X_RNDL	=	0x70bc
                    70BD   1096 _X_RNDH	=	0x70bd
                    70BE   1097 _X_SLEEPCMD	=	0x70be
                    70BF   1098 _X_RFERRF	=	0x70bf
                    70C1   1099 _X_U0DBUF	=	0x70c1
                    70C2   1100 _X_U0BAUD	=	0x70c2
                    70C3   1101 _X_T2MSEL	=	0x70c3
                    70C4   1102 _X_U0UCR	=	0x70c4
                    70C5   1103 _X_U0GCR	=	0x70c5
                    70C6   1104 _X_CLKCONCMD	=	0x70c6
                    70C7   1105 _X_MEMCTR	=	0x70c7
                    70C9   1106 _X_WDCTL	=	0x70c9
                    70CA   1107 _X_T3CNT	=	0x70ca
                    70CB   1108 _X_T3CTL	=	0x70cb
                    70CC   1109 _X_T3CCTL0	=	0x70cc
                    70CD   1110 _X_T3CC0	=	0x70cd
                    70CE   1111 _X_T3CCTL1	=	0x70ce
                    70CF   1112 _X_T3CC1	=	0x70cf
                    70D1   1113 _X_DMAIRQ	=	0x70d1
                    70D2   1114 _X_DMA1CFGL	=	0x70d2
                    70D3   1115 _X_DMA1CFGH	=	0x70d3
                    70D4   1116 _X_DMA0CFGL	=	0x70d4
                    70D5   1117 _X_DMA0CFGH	=	0x70d5
                    70D6   1118 _X_DMAARM	=	0x70d6
                    70D7   1119 _X_DMAREQ	=	0x70d7
                    70D8   1120 _X_TIMIF	=	0x70d8
                    70D9   1121 _X_RFD	=	0x70d9
                    70DA   1122 _X_T1CC0L	=	0x70da
                    70DB   1123 _X_T1CC0H	=	0x70db
                    70DC   1124 _X_T1CC1L	=	0x70dc
                    70DD   1125 _X_T1CC1H	=	0x70dd
                    70DE   1126 _X_T1CC2L	=	0x70de
                    70DF   1127 _X_T1CC2H	=	0x70df
                    70E1   1128 _X_RFST	=	0x70e1
                    70E2   1129 _X_T1CNTL	=	0x70e2
                    70E3   1130 _X_T1CNTH	=	0x70e3
                    70E4   1131 _X_T1CTL	=	0x70e4
                    70E5   1132 _X_T1CCTL0	=	0x70e5
                    70E6   1133 _X_T1CCTL1	=	0x70e6
                    70E7   1134 _X_T1CCTL2	=	0x70e7
                    70E9   1135 _X_RFIRQF0	=	0x70e9
                    70EA   1136 _X_T4CNT	=	0x70ea
                    70EB   1137 _X_T4CTL	=	0x70eb
                    70EC   1138 _X_T4CCTL0	=	0x70ec
                    70ED   1139 _X_T4CC0	=	0x70ed
                    70EE   1140 _X_T4CCTL1	=	0x70ee
                    70EF   1141 _X_T4CC1	=	0x70ef
                    70F1   1142 _X_PERCFG	=	0x70f1
                    70F2   1143 _X_APCFG	=	0x70f2
                    70F3   1144 _X_P0SEL	=	0x70f3
                    70F4   1145 _X_P1SEL	=	0x70f4
                    70F5   1146 _X_P2SEL	=	0x70f5
                    70F6   1147 _X_P1INP	=	0x70f6
                    70F7   1148 _X_P2INP	=	0x70f7
                    70F8   1149 _X_U1CSR	=	0x70f8
                    70F9   1150 _X_U1DBUF	=	0x70f9
                    70FA   1151 _X_U1BAUD	=	0x70fa
                    70FB   1152 _X_U1UCR	=	0x70fb
                    70FC   1153 _X_U1GCR	=	0x70fc
                    70FD   1154 _X_P0DIR	=	0x70fd
                    70FE   1155 _X_P1DIR	=	0x70fe
                    70FF   1156 _X_P2DIR	=	0x70ff
                    7800   1157 _X_INFOPAGE	=	0x7800
                    780C   1158 _X_IEEE_ADDR	=	0x780c
   0004                    1159 _output_buf::
   0004                    1160 	.ds 290
   0126                    1161 _client_conn:
   0126                    1162 	.ds 3
   0129                    1163 _server_ipaddr:
   0129                    1164 	.ds 16
   0139                    1165 _process_thread_coconut_sensor_process_et_1_1:
   0139                    1166 	.ds 10
                           1167 ;--------------------------------------------------------
                           1168 ; absolute external ram data
                           1169 ;--------------------------------------------------------
                           1170 	.area XABS    (ABS,XDATA)
                           1171 ;--------------------------------------------------------
                           1172 ; external initialized ram data
                           1173 ;--------------------------------------------------------
                           1174 	.area XISEG   (XDATA)
   1D99                    1175 _auth_success::
   1D99                    1176 	.ds 1
   1D9A                    1177 _reg_success::
   1D9A                    1178 	.ds 1
   1D9B                    1179 _get_global_addr_success::
   1D9B                    1180 	.ds 1
   1D9C                    1181 _coconut_sensor_process::
   1D9C                    1182 	.ds 10
                           1183 	.area HOME    (CODE)
                           1184 	.area GSINIT0 (CODE)
                           1185 	.area GSINIT1 (CODE)
                           1186 	.area GSINIT2 (CODE)
                           1187 	.area GSINIT3 (CODE)
                           1188 	.area GSINIT4 (CODE)
                           1189 	.area GSINIT5 (CODE)
                           1190 	.area GSINIT  (CODE)
                           1191 	.area GSFINAL (CODE)
                           1192 	.area CSEG    (CODE)
                           1193 ;--------------------------------------------------------
                           1194 ; global & static initialisations
                           1195 ;--------------------------------------------------------
                           1196 	.area HOME    (CODE)
                           1197 	.area GSINIT  (CODE)
                           1198 	.area GSFINAL (CODE)
                           1199 	.area GSINIT  (CODE)
                           1200 ;--------------------------------------------------------
                           1201 ; Home
                           1202 ;--------------------------------------------------------
                           1203 	.area HOME    (CODE)
                           1204 	.area HOME    (CODE)
                           1205 ;--------------------------------------------------------
                           1206 ; code
                           1207 ;--------------------------------------------------------
                           1208 	.area BANK1   (CODE)
                           1209 ;------------------------------------------------------------
                           1210 ;Allocation info for local variables in function 'debug_print_msg'
                           1211 ;------------------------------------------------------------
                           1212 ;len                       Allocated to stack - sp -7
                           1213 ;msg                       Allocated to stack - sp -2
                           1214 ;i                         Allocated to registers r3 r4 
                           1215 ;------------------------------------------------------------
                           1216 ;	main.c:45: static void debug_print_msg(uint8_t *msg, uint16_t len)
                           1217 ;	-----------------------------------------
                           1218 ;	 function debug_print_msg
                           1219 ;	-----------------------------------------
   8000                    1220 _debug_print_msg:
                    0007   1221 	ar7 = 0x07
                    0006   1222 	ar6 = 0x06
                    0005   1223 	ar5 = 0x05
                    0004   1224 	ar4 = 0x04
                    0003   1225 	ar3 = 0x03
                    0002   1226 	ar2 = 0x02
                    0001   1227 	ar1 = 0x01
                    0000   1228 	ar0 = 0x00
   8000 C0 82              1229 	push	dpl
   8002 C0 83              1230 	push	dph
   8004 C0 F0              1231 	push	b
                           1232 ;	main.c:49: PRINTF("Message len:%d, content:", len);
   8006 E5 81              1233 	mov	a,sp
   8008 24 F9              1234 	add	a,#0xf9
   800A F8                 1235 	mov	r0,a
   800B E6                 1236 	mov	a,@r0
   800C C0 E0              1237 	push	acc
   800E 08                 1238 	inc	r0
   800F E6                 1239 	mov	a,@r0
   8010 C0 E0              1240 	push	acc
   8012 74 56              1241 	mov	a,#__str_0
   8014 C0 E0              1242 	push	acc
   8016 74 78              1243 	mov	a,#(__str_0 >> 8)
   8018 C0 E0              1244 	push	acc
   801A 74 80              1245 	mov	a,#0x80
   801C C0 E0              1246 	push	acc
   801E 78 6C              1247 	mov	r0,#_printf
   8020 79 49              1248 	mov	r1,#(_printf >> 8)
   8022 7A 00              1249 	mov	r2,#(_printf >> 16)
   8024 12 06 D5           1250 	lcall	__sdcc_banked_call
   8027 E5 81              1251 	mov	a,sp
   8029 24 FB              1252 	add	a,#0xfb
   802B F5 81              1253 	mov	sp,a
                           1254 ;	main.c:50: for(i = 0; i < len; i++) {
   802D 7B 00              1255 	mov	r3,#0x00
   802F 7C 00              1256 	mov	r4,#0x00
   8031                    1257 00101$:
   8031 E5 81              1258 	mov	a,sp
   8033 24 F9              1259 	add	a,#0xf9
   8035 F8                 1260 	mov	r0,a
   8036 C3                 1261 	clr	c
   8037 EB                 1262 	mov	a,r3
   8038 96                 1263 	subb	a,@r0
   8039 EC                 1264 	mov	a,r4
   803A 08                 1265 	inc	r0
   803B 96                 1266 	subb	a,@r0
   803C 50 48              1267 	jnc	00104$
                           1268 ;	main.c:51: PRINTF("%x ", msg[i]);
   803E A8 81              1269 	mov	r0,sp
   8040 18                 1270 	dec	r0
   8041 18                 1271 	dec	r0
   8042 EB                 1272 	mov	a,r3
   8043 26                 1273 	add	a,@r0
   8044 FA                 1274 	mov	r2,a
   8045 EC                 1275 	mov	a,r4
   8046 08                 1276 	inc	r0
   8047 36                 1277 	addc	a,@r0
   8048 FE                 1278 	mov	r6,a
   8049 08                 1279 	inc	r0
   804A 86 07              1280 	mov	ar7,@r0
   804C 8A 82              1281 	mov	dpl,r2
   804E 8E 83              1282 	mov	dph,r6
   8050 8F F0              1283 	mov	b,r7
   8052 12 4B C9           1284 	lcall	__gptrget
   8055 FA                 1285 	mov	r2,a
   8056 7F 00              1286 	mov	r7,#0x00
   8058 C0 04              1287 	push	ar4
   805A C0 03              1288 	push	ar3
   805C C0 02              1289 	push	ar2
   805E C0 07              1290 	push	ar7
   8060 74 6F              1291 	mov	a,#__str_1
   8062 C0 E0              1292 	push	acc
   8064 74 78              1293 	mov	a,#(__str_1 >> 8)
   8066 C0 E0              1294 	push	acc
   8068 74 80              1295 	mov	a,#0x80
   806A C0 E0              1296 	push	acc
   806C 78 6C              1297 	mov	r0,#_printf
   806E 79 49              1298 	mov	r1,#(_printf >> 8)
   8070 7A 00              1299 	mov	r2,#(_printf >> 16)
   8072 12 06 D5           1300 	lcall	__sdcc_banked_call
   8075 E5 81              1301 	mov	a,sp
   8077 24 FB              1302 	add	a,#0xfb
   8079 F5 81              1303 	mov	sp,a
   807B D0 03              1304 	pop	ar3
   807D D0 04              1305 	pop	ar4
                           1306 ;	main.c:50: for(i = 0; i < len; i++) {
   807F 0B                 1307 	inc	r3
   8080 BB 00 AE           1308 	cjne	r3,#0x00,00101$
   8083 0C                 1309 	inc	r4
   8084 80 AB              1310 	sjmp	00101$
   8086                    1311 00104$:
                           1312 ;	main.c:53: PRINTF("\n");
   8086 74 73              1313 	mov	a,#__str_2
   8088 C0 E0              1314 	push	acc
   808A 74 78              1315 	mov	a,#(__str_2 >> 8)
   808C C0 E0              1316 	push	acc
   808E 74 80              1317 	mov	a,#0x80
   8090 C0 E0              1318 	push	acc
   8092 78 6C              1319 	mov	r0,#_printf
   8094 79 49              1320 	mov	r1,#(_printf >> 8)
   8096 7A 00              1321 	mov	r2,#(_printf >> 16)
   8098 12 06 D5           1322 	lcall	__sdcc_banked_call
   809B 15 81              1323 	dec	sp
   809D 15 81              1324 	dec	sp
   809F 15 81              1325 	dec	sp
   80A1 15 81              1326 	dec	sp
   80A3 15 81              1327 	dec	sp
   80A5 15 81              1328 	dec	sp
   80A7 02 06 E7           1329 	ljmp	__sdcc_banked_ret
                           1330 ;------------------------------------------------------------
                           1331 ;Allocation info for local variables in function 'send_msg'
                           1332 ;------------------------------------------------------------
                           1333 ;len                       Allocated to stack - sp -6
                           1334 ;peer_ipaddr               Allocated to stack - sp -9
                           1335 ;data                      Allocated to registers r5 r6 r7 
                           1336 ;sloc0                     Allocated to stack - sp -1
                           1337 ;------------------------------------------------------------
                           1338 ;	main.c:56: void send_msg(uint8_t *data, uint16_t len, uip_ipaddr_t *peer_ipaddr)
                           1339 ;	-----------------------------------------
                           1340 ;	 function send_msg
                           1341 ;	-----------------------------------------
   80AA                    1342 _send_msg:
   80AA 05 81              1343 	inc	sp
   80AC 05 81              1344 	inc	sp
   80AE AD 82              1345 	mov	r5,dpl
   80B0 AE 83              1346 	mov	r6,dph
   80B2 AF F0              1347 	mov	r7,b
                           1348 ;	main.c:59: uip_udp_packet_sendto(client_conn, data, len,
   80B4 E5 81              1349 	mov	a,sp
   80B6 24 FA              1350 	add	a,#0xfa
   80B8 F8                 1351 	mov	r0,a
   80B9 A9 81              1352 	mov	r1,sp
   80BB 19                 1353 	dec	r1
   80BC E6                 1354 	mov	a,@r0
   80BD F7                 1355 	mov	@r1,a
   80BE 08                 1356 	inc	r0
   80BF 09                 1357 	inc	r1
   80C0 E6                 1358 	mov	a,@r0
   80C1 F7                 1359 	mov	@r1,a
   80C2 90 01 26           1360 	mov	dptr,#_client_conn
   80C5 E0                 1361 	movx	a,@dptr
   80C6 FA                 1362 	mov	r2,a
   80C7 A3                 1363 	inc	dptr
   80C8 E0                 1364 	movx	a,@dptr
   80C9 FB                 1365 	mov	r3,a
   80CA A3                 1366 	inc	dptr
   80CB E0                 1367 	movx	a,@dptr
   80CC FC                 1368 	mov	r4,a
   80CD 74 16              1369 	mov	a,#0x16
   80CF C0 E0              1370 	push	acc
   80D1 74 2E              1371 	mov	a,#0x2E
   80D3 C0 E0              1372 	push	acc
   80D5 E5 81              1373 	mov	a,sp
   80D7 24 F5              1374 	add	a,#0xf5
   80D9 F8                 1375 	mov	r0,a
   80DA E6                 1376 	mov	a,@r0
   80DB C0 E0              1377 	push	acc
   80DD 08                 1378 	inc	r0
   80DE E6                 1379 	mov	a,@r0
   80DF C0 E0              1380 	push	acc
   80E1 08                 1381 	inc	r0
   80E2 E6                 1382 	mov	a,@r0
   80E3 C0 E0              1383 	push	acc
   80E5 E5 81              1384 	mov	a,sp
   80E7 24 FA              1385 	add	a,#0xfa
   80E9 F8                 1386 	mov	r0,a
   80EA E6                 1387 	mov	a,@r0
   80EB C0 E0              1388 	push	acc
   80ED 08                 1389 	inc	r0
   80EE E6                 1390 	mov	a,@r0
   80EF C0 E0              1391 	push	acc
   80F1 C0 05              1392 	push	ar5
   80F3 C0 06              1393 	push	ar6
   80F5 C0 07              1394 	push	ar7
   80F7 8A 82              1395 	mov	dpl,r2
   80F9 8B 83              1396 	mov	dph,r3
   80FB 8C F0              1397 	mov	b,r4
   80FD 78 81              1398 	mov	r0,#_uip_udp_packet_sendto
   80FF 79 07              1399 	mov	r1,#(_uip_udp_packet_sendto >> 8)
   8101 7A 00              1400 	mov	r2,#(_uip_udp_packet_sendto >> 16)
   8103 12 06 D5           1401 	lcall	__sdcc_banked_call
   8106 E5 81              1402 	mov	a,sp
   8108 24 F6              1403 	add	a,#0xf6
   810A F5 81              1404 	mov	sp,a
                           1405 ;	main.c:63: return;
   810C 15 81              1406 	dec	sp
   810E 15 81              1407 	dec	sp
   8110 02 06 E7           1408 	ljmp	__sdcc_banked_ret
                           1409 ;------------------------------------------------------------
                           1410 ;Allocation info for local variables in function 'send_msg_to_gateway'
                           1411 ;------------------------------------------------------------
                           1412 ;len                       Allocated to stack - sp -6
                           1413 ;data                      Allocated to registers r5 r6 r7 
                           1414 ;sloc0                     Allocated to stack - sp -1
                           1415 ;------------------------------------------------------------
                           1416 ;	main.c:66: void send_msg_to_gateway(uint8_t *data, uint16_t len)
                           1417 ;	-----------------------------------------
                           1418 ;	 function send_msg_to_gateway
                           1419 ;	-----------------------------------------
   8113                    1420 _send_msg_to_gateway:
   8113 05 81              1421 	inc	sp
   8115 05 81              1422 	inc	sp
   8117 AD 82              1423 	mov	r5,dpl
   8119 AE 83              1424 	mov	r6,dph
   811B AF F0              1425 	mov	r7,b
                           1426 ;	main.c:70: &server_ipaddr, UIP_HTONS(COCONUT_UDP_SERVER_PORT));
                           1427 ;	main.c:69: uip_udp_packet_sendto(client_conn, data, len,
   811D E5 81              1428 	mov	a,sp
   811F 24 FA              1429 	add	a,#0xfa
   8121 F8                 1430 	mov	r0,a
   8122 A9 81              1431 	mov	r1,sp
   8124 19                 1432 	dec	r1
   8125 E6                 1433 	mov	a,@r0
   8126 F7                 1434 	mov	@r1,a
   8127 08                 1435 	inc	r0
   8128 09                 1436 	inc	r1
   8129 E6                 1437 	mov	a,@r0
   812A F7                 1438 	mov	@r1,a
   812B 90 01 26           1439 	mov	dptr,#_client_conn
   812E E0                 1440 	movx	a,@dptr
   812F FA                 1441 	mov	r2,a
   8130 A3                 1442 	inc	dptr
   8131 E0                 1443 	movx	a,@dptr
   8132 FB                 1444 	mov	r3,a
   8133 A3                 1445 	inc	dptr
   8134 E0                 1446 	movx	a,@dptr
   8135 FC                 1447 	mov	r4,a
   8136 74 16              1448 	mov	a,#0x16
   8138 C0 E0              1449 	push	acc
   813A 74 2E              1450 	mov	a,#0x2E
   813C C0 E0              1451 	push	acc
   813E 74 29              1452 	mov	a,#_server_ipaddr
   8140 C0 E0              1453 	push	acc
   8142 74 01              1454 	mov	a,#(_server_ipaddr >> 8)
   8144 C0 E0              1455 	push	acc
   8146 E4                 1456 	clr	a
   8147 C0 E0              1457 	push	acc
   8149 E5 81              1458 	mov	a,sp
   814B 24 FA              1459 	add	a,#0xfa
   814D F8                 1460 	mov	r0,a
   814E E6                 1461 	mov	a,@r0
   814F C0 E0              1462 	push	acc
   8151 08                 1463 	inc	r0
   8152 E6                 1464 	mov	a,@r0
   8153 C0 E0              1465 	push	acc
   8155 C0 05              1466 	push	ar5
   8157 C0 06              1467 	push	ar6
   8159 C0 07              1468 	push	ar7
   815B 8A 82              1469 	mov	dpl,r2
   815D 8B 83              1470 	mov	dph,r3
   815F 8C F0              1471 	mov	b,r4
   8161 78 81              1472 	mov	r0,#_uip_udp_packet_sendto
   8163 79 07              1473 	mov	r1,#(_uip_udp_packet_sendto >> 8)
   8165 7A 00              1474 	mov	r2,#(_uip_udp_packet_sendto >> 16)
   8167 12 06 D5           1475 	lcall	__sdcc_banked_call
   816A E5 81              1476 	mov	a,sp
   816C 24 F6              1477 	add	a,#0xf6
   816E F5 81              1478 	mov	sp,a
                           1479 ;	main.c:73: return;
   8170 15 81              1480 	dec	sp
   8172 15 81              1481 	dec	sp
   8174 02 06 E7           1482 	ljmp	__sdcc_banked_ret
                           1483 ;------------------------------------------------------------
                           1484 ;Allocation info for local variables in function 'discover_request_handler'
                           1485 ;------------------------------------------------------------
                           1486 ;len                       Allocated to registers r6 r7 
                           1487 ;------------------------------------------------------------
                           1488 ;	main.c:78: discover_request_handler()
                           1489 ;	-----------------------------------------
                           1490 ;	 function discover_request_handler
                           1491 ;	-----------------------------------------
   8177                    1492 _discover_request_handler:
                           1493 ;	main.c:82: len = create_new_device_msg(output_buf, MAX_PAYLOAD_LEN, TYPE_RESPONSE);
   8177 74 01              1494 	mov	a,#0x01
   8179 C0 E0              1495 	push	acc
   817B 74 22              1496 	mov	a,#0x22
   817D C0 E0              1497 	push	acc
   817F 74 01              1498 	mov	a,#0x01
   8181 C0 E0              1499 	push	acc
   8183 90 00 04           1500 	mov	dptr,#_output_buf
   8186 75 F0 00           1501 	mov	b,#0x00
   8189 78 F3              1502 	mov	r0,#_create_new_device_msg
   818B 79 E7              1503 	mov	r1,#(_create_new_device_msg >> 8)
   818D 7A 03              1504 	mov	r2,#(_create_new_device_msg >> 16)
   818F 12 06 D5           1505 	lcall	__sdcc_banked_call
   8192 AE 82              1506 	mov	r6,dpl
   8194 AF 83              1507 	mov	r7,dph
   8196 15 81              1508 	dec	sp
   8198 15 81              1509 	dec	sp
   819A 15 81              1510 	dec	sp
                           1511 ;	main.c:83: if (len > 0) {
   819C EE                 1512 	mov	a,r6
   819D 4F                 1513 	orl	a,r7
   819E 60 2C              1514 	jz	00103$
                           1515 ;	main.c:84: send_msg(output_buf, len, &UIP_IP_BUF->srcipaddr);
   81A0 7C FD              1516 	mov	r4,#_uip_aligned_buf
   81A2 7D 06              1517 	mov	r5,#(_uip_aligned_buf >> 8)
   81A4 74 08              1518 	mov	a,#0x08
   81A6 2C                 1519 	add	a,r4
   81A7 FC                 1520 	mov	r4,a
   81A8 E4                 1521 	clr	a
   81A9 3D                 1522 	addc	a,r5
   81AA FD                 1523 	mov	r5,a
   81AB 7B 00              1524 	mov	r3,#0x00
   81AD C0 04              1525 	push	ar4
   81AF C0 05              1526 	push	ar5
   81B1 C0 03              1527 	push	ar3
   81B3 C0 06              1528 	push	ar6
   81B5 C0 07              1529 	push	ar7
   81B7 90 00 04           1530 	mov	dptr,#_output_buf
   81BA 75 F0 00           1531 	mov	b,#0x00
   81BD 78 AA              1532 	mov	r0,#_send_msg
   81BF 79 80              1533 	mov	r1,#(_send_msg >> 8)
   81C1 7A 02              1534 	mov	r2,#(_send_msg >> 16)
   81C3 12 06 D5           1535 	lcall	__sdcc_banked_call
   81C6 E5 81              1536 	mov	a,sp
   81C8 24 FB              1537 	add	a,#0xfb
   81CA F5 81              1538 	mov	sp,a
   81CC                    1539 00103$:
   81CC 02 06 E7           1540 	ljmp	__sdcc_banked_ret
                           1541 ;------------------------------------------------------------
                           1542 ;Allocation info for local variables in function 'register_response_handler'
                           1543 ;------------------------------------------------------------
                           1544 ;parameters                Allocated to registers r5 r6 r7 
                           1545 ;root                      Allocated to registers r5 r6 r7 
                           1546 ;sub                       Allocated to stack - sp -2
                           1547 ;------------------------------------------------------------
                           1548 ;	main.c:90: register_response_handler(uint8_t *parameters)
                           1549 ;	-----------------------------------------
                           1550 ;	 function register_response_handler
                           1551 ;	-----------------------------------------
   81CF                    1552 _register_response_handler:
   81CF 05 81              1553 	inc	sp
   81D1 05 81              1554 	inc	sp
   81D3 05 81              1555 	inc	sp
   81D5 AD 82              1556 	mov	r5,dpl
   81D7 AE 83              1557 	mov	r6,dph
   81D9 AF F0              1558 	mov	r7,b
                           1559 ;	main.c:94: PRINTF("register response:%s\n", parameters);
   81DB C0 07              1560 	push	ar7
   81DD C0 06              1561 	push	ar6
   81DF C0 05              1562 	push	ar5
   81E1 C0 05              1563 	push	ar5
   81E3 C0 06              1564 	push	ar6
   81E5 C0 07              1565 	push	ar7
   81E7 74 75              1566 	mov	a,#__str_3
   81E9 C0 E0              1567 	push	acc
   81EB 74 78              1568 	mov	a,#(__str_3 >> 8)
   81ED C0 E0              1569 	push	acc
   81EF 74 80              1570 	mov	a,#0x80
   81F1 C0 E0              1571 	push	acc
   81F3 78 6C              1572 	mov	r0,#_printf
   81F5 79 49              1573 	mov	r1,#(_printf >> 8)
   81F7 7A 00              1574 	mov	r2,#(_printf >> 16)
   81F9 12 06 D5           1575 	lcall	__sdcc_banked_call
   81FC E5 81              1576 	mov	a,sp
   81FE 24 FA              1577 	add	a,#0xfa
   8200 F5 81              1578 	mov	sp,a
   8202 D0 05              1579 	pop	ar5
   8204 D0 06              1580 	pop	ar6
   8206 D0 07              1581 	pop	ar7
                           1582 ;	main.c:95: if (!parameters) {
   8208 ED                 1583 	mov	a,r5
   8209 4E                 1584 	orl	a,r6
   820A 70 03              1585 	jnz	00102$
                           1586 ;	main.c:96: return;
   820C 02 82 BF           1587 	ljmp	00108$
   820F                    1588 00102$:
                           1589 ;	main.c:99: root = cJSON_Parse(parameters);
   820F 8D 82              1590 	mov	dpl,r5
   8211 8E 83              1591 	mov	dph,r6
   8213 8F F0              1592 	mov	b,r7
   8215 78 0B              1593 	mov	r0,#_cJSON_Parse
   8217 79 B9              1594 	mov	r1,#(_cJSON_Parse >> 8)
   8219 7A 02              1595 	mov	r2,#(_cJSON_Parse >> 16)
   821B 12 06 D5           1596 	lcall	__sdcc_banked_call
   821E AD 82              1597 	mov	r5,dpl
   8220 AE 83              1598 	mov	r6,dph
   8222 AF F0              1599 	mov	r7,b
                           1600 ;	main.c:101: if (!root) {
   8224 ED                 1601 	mov	a,r5
   8225 4E                 1602 	orl	a,r6
   8226 70 03              1603 	jnz	00104$
                           1604 ;	main.c:102: return;
   8228 02 82 BF           1605 	ljmp	00108$
   822B                    1606 00104$:
                           1607 ;	main.c:105: sub = cJSON_GetArrayItem(root, 0);
   822B E4                 1608 	clr	a
   822C C0 E0              1609 	push	acc
   822E C0 E0              1610 	push	acc
   8230 8D 82              1611 	mov	dpl,r5
   8232 8E 83              1612 	mov	dph,r6
   8234 8F F0              1613 	mov	b,r7
   8236 78 11              1614 	mov	r0,#_cJSON_GetArrayItem
   8238 79 D5              1615 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   823A 7A 02              1616 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   823C 12 06 D5           1617 	lcall	__sdcc_banked_call
   823F AD 82              1618 	mov	r5,dpl
   8241 AE 83              1619 	mov	r6,dph
   8243 AF F0              1620 	mov	r7,b
   8245 15 81              1621 	dec	sp
   8247 15 81              1622 	dec	sp
   8249 A8 81              1623 	mov	r0,sp
   824B 18                 1624 	dec	r0
   824C 18                 1625 	dec	r0
   824D A6 05              1626 	mov	@r0,ar5
   824F 08                 1627 	inc	r0
   8250 A6 06              1628 	mov	@r0,ar6
   8252 08                 1629 	inc	r0
   8253 A6 07              1630 	mov	@r0,ar7
                           1631 ;	main.c:106: PRINTF("register response ret code:%d\n", sub->valueint);
   8255 A8 81              1632 	mov	r0,sp
   8257 18                 1633 	dec	r0
   8258 18                 1634 	dec	r0
   8259 74 0E              1635 	mov	a,#0x0E
   825B 26                 1636 	add	a,@r0
   825C FA                 1637 	mov	r2,a
   825D E4                 1638 	clr	a
   825E 08                 1639 	inc	r0
   825F 36                 1640 	addc	a,@r0
   8260 FB                 1641 	mov	r3,a
   8261 08                 1642 	inc	r0
   8262 86 04              1643 	mov	ar4,@r0
   8264 8A 82              1644 	mov	dpl,r2
   8266 8B 83              1645 	mov	dph,r3
   8268 8C F0              1646 	mov	b,r4
   826A 12 4B C9           1647 	lcall	__gptrget
   826D FE                 1648 	mov	r6,a
   826E A3                 1649 	inc	dptr
   826F 12 4B C9           1650 	lcall	__gptrget
   8272 FF                 1651 	mov	r7,a
   8273 C0 04              1652 	push	ar4
   8275 C0 03              1653 	push	ar3
   8277 C0 02              1654 	push	ar2
   8279 C0 06              1655 	push	ar6
   827B C0 07              1656 	push	ar7
   827D 74 8B              1657 	mov	a,#__str_4
   827F C0 E0              1658 	push	acc
   8281 74 78              1659 	mov	a,#(__str_4 >> 8)
   8283 C0 E0              1660 	push	acc
   8285 74 80              1661 	mov	a,#0x80
   8287 C0 E0              1662 	push	acc
   8289 78 6C              1663 	mov	r0,#_printf
   828B 79 49              1664 	mov	r1,#(_printf >> 8)
   828D 7A 00              1665 	mov	r2,#(_printf >> 16)
   828F 12 06 D5           1666 	lcall	__sdcc_banked_call
   8292 E5 81              1667 	mov	a,sp
   8294 24 FB              1668 	add	a,#0xfb
   8296 F5 81              1669 	mov	sp,a
   8298 D0 02              1670 	pop	ar2
   829A D0 03              1671 	pop	ar3
   829C D0 04              1672 	pop	ar4
                           1673 ;	main.c:107: if (sub && sub->valueint == RETCODE_SUCCESS) {
   829E A8 81              1674 	mov	r0,sp
   82A0 18                 1675 	dec	r0
   82A1 18                 1676 	dec	r0
   82A2 E6                 1677 	mov	a,@r0
   82A3 08                 1678 	inc	r0
   82A4 46                 1679 	orl	a,@r0
   82A5 60 18              1680 	jz	00106$
   82A7 8A 82              1681 	mov	dpl,r2
   82A9 8B 83              1682 	mov	dph,r3
   82AB 8C F0              1683 	mov	b,r4
   82AD 12 4B C9           1684 	lcall	__gptrget
   82B0 FA                 1685 	mov	r2,a
   82B1 A3                 1686 	inc	dptr
   82B2 12 4B C9           1687 	lcall	__gptrget
   82B5 FB                 1688 	mov	r3,a
   82B6 4A                 1689 	orl	a,r2
   82B7 70 06              1690 	jnz	00106$
                           1691 ;	main.c:108: reg_success = 1;
   82B9 90 1D 9A           1692 	mov	dptr,#_reg_success
   82BC 74 01              1693 	mov	a,#0x01
   82BE F0                 1694 	movx	@dptr,a
   82BF                    1695 00106$:
                           1696 ;	main.c:111: return;
   82BF                    1697 00108$:
   82BF 15 81              1698 	dec	sp
   82C1 15 81              1699 	dec	sp
   82C3 15 81              1700 	dec	sp
   82C5 02 06 E7           1701 	ljmp	__sdcc_banked_ret
                           1702 ;------------------------------------------------------------
                           1703 ;Allocation info for local variables in function 'report_request_handler'
                           1704 ;------------------------------------------------------------
                           1705 ;parameters                Allocated to stack - sp -5
                           1706 ;device_id                 Allocated to registers 
                           1707 ;------------------------------------------------------------
                           1708 ;	main.c:116: report_request_handler(uint8_t *device_id, uint8_t *parameters)
                           1709 ;	-----------------------------------------
                           1710 ;	 function report_request_handler
                           1711 ;	-----------------------------------------
   82C8                    1712 _report_request_handler:
                           1713 ;	main.c:118: return;
   82C8 02 06 E7           1714 	ljmp	__sdcc_banked_ret
                           1715 ;------------------------------------------------------------
                           1716 ;Allocation info for local variables in function 'set_objects_request_handler'
                           1717 ;------------------------------------------------------------
                           1718 ;parameters                Allocated to registers r5 r6 r7 
                           1719 ;root                      Allocated to stack - sp -28
                           1720 ;sub                       Allocated to registers r5 r6 r7 
                           1721 ;sub1                      Allocated to registers r2 r3 r4 
                           1722 ;sub2                      Allocated to stack - sp -25
                           1723 ;sub3                      Allocated to registers r5 r6 r7 
                           1724 ;i                         Allocated to stack - sp -22
                           1725 ;j                         Allocated to stack - sp -20
                           1726 ;obj                       Allocated to stack - sp -18
                           1727 ;res                       Allocated to stack - sp -15
                           1728 ;value                     Allocated to stack - sp -12
                           1729 ;retcode                   Allocated to registers 
                           1730 ;sloc0                     Allocated to stack - sp -4
                           1731 ;sloc1                     Allocated to stack - sp +10
                           1732 ;sloc2                     Allocated to stack - sp -3
                           1733 ;------------------------------------------------------------
                           1734 ;	main.c:123: set_objects_request_handler(uint8_t *parameters)
                           1735 ;	-----------------------------------------
                           1736 ;	 function set_objects_request_handler
                           1737 ;	-----------------------------------------
   82CB                    1738 _set_objects_request_handler:
   82CB E5 81              1739 	mov	a,sp
   82CD 24 1D              1740 	add	a,#0x1D
   82CF F5 81              1741 	mov	sp,a
   82D1 AD 82              1742 	mov	r5,dpl
   82D3 AE 83              1743 	mov	r6,dph
   82D5 AF F0              1744 	mov	r7,b
                           1745 ;	main.c:132: if (!parameters) {
   82D7 ED                 1746 	mov	a,r5
   82D8 4E                 1747 	orl	a,r6
   82D9 70 03              1748 	jnz	00102$
                           1749 ;	main.c:133: return;
   82DB 02 87 92           1750 	ljmp	00138$
   82DE                    1751 00102$:
                           1752 ;	main.c:136: root = cJSON_Parse(parameters);
   82DE 8D 82              1753 	mov	dpl,r5
   82E0 8E 83              1754 	mov	dph,r6
   82E2 8F F0              1755 	mov	b,r7
   82E4 78 0B              1756 	mov	r0,#_cJSON_Parse
   82E6 79 B9              1757 	mov	r1,#(_cJSON_Parse >> 8)
   82E8 7A 02              1758 	mov	r2,#(_cJSON_Parse >> 16)
   82EA 12 06 D5           1759 	lcall	__sdcc_banked_call
   82ED AD 82              1760 	mov	r5,dpl
   82EF AE 83              1761 	mov	r6,dph
   82F1 AF F0              1762 	mov	r7,b
   82F3 E5 81              1763 	mov	a,sp
   82F5 24 E4              1764 	add	a,#0xe4
   82F7 F8                 1765 	mov	r0,a
   82F8 A6 05              1766 	mov	@r0,ar5
   82FA 08                 1767 	inc	r0
   82FB A6 06              1768 	mov	@r0,ar6
   82FD 08                 1769 	inc	r0
   82FE A6 07              1770 	mov	@r0,ar7
                           1771 ;	main.c:138: if (!root) {
   8300 E5 81              1772 	mov	a,sp
   8302 24 E4              1773 	add	a,#0xe4
   8304 F8                 1774 	mov	r0,a
   8305 E6                 1775 	mov	a,@r0
   8306 08                 1776 	inc	r0
   8307 46                 1777 	orl	a,@r0
   8308 70 03              1778 	jnz	00156$
                           1779 ;	main.c:139: return;
   830A 02 87 92           1780 	ljmp	00138$
   830D                    1781 00156$:
   830D E5 81              1782 	mov	a,sp
   830F 24 EA              1783 	add	a,#0xea
   8311 F8                 1784 	mov	r0,a
   8312 E4                 1785 	clr	a
   8313 F6                 1786 	mov	@r0,a
   8314 08                 1787 	inc	r0
   8315 F6                 1788 	mov	@r0,a
   8316                    1789 00134$:
                           1790 ;	main.c:142: for (;i < cJSON_GetArraySize(root); i++) {
   8316 E5 81              1791 	mov	a,sp
   8318 24 E4              1792 	add	a,#0xe4
   831A F8                 1793 	mov	r0,a
   831B 86 82              1794 	mov	dpl,@r0
   831D 08                 1795 	inc	r0
   831E 86 83              1796 	mov	dph,@r0
   8320 08                 1797 	inc	r0
   8321 86 F0              1798 	mov	b,@r0
   8323 78 C6              1799 	mov	r0,#_cJSON_GetArraySize
   8325 79 D4              1800 	mov	r1,#(_cJSON_GetArraySize >> 8)
   8327 7A 02              1801 	mov	r2,#(_cJSON_GetArraySize >> 16)
   8329 12 06 D5           1802 	lcall	__sdcc_banked_call
   832C AA 82              1803 	mov	r2,dpl
   832E AF 83              1804 	mov	r7,dph
   8330 E5 81              1805 	mov	a,sp
   8332 24 EA              1806 	add	a,#0xea
   8334 F8                 1807 	mov	r0,a
   8335 C3                 1808 	clr	c
   8336 E6                 1809 	mov	a,@r0
   8337 9A                 1810 	subb	a,r2
   8338 08                 1811 	inc	r0
   8339 E6                 1812 	mov	a,@r0
   833A 9F                 1813 	subb	a,r7
   833B 40 03              1814 	jc	00177$
   833D 02 87 1C           1815 	ljmp	00137$
   8340                    1816 00177$:
                           1817 ;	main.c:144: sub = cJSON_GetArrayItem(root, i);
   8340 E5 81              1818 	mov	a,sp
   8342 24 EA              1819 	add	a,#0xea
   8344 F8                 1820 	mov	r0,a
   8345 86 06              1821 	mov	ar6,@r0
   8347 08                 1822 	inc	r0
   8348 86 07              1823 	mov	ar7,@r0
   834A C0 06              1824 	push	ar6
   834C C0 07              1825 	push	ar7
   834E E5 81              1826 	mov	a,sp
   8350 24 E2              1827 	add	a,#0xe2
   8352 F8                 1828 	mov	r0,a
   8353 86 82              1829 	mov	dpl,@r0
   8355 08                 1830 	inc	r0
   8356 86 83              1831 	mov	dph,@r0
   8358 08                 1832 	inc	r0
   8359 86 F0              1833 	mov	b,@r0
   835B 78 11              1834 	mov	r0,#_cJSON_GetArrayItem
   835D 79 D5              1835 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   835F 7A 02              1836 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8361 12 06 D5           1837 	lcall	__sdcc_banked_call
   8364 AD 82              1838 	mov	r5,dpl
   8366 AE 83              1839 	mov	r6,dph
   8368 AF F0              1840 	mov	r7,b
   836A 15 81              1841 	dec	sp
   836C 15 81              1842 	dec	sp
                           1843 ;	main.c:145: if (!sub) {
   836E ED                 1844 	mov	a,r5
   836F 4E                 1845 	orl	a,r6
   8370 70 03              1846 	jnz	00106$
                           1847 ;	main.c:146: return;
   8372 02 87 92           1848 	ljmp	00138$
   8375                    1849 00106$:
                           1850 ;	main.c:149: sub1 = cJSON_GetArrayItem(sub, 0);
   8375 C0 07              1851 	push	ar7
   8377 C0 06              1852 	push	ar6
   8379 C0 05              1853 	push	ar5
   837B E4                 1854 	clr	a
   837C C0 E0              1855 	push	acc
   837E C0 E0              1856 	push	acc
   8380 8D 82              1857 	mov	dpl,r5
   8382 8E 83              1858 	mov	dph,r6
   8384 8F F0              1859 	mov	b,r7
   8386 78 11              1860 	mov	r0,#_cJSON_GetArrayItem
   8388 79 D5              1861 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   838A 7A 02              1862 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   838C 12 06 D5           1863 	lcall	__sdcc_banked_call
   838F AA 82              1864 	mov	r2,dpl
   8391 AB 83              1865 	mov	r3,dph
   8393 AC F0              1866 	mov	r4,b
   8395 15 81              1867 	dec	sp
   8397 15 81              1868 	dec	sp
   8399 D0 05              1869 	pop	ar5
   839B D0 06              1870 	pop	ar6
   839D D0 07              1871 	pop	ar7
                           1872 ;	main.c:150: if (!sub1) {
   839F EA                 1873 	mov	a,r2
   83A0 4B                 1874 	orl	a,r3
   83A1 70 03              1875 	jnz	00108$
                           1876 ;	main.c:151: return;
   83A3 02 87 92           1877 	ljmp	00138$
   83A6                    1878 00108$:
                           1879 ;	main.c:154: obj = device_find_object(sub1->valuestring);
   83A6 C0 05              1880 	push	ar5
   83A8 C0 06              1881 	push	ar6
   83AA C0 07              1882 	push	ar7
   83AC 74 0B              1883 	mov	a,#0x0B
   83AE 2A                 1884 	add	a,r2
   83AF FD                 1885 	mov	r5,a
   83B0 E4                 1886 	clr	a
   83B1 3B                 1887 	addc	a,r3
   83B2 FE                 1888 	mov	r6,a
   83B3 8C 07              1889 	mov	ar7,r4
   83B5 8D 82              1890 	mov	dpl,r5
   83B7 8E 83              1891 	mov	dph,r6
   83B9 8F F0              1892 	mov	b,r7
   83BB 12 4B C9           1893 	lcall	__gptrget
   83BE FD                 1894 	mov	r5,a
   83BF A3                 1895 	inc	dptr
   83C0 12 4B C9           1896 	lcall	__gptrget
   83C3 FE                 1897 	mov	r6,a
   83C4 A3                 1898 	inc	dptr
   83C5 12 4B C9           1899 	lcall	__gptrget
   83C8 FF                 1900 	mov	r7,a
   83C9 8D 82              1901 	mov	dpl,r5
   83CB 8E 83              1902 	mov	dph,r6
   83CD 8F F0              1903 	mov	b,r7
   83CF 78 B6              1904 	mov	r0,#_device_find_object
   83D1 79 A0              1905 	mov	r1,#(_device_find_object >> 8)
   83D3 7A 05              1906 	mov	r2,#(_device_find_object >> 16)
   83D5 12 06 D5           1907 	lcall	__sdcc_banked_call
   83D8 AD 82              1908 	mov	r5,dpl
   83DA AE 83              1909 	mov	r6,dph
   83DC AF F0              1910 	mov	r7,b
   83DE E5 81              1911 	mov	a,sp
   83E0 24 EB              1912 	add	a,#0xeb
   83E2 F8                 1913 	mov	r0,a
   83E3 A6 05              1914 	mov	@r0,ar5
   83E5 08                 1915 	inc	r0
   83E6 A6 06              1916 	mov	@r0,ar6
   83E8 08                 1917 	inc	r0
   83E9 A6 07              1918 	mov	@r0,ar7
                           1919 ;	main.c:155: if(!obj) {
   83EB D0 07              1920 	pop	ar7
   83ED D0 06              1921 	pop	ar6
   83EF D0 05              1922 	pop	ar5
   83F1 E5 81              1923 	mov	a,sp
   83F3 24 EE              1924 	add	a,#0xee
   83F5 F8                 1925 	mov	r0,a
   83F6 E6                 1926 	mov	a,@r0
   83F7 08                 1927 	inc	r0
   83F8 46                 1928 	orl	a,@r0
   83F9 70 03              1929 	jnz	00180$
   83FB 02 87 0E           1930 	ljmp	00136$
   83FE                    1931 00180$:
                           1932 ;	main.c:160: sub1 = cJSON_GetArrayItem(sub, 1);
   83FE 74 01              1933 	mov	a,#0x01
   8400 C0 E0              1934 	push	acc
   8402 E4                 1935 	clr	a
   8403 C0 E0              1936 	push	acc
   8405 8D 82              1937 	mov	dpl,r5
   8407 8E 83              1938 	mov	dph,r6
   8409 8F F0              1939 	mov	b,r7
   840B 78 11              1940 	mov	r0,#_cJSON_GetArrayItem
   840D 79 D5              1941 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   840F 7A 02              1942 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8411 12 06 D5           1943 	lcall	__sdcc_banked_call
   8414 AD 82              1944 	mov	r5,dpl
   8416 AE 83              1945 	mov	r6,dph
   8418 AF F0              1946 	mov	r7,b
   841A 15 81              1947 	dec	sp
   841C 15 81              1948 	dec	sp
   841E 8D 02              1949 	mov	ar2,r5
   8420 8E 03              1950 	mov	ar3,r6
   8422 8F 04              1951 	mov	ar4,r7
                           1952 ;	main.c:161: if (!sub1) {
   8424 EA                 1953 	mov	a,r2
   8425 4B                 1954 	orl	a,r3
   8426 70 03              1955 	jnz	00181$
   8428 02 87 0E           1956 	ljmp	00136$
   842B                    1957 00181$:
                           1958 ;	main.c:165: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
   842B E5 81              1959 	mov	a,sp
   842D 24 EC              1960 	add	a,#0xec
   842F F8                 1961 	mov	r0,a
   8430 E4                 1962 	clr	a
   8431 F6                 1963 	mov	@r0,a
   8432 08                 1964 	inc	r0
   8433 F6                 1965 	mov	@r0,a
   8434                    1966 00130$:
   8434 8A 82              1967 	mov	dpl,r2
   8436 8B 83              1968 	mov	dph,r3
   8438 8C F0              1969 	mov	b,r4
   843A C0 04              1970 	push	ar4
   843C C0 03              1971 	push	ar3
   843E C0 02              1972 	push	ar2
   8440 78 C6              1973 	mov	r0,#_cJSON_GetArraySize
   8442 79 D4              1974 	mov	r1,#(_cJSON_GetArraySize >> 8)
   8444 7A 02              1975 	mov	r2,#(_cJSON_GetArraySize >> 16)
   8446 12 06 D5           1976 	lcall	__sdcc_banked_call
   8449 AD 82              1977 	mov	r5,dpl
   844B AF 83              1978 	mov	r7,dph
   844D D0 02              1979 	pop	ar2
   844F D0 03              1980 	pop	ar3
   8451 D0 04              1981 	pop	ar4
   8453 E5 81              1982 	mov	a,sp
   8455 24 EC              1983 	add	a,#0xec
   8457 F8                 1984 	mov	r0,a
   8458 C3                 1985 	clr	c
   8459 E6                 1986 	mov	a,@r0
   845A 9D                 1987 	subb	a,r5
   845B 08                 1988 	inc	r0
   845C E6                 1989 	mov	a,@r0
   845D 9F                 1990 	subb	a,r7
   845E 40 03              1991 	jc	00182$
   8460 02 87 0E           1992 	ljmp	00136$
   8463                    1993 00182$:
                           1994 ;	main.c:166: sub2 = cJSON_GetArrayItem(sub1, j);
   8463 E5 81              1995 	mov	a,sp
   8465 24 EC              1996 	add	a,#0xec
   8467 F8                 1997 	mov	r0,a
   8468 86 06              1998 	mov	ar6,@r0
   846A 08                 1999 	inc	r0
   846B 86 07              2000 	mov	ar7,@r0
   846D C0 04              2001 	push	ar4
   846F C0 03              2002 	push	ar3
   8471 C0 02              2003 	push	ar2
   8473 C0 06              2004 	push	ar6
   8475 C0 07              2005 	push	ar7
   8477 8A 82              2006 	mov	dpl,r2
   8479 8B 83              2007 	mov	dph,r3
   847B 8C F0              2008 	mov	b,r4
   847D 78 11              2009 	mov	r0,#_cJSON_GetArrayItem
   847F 79 D5              2010 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8481 7A 02              2011 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8483 12 06 D5           2012 	lcall	__sdcc_banked_call
   8486 AD 82              2013 	mov	r5,dpl
   8488 AE 83              2014 	mov	r6,dph
   848A AF F0              2015 	mov	r7,b
   848C 15 81              2016 	dec	sp
   848E 15 81              2017 	dec	sp
   8490 D0 02              2018 	pop	ar2
   8492 D0 03              2019 	pop	ar3
   8494 D0 04              2020 	pop	ar4
   8496 E5 81              2021 	mov	a,sp
   8498 24 E7              2022 	add	a,#0xe7
   849A F8                 2023 	mov	r0,a
   849B A6 05              2024 	mov	@r0,ar5
   849D 08                 2025 	inc	r0
   849E A6 06              2026 	mov	@r0,ar6
   84A0 08                 2027 	inc	r0
   84A1 A6 07              2028 	mov	@r0,ar7
                           2029 ;	main.c:167: if (!sub2) {
   84A3 E5 81              2030 	mov	a,sp
   84A5 24 E7              2031 	add	a,#0xe7
   84A7 F8                 2032 	mov	r0,a
   84A8 E6                 2033 	mov	a,@r0
   84A9 08                 2034 	inc	r0
   84AA 46                 2035 	orl	a,@r0
   84AB 70 03              2036 	jnz	00183$
   84AD 02 87 00           2037 	ljmp	00132$
   84B0                    2038 00183$:
                           2039 ;	main.c:171: sub3 = cJSON_GetArrayItem(sub2, 0);
   84B0 C0 04              2040 	push	ar4
   84B2 C0 03              2041 	push	ar3
   84B4 C0 02              2042 	push	ar2
   84B6 E4                 2043 	clr	a
   84B7 C0 E0              2044 	push	acc
   84B9 C0 E0              2045 	push	acc
   84BB E5 81              2046 	mov	a,sp
   84BD 24 E2              2047 	add	a,#0xe2
   84BF F8                 2048 	mov	r0,a
   84C0 86 82              2049 	mov	dpl,@r0
   84C2 08                 2050 	inc	r0
   84C3 86 83              2051 	mov	dph,@r0
   84C5 08                 2052 	inc	r0
   84C6 86 F0              2053 	mov	b,@r0
   84C8 78 11              2054 	mov	r0,#_cJSON_GetArrayItem
   84CA 79 D5              2055 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   84CC 7A 02              2056 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   84CE 12 06 D5           2057 	lcall	__sdcc_banked_call
   84D1 AD 82              2058 	mov	r5,dpl
   84D3 AE 83              2059 	mov	r6,dph
   84D5 AF F0              2060 	mov	r7,b
   84D7 15 81              2061 	dec	sp
   84D9 15 81              2062 	dec	sp
   84DB D0 02              2063 	pop	ar2
   84DD D0 03              2064 	pop	ar3
   84DF D0 04              2065 	pop	ar4
                           2066 ;	main.c:172: if (!sub3) {
   84E1 ED                 2067 	mov	a,r5
   84E2 4E                 2068 	orl	a,r6
   84E3 70 03              2069 	jnz	00184$
   84E5 02 87 00           2070 	ljmp	00132$
   84E8                    2071 00184$:
                           2072 ;	main.c:176: res = object_instance_find_resource(obj, sub3->valueint);
   84E8 C0 02              2073 	push	ar2
   84EA C0 03              2074 	push	ar3
   84EC C0 04              2075 	push	ar4
   84EE 74 0E              2076 	mov	a,#0x0E
   84F0 2D                 2077 	add	a,r5
   84F1 FA                 2078 	mov	r2,a
   84F2 E4                 2079 	clr	a
   84F3 3E                 2080 	addc	a,r6
   84F4 FB                 2081 	mov	r3,a
   84F5 8F 04              2082 	mov	ar4,r7
   84F7 8A 82              2083 	mov	dpl,r2
   84F9 8B 83              2084 	mov	dph,r3
   84FB 8C F0              2085 	mov	b,r4
   84FD 12 4B C9           2086 	lcall	__gptrget
   8500 FA                 2087 	mov	r2,a
   8501 A3                 2088 	inc	dptr
   8502 12 4B C9           2089 	lcall	__gptrget
   8505 FB                 2090 	mov	r3,a
   8506 C0 02              2091 	push	ar2
   8508 C0 03              2092 	push	ar3
   850A E5 81              2093 	mov	a,sp
   850C 24 E9              2094 	add	a,#0xe9
   850E F8                 2095 	mov	r0,a
   850F 86 82              2096 	mov	dpl,@r0
   8511 08                 2097 	inc	r0
   8512 86 83              2098 	mov	dph,@r0
   8514 08                 2099 	inc	r0
   8515 86 F0              2100 	mov	b,@r0
   8517 78 95              2101 	mov	r0,#_object_instance_find_resource
   8519 79 95              2102 	mov	r1,#(_object_instance_find_resource >> 8)
   851B 7A 05              2103 	mov	r2,#(_object_instance_find_resource >> 16)
   851D 12 06 D5           2104 	lcall	__sdcc_banked_call
   8520 AA 82              2105 	mov	r2,dpl
   8522 AB 83              2106 	mov	r3,dph
   8524 AC F0              2107 	mov	r4,b
   8526 15 81              2108 	dec	sp
   8528 15 81              2109 	dec	sp
   852A E5 81              2110 	mov	a,sp
   852C 24 EE              2111 	add	a,#0xee
   852E F8                 2112 	mov	r0,a
   852F A6 02              2113 	mov	@r0,ar2
   8531 08                 2114 	inc	r0
   8532 A6 03              2115 	mov	@r0,ar3
   8534 08                 2116 	inc	r0
   8535 A6 04              2117 	mov	@r0,ar4
                           2118 ;	main.c:177: if (!res) {
   8537 D0 04              2119 	pop	ar4
   8539 D0 03              2120 	pop	ar3
   853B D0 02              2121 	pop	ar2
   853D E5 81              2122 	mov	a,sp
   853F 24 F1              2123 	add	a,#0xf1
   8541 F8                 2124 	mov	r0,a
   8542 E6                 2125 	mov	a,@r0
   8543 08                 2126 	inc	r0
   8544 46                 2127 	orl	a,@r0
   8545 70 03              2128 	jnz	00185$
   8547 02 87 00           2129 	ljmp	00132$
   854A                    2130 00185$:
                           2131 ;	main.c:181: sub3 = cJSON_GetArrayItem(sub2, 1);
   854A C0 02              2132 	push	ar2
   854C C0 03              2133 	push	ar3
   854E C0 04              2134 	push	ar4
   8550 74 01              2135 	mov	a,#0x01
   8552 C0 E0              2136 	push	acc
   8554 E4                 2137 	clr	a
   8555 C0 E0              2138 	push	acc
   8557 E5 81              2139 	mov	a,sp
   8559 24 E2              2140 	add	a,#0xe2
   855B F8                 2141 	mov	r0,a
   855C 86 82              2142 	mov	dpl,@r0
   855E 08                 2143 	inc	r0
   855F 86 83              2144 	mov	dph,@r0
   8561 08                 2145 	inc	r0
   8562 86 F0              2146 	mov	b,@r0
   8564 78 11              2147 	mov	r0,#_cJSON_GetArrayItem
   8566 79 D5              2148 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8568 7A 02              2149 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   856A 12 06 D5           2150 	lcall	__sdcc_banked_call
   856D AA 82              2151 	mov	r2,dpl
   856F AB 83              2152 	mov	r3,dph
   8571 AC F0              2153 	mov	r4,b
   8573 15 81              2154 	dec	sp
   8575 15 81              2155 	dec	sp
   8577 8A 05              2156 	mov	ar5,r2
   8579 8B 06              2157 	mov	ar6,r3
   857B 8C 07              2158 	mov	ar7,r4
                           2159 ;	main.c:182: if (!sub3) {
   857D D0 04              2160 	pop	ar4
   857F D0 03              2161 	pop	ar3
   8581 D0 02              2162 	pop	ar2
   8583 ED                 2163 	mov	a,r5
   8584 4E                 2164 	orl	a,r6
   8585 70 03              2165 	jnz	00186$
   8587 02 87 00           2166 	ljmp	00132$
   858A                    2167 00186$:
                           2168 ;	main.c:186: if (res->resource_type->type == Integer) {
   858A C0 02              2169 	push	ar2
   858C C0 03              2170 	push	ar3
   858E C0 04              2171 	push	ar4
   8590 E5 81              2172 	mov	a,sp
   8592 24 EE              2173 	add	a,#0xee
   8594 F8                 2174 	mov	r0,a
   8595 74 06              2175 	mov	a,#0x06
   8597 26                 2176 	add	a,@r0
   8598 FA                 2177 	mov	r2,a
   8599 E4                 2178 	clr	a
   859A 08                 2179 	inc	r0
   859B 36                 2180 	addc	a,@r0
   859C FB                 2181 	mov	r3,a
   859D 08                 2182 	inc	r0
   859E 86 04              2183 	mov	ar4,@r0
   85A0 8A 82              2184 	mov	dpl,r2
   85A2 8B 83              2185 	mov	dph,r3
   85A4 8C F0              2186 	mov	b,r4
   85A6 12 4B C9           2187 	lcall	__gptrget
   85A9 FA                 2188 	mov	r2,a
   85AA A3                 2189 	inc	dptr
   85AB 12 4B C9           2190 	lcall	__gptrget
   85AE FB                 2191 	mov	r3,a
   85AF A3                 2192 	inc	dptr
   85B0 12 4B C9           2193 	lcall	__gptrget
   85B3 FC                 2194 	mov	r4,a
   85B4 74 03              2195 	mov	a,#0x03
   85B6 2A                 2196 	add	a,r2
   85B7 FA                 2197 	mov	r2,a
   85B8 E4                 2198 	clr	a
   85B9 3B                 2199 	addc	a,r3
   85BA FB                 2200 	mov	r3,a
   85BB 8A 82              2201 	mov	dpl,r2
   85BD 8B 83              2202 	mov	dph,r3
   85BF 8C F0              2203 	mov	b,r4
   85C1 E5 81              2204 	mov	a,sp
   85C3 24 F9              2205 	add	a,#0xf9
   85C5 F8                 2206 	mov	r0,a
   85C6 12 4B C9           2207 	lcall	__gptrget
   85C9 F6                 2208 	mov	@r0,a
   85CA D0 04              2209 	pop	ar4
   85CC D0 03              2210 	pop	ar3
   85CE D0 02              2211 	pop	ar2
   85D0 E5 81              2212 	mov	a,sp
   85D2 24 FC              2213 	add	a,#0xfc
   85D4 F8                 2214 	mov	r0,a
   85D5 E6                 2215 	mov	a,@r0
   85D6 70 32              2216 	jnz	00128$
                           2217 ;	main.c:187: value.int_value = sub3->valueint;
   85D8 C0 02              2218 	push	ar2
   85DA C0 03              2219 	push	ar3
   85DC C0 04              2220 	push	ar4
   85DE E5 81              2221 	mov	a,sp
   85E0 24 F1              2222 	add	a,#0xF1
   85E2 F9                 2223 	mov	r1,a
   85E3 74 0E              2224 	mov	a,#0x0E
   85E5 2D                 2225 	add	a,r5
   85E6 FA                 2226 	mov	r2,a
   85E7 E4                 2227 	clr	a
   85E8 3E                 2228 	addc	a,r6
   85E9 FB                 2229 	mov	r3,a
   85EA 8F 04              2230 	mov	ar4,r7
   85EC 8A 82              2231 	mov	dpl,r2
   85EE 8B 83              2232 	mov	dph,r3
   85F0 8C F0              2233 	mov	b,r4
   85F2 12 4B C9           2234 	lcall	__gptrget
   85F5 FA                 2235 	mov	r2,a
   85F6 A3                 2236 	inc	dptr
   85F7 12 4B C9           2237 	lcall	__gptrget
   85FA FB                 2238 	mov	r3,a
   85FB A7 02              2239 	mov	@r1,ar2
   85FD 09                 2240 	inc	r1
   85FE A7 03              2241 	mov	@r1,ar3
   8600 19                 2242 	dec	r1
   8601 D0 04              2243 	pop	ar4
   8603 D0 03              2244 	pop	ar3
   8605 D0 02              2245 	pop	ar2
   8607 02 86 C9           2246 	ljmp	00129$
   860A                    2247 00128$:
                           2248 ;	main.c:188: } else if (res->resource_type->type == Float) {
   860A E5 81              2249 	mov	a,sp
   860C 24 FC              2250 	add	a,#0xfc
   860E F8                 2251 	mov	r0,a
   860F B6 01 53           2252 	cjne	@r0,#0x01,00125$
                           2253 ;	main.c:189: value.float_value = sub3->valuefloat;
   8612 C0 02              2254 	push	ar2
   8614 C0 03              2255 	push	ar3
   8616 C0 04              2256 	push	ar4
   8618 E5 81              2257 	mov	a,sp
   861A 24 F1              2258 	add	a,#0xF1
   861C F9                 2259 	mov	r1,a
   861D 74 10              2260 	mov	a,#0x10
   861F 2D                 2261 	add	a,r5
   8620 FA                 2262 	mov	r2,a
   8621 E4                 2263 	clr	a
   8622 3E                 2264 	addc	a,r6
   8623 FB                 2265 	mov	r3,a
   8624 8F 04              2266 	mov	ar4,r7
   8626 8A 82              2267 	mov	dpl,r2
   8628 8B 83              2268 	mov	dph,r3
   862A 8C F0              2269 	mov	b,r4
   862C E5 81              2270 	mov	a,sp
   862E 24 FA              2271 	add	a,#0xfa
   8630 F8                 2272 	mov	r0,a
   8631 12 4B C9           2273 	lcall	__gptrget
   8634 F6                 2274 	mov	@r0,a
   8635 A3                 2275 	inc	dptr
   8636 12 4B C9           2276 	lcall	__gptrget
   8639 08                 2277 	inc	r0
   863A F6                 2278 	mov	@r0,a
   863B A3                 2279 	inc	dptr
   863C 12 4B C9           2280 	lcall	__gptrget
   863F 08                 2281 	inc	r0
   8640 F6                 2282 	mov	@r0,a
   8641 A3                 2283 	inc	dptr
   8642 12 4B C9           2284 	lcall	__gptrget
   8645 08                 2285 	inc	r0
   8646 F6                 2286 	mov	@r0,a
   8647 E5 81              2287 	mov	a,sp
   8649 24 FA              2288 	add	a,#0xfa
   864B F8                 2289 	mov	r0,a
   864C E6                 2290 	mov	a,@r0
   864D F7                 2291 	mov	@r1,a
   864E 09                 2292 	inc	r1
   864F 08                 2293 	inc	r0
   8650 E6                 2294 	mov	a,@r0
   8651 F7                 2295 	mov	@r1,a
   8652 09                 2296 	inc	r1
   8653 08                 2297 	inc	r0
   8654 E6                 2298 	mov	a,@r0
   8655 F7                 2299 	mov	@r1,a
   8656 09                 2300 	inc	r1
   8657 08                 2301 	inc	r0
   8658 E6                 2302 	mov	a,@r0
   8659 F7                 2303 	mov	@r1,a
   865A 19                 2304 	dec	r1
   865B 19                 2305 	dec	r1
   865C 19                 2306 	dec	r1
   865D D0 04              2307 	pop	ar4
   865F D0 03              2308 	pop	ar3
   8661 D0 02              2309 	pop	ar2
   8663 80 64              2310 	sjmp	00129$
   8665                    2311 00125$:
                           2312 ;	main.c:190: } else if (res->resource_type->type == String) {
   8665 E5 81              2313 	mov	a,sp
   8667 24 FC              2314 	add	a,#0xfc
   8669 F8                 2315 	mov	r0,a
   866A B6 02 02           2316 	cjne	@r0,#0x02,00190$
   866D 80 03              2317 	sjmp	00191$
   866F                    2318 00190$:
   866F 02 87 00           2319 	ljmp	00132$
   8672                    2320 00191$:
                           2321 ;	main.c:191: strcpy(value.string_value, sub3->valuestring);
   8672 C0 02              2322 	push	ar2
   8674 C0 03              2323 	push	ar3
   8676 C0 04              2324 	push	ar4
   8678 74 0B              2325 	mov	a,#0x0B
   867A 2D                 2326 	add	a,r5
   867B FD                 2327 	mov	r5,a
   867C E4                 2328 	clr	a
   867D 3E                 2329 	addc	a,r6
   867E FE                 2330 	mov	r6,a
   867F 8D 82              2331 	mov	dpl,r5
   8681 8E 83              2332 	mov	dph,r6
   8683 8F F0              2333 	mov	b,r7
   8685 12 4B C9           2334 	lcall	__gptrget
   8688 FD                 2335 	mov	r5,a
   8689 A3                 2336 	inc	dptr
   868A 12 4B C9           2337 	lcall	__gptrget
   868D FE                 2338 	mov	r6,a
   868E A3                 2339 	inc	dptr
   868F 12 4B C9           2340 	lcall	__gptrget
   8692 FF                 2341 	mov	r7,a
   8693 E5 81              2342 	mov	a,sp
   8695 24 F1              2343 	add	a,#0xF1
   8697 FC                 2344 	mov	r4,a
   8698 7B 00              2345 	mov	r3,#0x00
   869A 7A 40              2346 	mov	r2,#0x40
   869C C0 04              2347 	push	ar4
   869E C0 03              2348 	push	ar3
   86A0 C0 02              2349 	push	ar2
   86A2 C0 05              2350 	push	ar5
   86A4 C0 06              2351 	push	ar6
   86A6 C0 07              2352 	push	ar7
   86A8 8C 82              2353 	mov	dpl,r4
   86AA 8B 83              2354 	mov	dph,r3
   86AC 8A F0              2355 	mov	b,r2
   86AE 78 DF              2356 	mov	r0,#_strcpy
   86B0 79 3C              2357 	mov	r1,#(_strcpy >> 8)
   86B2 7A 00              2358 	mov	r2,#(_strcpy >> 16)
   86B4 12 06 D5           2359 	lcall	__sdcc_banked_call
   86B7 15 81              2360 	dec	sp
   86B9 15 81              2361 	dec	sp
   86BB 15 81              2362 	dec	sp
   86BD D0 02              2363 	pop	ar2
   86BF D0 03              2364 	pop	ar3
   86C1 D0 04              2365 	pop	ar4
                           2366 ;	main.c:204: return;
   86C3 D0 04              2367 	pop	ar4
   86C5 D0 03              2368 	pop	ar3
   86C7 D0 02              2369 	pop	ar2
                           2370 ;	main.c:193: continue;
   86C9                    2371 00129$:
                           2372 ;	main.c:196: set_resource_value(res, &value);
   86C9 E5 81              2373 	mov	a,sp
   86CB 24 F4              2374 	add	a,#0xF4
   86CD FF                 2375 	mov	r7,a
   86CE 7E 00              2376 	mov	r6,#0x00
   86D0 7D 40              2377 	mov	r5,#0x40
   86D2 C0 04              2378 	push	ar4
   86D4 C0 03              2379 	push	ar3
   86D6 C0 02              2380 	push	ar2
   86D8 C0 07              2381 	push	ar7
   86DA C0 06              2382 	push	ar6
   86DC C0 05              2383 	push	ar5
   86DE E5 81              2384 	mov	a,sp
   86E0 24 EB              2385 	add	a,#0xeb
   86E2 F8                 2386 	mov	r0,a
   86E3 86 82              2387 	mov	dpl,@r0
   86E5 08                 2388 	inc	r0
   86E6 86 83              2389 	mov	dph,@r0
   86E8 08                 2390 	inc	r0
   86E9 86 F0              2391 	mov	b,@r0
   86EB 78 F2              2392 	mov	r0,#_set_resource_value
   86ED 79 B2              2393 	mov	r1,#(_set_resource_value >> 8)
   86EF 7A 05              2394 	mov	r2,#(_set_resource_value >> 16)
   86F1 12 06 D5           2395 	lcall	__sdcc_banked_call
   86F4 15 81              2396 	dec	sp
   86F6 15 81              2397 	dec	sp
   86F8 15 81              2398 	dec	sp
   86FA D0 02              2399 	pop	ar2
   86FC D0 03              2400 	pop	ar3
   86FE D0 04              2401 	pop	ar4
   8700                    2402 00132$:
                           2403 ;	main.c:165: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
   8700 E5 81              2404 	mov	a,sp
   8702 24 EC              2405 	add	a,#0xec
   8704 F8                 2406 	mov	r0,a
   8705 06                 2407 	inc	@r0
   8706 B6 00 02           2408 	cjne	@r0,#0x00,00192$
   8709 08                 2409 	inc	r0
   870A 06                 2410 	inc	@r0
   870B                    2411 00192$:
   870B 02 84 34           2412 	ljmp	00130$
   870E                    2413 00136$:
                           2414 ;	main.c:142: for (;i < cJSON_GetArraySize(root); i++) {
   870E E5 81              2415 	mov	a,sp
   8710 24 EA              2416 	add	a,#0xea
   8712 F8                 2417 	mov	r0,a
   8713 06                 2418 	inc	@r0
   8714 B6 00 02           2419 	cjne	@r0,#0x00,00193$
   8717 08                 2420 	inc	r0
   8718 06                 2421 	inc	@r0
   8719                    2422 00193$:
   8719 02 83 16           2423 	ljmp	00134$
   871C                    2424 00137$:
                           2425 ;	main.c:201: sprintf(output_buf, "[%d]", retcode);
   871C E4                 2426 	clr	a
   871D C0 E0              2427 	push	acc
   871F C0 E0              2428 	push	acc
   8721 74 AA              2429 	mov	a,#__str_5
   8723 C0 E0              2430 	push	acc
   8725 74 78              2431 	mov	a,#(__str_5 >> 8)
   8727 C0 E0              2432 	push	acc
   8729 74 80              2433 	mov	a,#0x80
   872B C0 E0              2434 	push	acc
   872D 74 04              2435 	mov	a,#_output_buf
   872F C0 E0              2436 	push	acc
   8731 74 00              2437 	mov	a,#(_output_buf >> 8)
   8733 C0 E0              2438 	push	acc
   8735 E4                 2439 	clr	a
   8736 C0 E0              2440 	push	acc
   8738 78 FB              2441 	mov	r0,#_sprintf
   873A 79 44              2442 	mov	r1,#(_sprintf >> 8)
   873C 7A 00              2443 	mov	r2,#(_sprintf >> 16)
   873E 12 06 D5           2444 	lcall	__sdcc_banked_call
   8741 E5 81              2445 	mov	a,sp
   8743 24 F8              2446 	add	a,#0xf8
   8745 F5 81              2447 	mov	sp,a
                           2448 ;	main.c:202: send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
   8747 7E FD              2449 	mov	r6,#_uip_aligned_buf
   8749 7F 06              2450 	mov	r7,#(_uip_aligned_buf >> 8)
   874B 74 08              2451 	mov	a,#0x08
   874D 2E                 2452 	add	a,r6
   874E FE                 2453 	mov	r6,a
   874F E4                 2454 	clr	a
   8750 3F                 2455 	addc	a,r7
   8751 FF                 2456 	mov	r7,a
   8752 7D 00              2457 	mov	r5,#0x00
   8754 90 00 04           2458 	mov	dptr,#_output_buf
   8757 75 F0 00           2459 	mov	b,#0x00
   875A C0 07              2460 	push	ar7
   875C C0 06              2461 	push	ar6
   875E C0 05              2462 	push	ar5
   8760 78 1A              2463 	mov	r0,#_strlen
   8762 79 4A              2464 	mov	r1,#(_strlen >> 8)
   8764 7A 00              2465 	mov	r2,#(_strlen >> 16)
   8766 12 06 D5           2466 	lcall	__sdcc_banked_call
   8769 AB 82              2467 	mov	r3,dpl
   876B AC 83              2468 	mov	r4,dph
   876D D0 05              2469 	pop	ar5
   876F D0 06              2470 	pop	ar6
   8771 D0 07              2471 	pop	ar7
   8773 C0 06              2472 	push	ar6
   8775 C0 07              2473 	push	ar7
   8777 C0 05              2474 	push	ar5
   8779 C0 03              2475 	push	ar3
   877B C0 04              2476 	push	ar4
   877D 90 00 04           2477 	mov	dptr,#_output_buf
   8780 75 F0 00           2478 	mov	b,#0x00
   8783 78 AA              2479 	mov	r0,#_send_msg
   8785 79 80              2480 	mov	r1,#(_send_msg >> 8)
   8787 7A 02              2481 	mov	r2,#(_send_msg >> 16)
   8789 12 06 D5           2482 	lcall	__sdcc_banked_call
   878C E5 81              2483 	mov	a,sp
   878E 24 FB              2484 	add	a,#0xfb
   8790 F5 81              2485 	mov	sp,a
                           2486 ;	main.c:204: return;
   8792                    2487 00138$:
   8792 E5 81              2488 	mov	a,sp
   8794 24 E3              2489 	add	a,#0xE3
   8796 F5 81              2490 	mov	sp,a
   8798 02 06 E7           2491 	ljmp	__sdcc_banked_ret
                           2492 ;------------------------------------------------------------
                           2493 ;Allocation info for local variables in function 'get_resources_request_handler'
                           2494 ;------------------------------------------------------------
                           2495 ;parameters                Allocated to registers r5 r6 r7 
                           2496 ;root                      Allocated to stack - sp -33
                           2497 ;sub                       Allocated to stack - sp -30
                           2498 ;sub1                      Allocated to stack - sp -27
                           2499 ;sub2                      Allocated to registers r3 r4 r5 
                           2500 ;i                         Allocated to stack - sp -24
                           2501 ;j                         Allocated to registers r6 r7 
                           2502 ;obj                       Allocated to stack - sp -22
                           2503 ;res                       Allocated to registers r5 r4 r3 
                           2504 ;value                     Allocated to stack - sp -19
                           2505 ;ptr                       Allocated to stack - sp -11
                           2506 ;sloc0                     Allocated to stack - sp +3
                           2507 ;sloc1                     Allocated to stack - sp +4
                           2508 ;sloc2                     Allocated to stack - sp -8
                           2509 ;sloc3                     Allocated to stack - sp -6
                           2510 ;sloc4                     Allocated to stack - sp -3
                           2511 ;------------------------------------------------------------
                           2512 ;	main.c:210: get_resources_request_handler(uint8_t *parameters)
                           2513 ;	-----------------------------------------
                           2514 ;	 function get_resources_request_handler
                           2515 ;	-----------------------------------------
   879B                    2516 _get_resources_request_handler:
   879B E5 81              2517 	mov	a,sp
   879D 24 22              2518 	add	a,#0x22
   879F F5 81              2519 	mov	sp,a
   87A1 AD 82              2520 	mov	r5,dpl
   87A3 AE 83              2521 	mov	r6,dph
   87A5 AF F0              2522 	mov	r7,b
                           2523 ;	main.c:217: uint8_t *ptr = output_buf;
   87A7 E5 81              2524 	mov	a,sp
   87A9 24 F5              2525 	add	a,#0xf5
   87AB F8                 2526 	mov	r0,a
   87AC 76 04              2527 	mov	@r0,#_output_buf
   87AE 08                 2528 	inc	r0
   87AF 76 00              2529 	mov	@r0,#(_output_buf >> 8)
   87B1 08                 2530 	inc	r0
   87B2 76 00              2531 	mov	@r0,#0x00
                           2532 ;	main.c:219: if (!parameters) {
   87B4 ED                 2533 	mov	a,r5
   87B5 4E                 2534 	orl	a,r6
   87B6 70 03              2535 	jnz	00102$
                           2536 ;	main.c:220: return;
   87B8 02 8D FE           2537 	ljmp	00136$
   87BB                    2538 00102$:
                           2539 ;	main.c:223: root = cJSON_Parse(parameters);
   87BB 8D 82              2540 	mov	dpl,r5
   87BD 8E 83              2541 	mov	dph,r6
   87BF 8F F0              2542 	mov	b,r7
   87C1 78 0B              2543 	mov	r0,#_cJSON_Parse
   87C3 79 B9              2544 	mov	r1,#(_cJSON_Parse >> 8)
   87C5 7A 02              2545 	mov	r2,#(_cJSON_Parse >> 16)
   87C7 12 06 D5           2546 	lcall	__sdcc_banked_call
   87CA AD 82              2547 	mov	r5,dpl
   87CC AE 83              2548 	mov	r6,dph
   87CE AF F0              2549 	mov	r7,b
   87D0 E5 81              2550 	mov	a,sp
   87D2 24 DF              2551 	add	a,#0xdf
   87D4 F8                 2552 	mov	r0,a
   87D5 A6 05              2553 	mov	@r0,ar5
   87D7 08                 2554 	inc	r0
   87D8 A6 06              2555 	mov	@r0,ar6
   87DA 08                 2556 	inc	r0
   87DB A6 07              2557 	mov	@r0,ar7
                           2558 ;	main.c:225: if (!root) {
   87DD E5 81              2559 	mov	a,sp
   87DF 24 DF              2560 	add	a,#0xdf
   87E1 F8                 2561 	mov	r0,a
   87E2 E6                 2562 	mov	a,@r0
   87E3 08                 2563 	inc	r0
   87E4 46                 2564 	orl	a,@r0
   87E5 70 03              2565 	jnz	00104$
                           2566 ;	main.c:226: return;
   87E7 02 8D FE           2567 	ljmp	00136$
   87EA                    2568 00104$:
                           2569 ;	main.c:229: sprintf(ptr, "[");
   87EA E5 81              2570 	mov	a,sp
   87EC 24 F5              2571 	add	a,#0xf5
   87EE F8                 2572 	mov	r0,a
   87EF 86 05              2573 	mov	ar5,@r0
   87F1 08                 2574 	inc	r0
   87F2 86 06              2575 	mov	ar6,@r0
   87F4 08                 2576 	inc	r0
   87F5 86 07              2577 	mov	ar7,@r0
   87F7 74 AF              2578 	mov	a,#__str_6
   87F9 C0 E0              2579 	push	acc
   87FB 74 78              2580 	mov	a,#(__str_6 >> 8)
   87FD C0 E0              2581 	push	acc
   87FF 74 80              2582 	mov	a,#0x80
   8801 C0 E0              2583 	push	acc
   8803 C0 05              2584 	push	ar5
   8805 C0 06              2585 	push	ar6
   8807 C0 07              2586 	push	ar7
   8809 78 FB              2587 	mov	r0,#_sprintf
   880B 79 44              2588 	mov	r1,#(_sprintf >> 8)
   880D 7A 00              2589 	mov	r2,#(_sprintf >> 16)
   880F 12 06 D5           2590 	lcall	__sdcc_banked_call
   8812 E5 81              2591 	mov	a,sp
   8814 24 FA              2592 	add	a,#0xfa
                           2593 ;	main.c:230: ptr++;
   8816 F5 81              2594 	mov	sp,a
   8818 24 F5              2595 	add	a,#0xf5
   881A F8                 2596 	mov	r0,a
   881B 06                 2597 	inc	@r0
   881C B6 00 02           2598 	cjne	@r0,#0x00,00173$
   881F 08                 2599 	inc	r0
   8820 06                 2600 	inc	@r0
   8821                    2601 00173$:
   8821 E5 81              2602 	mov	a,sp
   8823 24 E8              2603 	add	a,#0xe8
   8825 F8                 2604 	mov	r0,a
   8826 E4                 2605 	clr	a
   8827 F6                 2606 	mov	@r0,a
   8828 08                 2607 	inc	r0
   8829 F6                 2608 	mov	@r0,a
                           2609 ;	main.c:296: return;
                           2610 ;	main.c:230: ptr++;
   882A                    2611 00132$:
                           2612 ;	main.c:232: for (;i < cJSON_GetArraySize(root); i++) {
   882A E5 81              2613 	mov	a,sp
   882C 24 DF              2614 	add	a,#0xdf
   882E F8                 2615 	mov	r0,a
   882F 86 82              2616 	mov	dpl,@r0
   8831 08                 2617 	inc	r0
   8832 86 83              2618 	mov	dph,@r0
   8834 08                 2619 	inc	r0
   8835 86 F0              2620 	mov	b,@r0
   8837 78 C6              2621 	mov	r0,#_cJSON_GetArraySize
   8839 79 D4              2622 	mov	r1,#(_cJSON_GetArraySize >> 8)
   883B 7A 02              2623 	mov	r2,#(_cJSON_GetArraySize >> 16)
   883D 12 06 D5           2624 	lcall	__sdcc_banked_call
   8840 AB 82              2625 	mov	r3,dpl
   8842 AC 83              2626 	mov	r4,dph
   8844 E5 81              2627 	mov	a,sp
   8846 24 E8              2628 	add	a,#0xe8
   8848 F8                 2629 	mov	r0,a
   8849 C3                 2630 	clr	c
   884A E6                 2631 	mov	a,@r0
   884B 9B                 2632 	subb	a,r3
   884C 08                 2633 	inc	r0
   884D E6                 2634 	mov	a,@r0
   884E 9C                 2635 	subb	a,r4
   884F 40 03              2636 	jc	00174$
   8851 02 8D 91           2637 	ljmp	00135$
   8854                    2638 00174$:
                           2639 ;	main.c:234: sub = cJSON_GetArrayItem(root, i);
   8854 E5 81              2640 	mov	a,sp
   8856 24 E8              2641 	add	a,#0xe8
   8858 F8                 2642 	mov	r0,a
   8859 86 03              2643 	mov	ar3,@r0
   885B 08                 2644 	inc	r0
   885C 86 04              2645 	mov	ar4,@r0
   885E C0 03              2646 	push	ar3
   8860 C0 04              2647 	push	ar4
   8862 E5 81              2648 	mov	a,sp
   8864 24 DD              2649 	add	a,#0xdd
   8866 F8                 2650 	mov	r0,a
   8867 86 82              2651 	mov	dpl,@r0
   8869 08                 2652 	inc	r0
   886A 86 83              2653 	mov	dph,@r0
   886C 08                 2654 	inc	r0
   886D 86 F0              2655 	mov	b,@r0
   886F 78 11              2656 	mov	r0,#_cJSON_GetArrayItem
   8871 79 D5              2657 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8873 7A 02              2658 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8875 12 06 D5           2659 	lcall	__sdcc_banked_call
   8878 AA 82              2660 	mov	r2,dpl
   887A AB 83              2661 	mov	r3,dph
   887C AC F0              2662 	mov	r4,b
   887E 15 81              2663 	dec	sp
   8880 15 81              2664 	dec	sp
   8882 E5 81              2665 	mov	a,sp
   8884 24 E2              2666 	add	a,#0xe2
   8886 F8                 2667 	mov	r0,a
   8887 A6 02              2668 	mov	@r0,ar2
   8889 08                 2669 	inc	r0
   888A A6 03              2670 	mov	@r0,ar3
   888C 08                 2671 	inc	r0
   888D A6 04              2672 	mov	@r0,ar4
                           2673 ;	main.c:235: if (!sub) {
   888F E5 81              2674 	mov	a,sp
   8891 24 E2              2675 	add	a,#0xe2
   8893 F8                 2676 	mov	r0,a
   8894 E6                 2677 	mov	a,@r0
   8895 08                 2678 	inc	r0
   8896 46                 2679 	orl	a,@r0
   8897 70 03              2680 	jnz	00106$
                           2681 ;	main.c:236: return;
   8899 02 8D FE           2682 	ljmp	00136$
   889C                    2683 00106$:
                           2684 ;	main.c:239: sub1 = cJSON_GetArrayItem(sub, 0);
   889C E4                 2685 	clr	a
   889D C0 E0              2686 	push	acc
   889F C0 E0              2687 	push	acc
   88A1 E5 81              2688 	mov	a,sp
   88A3 24 E0              2689 	add	a,#0xe0
   88A5 F8                 2690 	mov	r0,a
   88A6 86 82              2691 	mov	dpl,@r0
   88A8 08                 2692 	inc	r0
   88A9 86 83              2693 	mov	dph,@r0
   88AB 08                 2694 	inc	r0
   88AC 86 F0              2695 	mov	b,@r0
   88AE 78 11              2696 	mov	r0,#_cJSON_GetArrayItem
   88B0 79 D5              2697 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   88B2 7A 02              2698 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   88B4 12 06 D5           2699 	lcall	__sdcc_banked_call
   88B7 AF 82              2700 	mov	r7,dpl
   88B9 AE 83              2701 	mov	r6,dph
   88BB AD F0              2702 	mov	r5,b
   88BD 15 81              2703 	dec	sp
   88BF 15 81              2704 	dec	sp
   88C1 E5 81              2705 	mov	a,sp
   88C3 24 E5              2706 	add	a,#0xe5
   88C5 F8                 2707 	mov	r0,a
   88C6 A6 07              2708 	mov	@r0,ar7
   88C8 08                 2709 	inc	r0
   88C9 A6 06              2710 	mov	@r0,ar6
   88CB 08                 2711 	inc	r0
   88CC A6 05              2712 	mov	@r0,ar5
                           2713 ;	main.c:240: if (!sub1) {
   88CE E5 81              2714 	mov	a,sp
   88D0 24 E5              2715 	add	a,#0xe5
   88D2 F8                 2716 	mov	r0,a
   88D3 E6                 2717 	mov	a,@r0
   88D4 08                 2718 	inc	r0
   88D5 46                 2719 	orl	a,@r0
   88D6 70 03              2720 	jnz	00108$
                           2721 ;	main.c:241: return;
   88D8 02 8D FE           2722 	ljmp	00136$
   88DB                    2723 00108$:
                           2724 ;	main.c:244: obj = device_find_object(sub1->valuestring);
   88DB E5 81              2725 	mov	a,sp
   88DD 24 E5              2726 	add	a,#0xe5
   88DF F8                 2727 	mov	r0,a
   88E0 74 0B              2728 	mov	a,#0x0B
   88E2 26                 2729 	add	a,@r0
   88E3 FD                 2730 	mov	r5,a
   88E4 E4                 2731 	clr	a
   88E5 08                 2732 	inc	r0
   88E6 36                 2733 	addc	a,@r0
   88E7 FE                 2734 	mov	r6,a
   88E8 08                 2735 	inc	r0
   88E9 86 07              2736 	mov	ar7,@r0
   88EB 8D 82              2737 	mov	dpl,r5
   88ED 8E 83              2738 	mov	dph,r6
   88EF 8F F0              2739 	mov	b,r7
   88F1 12 4B C9           2740 	lcall	__gptrget
   88F4 FA                 2741 	mov	r2,a
   88F5 A3                 2742 	inc	dptr
   88F6 12 4B C9           2743 	lcall	__gptrget
   88F9 FB                 2744 	mov	r3,a
   88FA A3                 2745 	inc	dptr
   88FB 12 4B C9           2746 	lcall	__gptrget
   88FE FC                 2747 	mov	r4,a
   88FF 8A 82              2748 	mov	dpl,r2
   8901 8B 83              2749 	mov	dph,r3
   8903 8C F0              2750 	mov	b,r4
   8905 C0 07              2751 	push	ar7
   8907 C0 06              2752 	push	ar6
   8909 C0 05              2753 	push	ar5
   890B 78 B6              2754 	mov	r0,#_device_find_object
   890D 79 A0              2755 	mov	r1,#(_device_find_object >> 8)
   890F 7A 05              2756 	mov	r2,#(_device_find_object >> 16)
   8911 12 06 D5           2757 	lcall	__sdcc_banked_call
   8914 AA 82              2758 	mov	r2,dpl
   8916 AB 83              2759 	mov	r3,dph
   8918 AC F0              2760 	mov	r4,b
   891A D0 05              2761 	pop	ar5
   891C D0 06              2762 	pop	ar6
   891E D0 07              2763 	pop	ar7
   8920 E5 81              2764 	mov	a,sp
   8922 24 EA              2765 	add	a,#0xea
   8924 F8                 2766 	mov	r0,a
   8925 A6 02              2767 	mov	@r0,ar2
   8927 08                 2768 	inc	r0
   8928 A6 03              2769 	mov	@r0,ar3
   892A 08                 2770 	inc	r0
   892B A6 04              2771 	mov	@r0,ar4
                           2772 ;	main.c:245: if(!obj) {
   892D E5 81              2773 	mov	a,sp
   892F 24 EA              2774 	add	a,#0xea
   8931 F8                 2775 	mov	r0,a
   8932 E6                 2776 	mov	a,@r0
   8933 08                 2777 	inc	r0
   8934 46                 2778 	orl	a,@r0
   8935 70 03              2779 	jnz	00177$
   8937 02 8D 83           2780 	ljmp	00134$
   893A                    2781 00177$:
                           2782 ;	main.c:249: sprintf(ptr, "[%s,[", sub1->valuestring);
   893A 8D 82              2783 	mov	dpl,r5
   893C 8E 83              2784 	mov	dph,r6
   893E 8F F0              2785 	mov	b,r7
   8940 12 4B C9           2786 	lcall	__gptrget
   8943 FD                 2787 	mov	r5,a
   8944 A3                 2788 	inc	dptr
   8945 12 4B C9           2789 	lcall	__gptrget
   8948 FE                 2790 	mov	r6,a
   8949 A3                 2791 	inc	dptr
   894A 12 4B C9           2792 	lcall	__gptrget
   894D FF                 2793 	mov	r7,a
   894E E5 81              2794 	mov	a,sp
   8950 24 F5              2795 	add	a,#0xf5
   8952 F8                 2796 	mov	r0,a
   8953 86 02              2797 	mov	ar2,@r0
   8955 08                 2798 	inc	r0
   8956 86 03              2799 	mov	ar3,@r0
   8958 08                 2800 	inc	r0
   8959 86 04              2801 	mov	ar4,@r0
   895B C0 05              2802 	push	ar5
   895D C0 06              2803 	push	ar6
   895F C0 07              2804 	push	ar7
   8961 74 B1              2805 	mov	a,#__str_7
   8963 C0 E0              2806 	push	acc
   8965 74 78              2807 	mov	a,#(__str_7 >> 8)
   8967 C0 E0              2808 	push	acc
   8969 74 80              2809 	mov	a,#0x80
   896B C0 E0              2810 	push	acc
   896D C0 02              2811 	push	ar2
   896F C0 03              2812 	push	ar3
   8971 C0 04              2813 	push	ar4
   8973 78 FB              2814 	mov	r0,#_sprintf
   8975 79 44              2815 	mov	r1,#(_sprintf >> 8)
   8977 7A 00              2816 	mov	r2,#(_sprintf >> 16)
   8979 12 06 D5           2817 	lcall	__sdcc_banked_call
   897C E5 81              2818 	mov	a,sp
   897E 24 F7              2819 	add	a,#0xf7
                           2820 ;	main.c:250: ptr = ptr + strlen(ptr);
   8980 F5 81              2821 	mov	sp,a
   8982 24 F5              2822 	add	a,#0xf5
   8984 F8                 2823 	mov	r0,a
   8985 86 02              2824 	mov	ar2,@r0
   8987 08                 2825 	inc	r0
   8988 86 03              2826 	mov	ar3,@r0
   898A 08                 2827 	inc	r0
   898B 86 04              2828 	mov	ar4,@r0
   898D 8A 82              2829 	mov	dpl,r2
   898F 8B 83              2830 	mov	dph,r3
   8991 8C F0              2831 	mov	b,r4
   8993 78 1A              2832 	mov	r0,#_strlen
   8995 79 4A              2833 	mov	r1,#(_strlen >> 8)
   8997 7A 00              2834 	mov	r2,#(_strlen >> 16)
   8999 12 06 D5           2835 	lcall	__sdcc_banked_call
   899C AE 82              2836 	mov	r6,dpl
   899E AF 83              2837 	mov	r7,dph
   89A0 E5 81              2838 	mov	a,sp
   89A2 24 F5              2839 	add	a,#0xf5
   89A4 F8                 2840 	mov	r0,a
   89A5 EE                 2841 	mov	a,r6
   89A6 26                 2842 	add	a,@r0
   89A7 F6                 2843 	mov	@r0,a
   89A8 EF                 2844 	mov	a,r7
   89A9 08                 2845 	inc	r0
   89AA 36                 2846 	addc	a,@r0
   89AB F6                 2847 	mov	@r0,a
                           2848 ;	main.c:253: sub1 = cJSON_GetArrayItem(sub, 1);
   89AC 74 01              2849 	mov	a,#0x01
   89AE C0 E0              2850 	push	acc
   89B0 E4                 2851 	clr	a
   89B1 C0 E0              2852 	push	acc
   89B3 E5 81              2853 	mov	a,sp
   89B5 24 E0              2854 	add	a,#0xe0
   89B7 F8                 2855 	mov	r0,a
   89B8 86 82              2856 	mov	dpl,@r0
   89BA 08                 2857 	inc	r0
   89BB 86 83              2858 	mov	dph,@r0
   89BD 08                 2859 	inc	r0
   89BE 86 F0              2860 	mov	b,@r0
   89C0 78 11              2861 	mov	r0,#_cJSON_GetArrayItem
   89C2 79 D5              2862 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   89C4 7A 02              2863 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   89C6 12 06 D5           2864 	lcall	__sdcc_banked_call
   89C9 AD 82              2865 	mov	r5,dpl
   89CB AE 83              2866 	mov	r6,dph
   89CD AF F0              2867 	mov	r7,b
   89CF 15 81              2868 	dec	sp
   89D1 15 81              2869 	dec	sp
   89D3 E5 81              2870 	mov	a,sp
   89D5 24 E5              2871 	add	a,#0xe5
   89D7 F8                 2872 	mov	r0,a
   89D8 A6 05              2873 	mov	@r0,ar5
   89DA 08                 2874 	inc	r0
   89DB A6 06              2875 	mov	@r0,ar6
   89DD 08                 2876 	inc	r0
   89DE A6 07              2877 	mov	@r0,ar7
                           2878 ;	main.c:254: if (!sub1) {
   89E0 E5 81              2879 	mov	a,sp
   89E2 24 E5              2880 	add	a,#0xe5
   89E4 F8                 2881 	mov	r0,a
   89E5 E6                 2882 	mov	a,@r0
   89E6 08                 2883 	inc	r0
   89E7 46                 2884 	orl	a,@r0
   89E8 70 03              2885 	jnz	00178$
   89EA 02 8D 83           2886 	ljmp	00134$
   89ED                    2887 00178$:
                           2888 ;	main.c:258: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
   89ED 7E 00              2889 	mov	r6,#0x00
   89EF 7F 00              2890 	mov	r7,#0x00
   89F1                    2891 00128$:
   89F1 E5 81              2892 	mov	a,sp
   89F3 24 E5              2893 	add	a,#0xe5
   89F5 F8                 2894 	mov	r0,a
   89F6 86 82              2895 	mov	dpl,@r0
   89F8 08                 2896 	inc	r0
   89F9 86 83              2897 	mov	dph,@r0
   89FB 08                 2898 	inc	r0
   89FC 86 F0              2899 	mov	b,@r0
   89FE C0 07              2900 	push	ar7
   8A00 C0 06              2901 	push	ar6
   8A02 78 C6              2902 	mov	r0,#_cJSON_GetArraySize
   8A04 79 D4              2903 	mov	r1,#(_cJSON_GetArraySize >> 8)
   8A06 7A 02              2904 	mov	r2,#(_cJSON_GetArraySize >> 16)
   8A08 12 06 D5           2905 	lcall	__sdcc_banked_call
   8A0B AC 82              2906 	mov	r4,dpl
   8A0D AD 83              2907 	mov	r5,dph
   8A0F D0 06              2908 	pop	ar6
   8A11 D0 07              2909 	pop	ar7
   8A13 C3                 2910 	clr	c
   8A14 EE                 2911 	mov	a,r6
   8A15 9C                 2912 	subb	a,r4
   8A16 EF                 2913 	mov	a,r7
   8A17 9D                 2914 	subb	a,r5
   8A18 40 03              2915 	jc	00179$
   8A1A 02 8D 46           2916 	ljmp	00131$
   8A1D                    2917 00179$:
                           2918 ;	main.c:259: sub2 = cJSON_GetArrayItem(sub1, j);
   8A1D 8E 04              2919 	mov	ar4,r6
   8A1F 8F 05              2920 	mov	ar5,r7
   8A21 C0 07              2921 	push	ar7
   8A23 C0 06              2922 	push	ar6
   8A25 C0 04              2923 	push	ar4
   8A27 C0 05              2924 	push	ar5
   8A29 E5 81              2925 	mov	a,sp
   8A2B 24 E1              2926 	add	a,#0xe1
   8A2D F8                 2927 	mov	r0,a
   8A2E 86 82              2928 	mov	dpl,@r0
   8A30 08                 2929 	inc	r0
   8A31 86 83              2930 	mov	dph,@r0
   8A33 08                 2931 	inc	r0
   8A34 86 F0              2932 	mov	b,@r0
   8A36 78 11              2933 	mov	r0,#_cJSON_GetArrayItem
   8A38 79 D5              2934 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8A3A 7A 02              2935 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8A3C 12 06 D5           2936 	lcall	__sdcc_banked_call
   8A3F AB 82              2937 	mov	r3,dpl
   8A41 AC 83              2938 	mov	r4,dph
   8A43 AD F0              2939 	mov	r5,b
   8A45 15 81              2940 	dec	sp
   8A47 15 81              2941 	dec	sp
   8A49 D0 06              2942 	pop	ar6
   8A4B D0 07              2943 	pop	ar7
                           2944 ;	main.c:260: if (!sub2) {
   8A4D EB                 2945 	mov	a,r3
   8A4E 4C                 2946 	orl	a,r4
   8A4F 70 03              2947 	jnz	00180$
   8A51 02 8D 3E           2948 	ljmp	00130$
   8A54                    2949 00180$:
                           2950 ;	main.c:264: res = object_instance_find_resource(obj, sub2->valueint);
   8A54 C0 06              2951 	push	ar6
   8A56 C0 07              2952 	push	ar7
   8A58 E5 81              2953 	mov	a,sp
   8A5A 24 F8              2954 	add	a,#0xf8
   8A5C F8                 2955 	mov	r0,a
   8A5D 74 0E              2956 	mov	a,#0x0E
   8A5F 2B                 2957 	add	a,r3
   8A60 F6                 2958 	mov	@r0,a
   8A61 E4                 2959 	clr	a
   8A62 3C                 2960 	addc	a,r4
   8A63 08                 2961 	inc	r0
   8A64 F6                 2962 	mov	@r0,a
   8A65 08                 2963 	inc	r0
   8A66 A6 05              2964 	mov	@r0,ar5
   8A68 E5 81              2965 	mov	a,sp
   8A6A 24 F8              2966 	add	a,#0xf8
   8A6C F8                 2967 	mov	r0,a
   8A6D 86 82              2968 	mov	dpl,@r0
   8A6F 08                 2969 	inc	r0
   8A70 86 83              2970 	mov	dph,@r0
   8A72 08                 2971 	inc	r0
   8A73 86 F0              2972 	mov	b,@r0
   8A75 12 4B C9           2973 	lcall	__gptrget
   8A78 FA                 2974 	mov	r2,a
   8A79 A3                 2975 	inc	dptr
   8A7A 12 4B C9           2976 	lcall	__gptrget
   8A7D FF                 2977 	mov	r7,a
   8A7E C0 02              2978 	push	ar2
   8A80 C0 07              2979 	push	ar7
   8A82 E5 81              2980 	mov	a,sp
   8A84 24 E6              2981 	add	a,#0xe6
   8A86 F8                 2982 	mov	r0,a
   8A87 86 82              2983 	mov	dpl,@r0
   8A89 08                 2984 	inc	r0
   8A8A 86 83              2985 	mov	dph,@r0
   8A8C 08                 2986 	inc	r0
   8A8D 86 F0              2987 	mov	b,@r0
   8A8F 78 95              2988 	mov	r0,#_object_instance_find_resource
   8A91 79 95              2989 	mov	r1,#(_object_instance_find_resource >> 8)
   8A93 7A 05              2990 	mov	r2,#(_object_instance_find_resource >> 16)
   8A95 12 06 D5           2991 	lcall	__sdcc_banked_call
   8A98 AA 82              2992 	mov	r2,dpl
   8A9A AE 83              2993 	mov	r6,dph
   8A9C AF F0              2994 	mov	r7,b
   8A9E 15 81              2995 	dec	sp
   8AA0 15 81              2996 	dec	sp
   8AA2 8A 05              2997 	mov	ar5,r2
   8AA4 8E 04              2998 	mov	ar4,r6
   8AA6 8F 03              2999 	mov	ar3,r7
                           3000 ;	main.c:265: if (!res) {
   8AA8 D0 07              3001 	pop	ar7
   8AAA D0 06              3002 	pop	ar6
   8AAC ED                 3003 	mov	a,r5
   8AAD 4C                 3004 	orl	a,r4
   8AAE 70 03              3005 	jnz	00181$
   8AB0 02 8D 3E           3006 	ljmp	00130$
   8AB3                    3007 00181$:
                           3008 ;	main.c:269: if (get_resource_value(res, &value) == FAIL) {
   8AB3 C0 06              3009 	push	ar6
   8AB5 C0 07              3010 	push	ar7
   8AB7 E5 81              3011 	mov	a,sp
   8AB9 24 EB              3012 	add	a,#0xEB
   8ABB FA                 3013 	mov	r2,a
   8ABC 7E 00              3014 	mov	r6,#0x00
   8ABE 7F 40              3015 	mov	r7,#0x40
   8AC0 C0 06              3016 	push	ar6
   8AC2 C0 05              3017 	push	ar5
   8AC4 C0 04              3018 	push	ar4
   8AC6 C0 03              3019 	push	ar3
   8AC8 C0 02              3020 	push	ar2
   8ACA C0 06              3021 	push	ar6
   8ACC C0 07              3022 	push	ar7
   8ACE 8D 82              3023 	mov	dpl,r5
   8AD0 8C 83              3024 	mov	dph,r4
   8AD2 8B F0              3025 	mov	b,r3
   8AD4 78 FA              3026 	mov	r0,#_get_resource_value
   8AD6 79 B1              3027 	mov	r1,#(_get_resource_value >> 8)
   8AD8 7A 05              3028 	mov	r2,#(_get_resource_value >> 16)
   8ADA 12 06 D5           3029 	lcall	__sdcc_banked_call
   8ADD AF 82              3030 	mov	r7,dpl
   8ADF 15 81              3031 	dec	sp
   8AE1 15 81              3032 	dec	sp
   8AE3 15 81              3033 	dec	sp
   8AE5 D0 03              3034 	pop	ar3
   8AE7 D0 04              3035 	pop	ar4
   8AE9 D0 05              3036 	pop	ar5
   8AEB D0 06              3037 	pop	ar6
   8AED EF                 3038 	mov	a,r7
   8AEE D0 07              3039 	pop	ar7
   8AF0 D0 06              3040 	pop	ar6
   8AF2 70 03              3041 	jnz	00182$
   8AF4 02 8D 3E           3042 	ljmp	00130$
   8AF7                    3043 00182$:
                           3044 ;	main.c:273: if (res->resource_type->type == Integer) {
   8AF7 C0 06              3045 	push	ar6
   8AF9 C0 07              3046 	push	ar7
   8AFB 74 06              3047 	mov	a,#0x06
   8AFD 2D                 3048 	add	a,r5
   8AFE FA                 3049 	mov	r2,a
   8AFF E4                 3050 	clr	a
   8B00 3C                 3051 	addc	a,r4
   8B01 FE                 3052 	mov	r6,a
   8B02 8B 07              3053 	mov	ar7,r3
   8B04 8A 82              3054 	mov	dpl,r2
   8B06 8E 83              3055 	mov	dph,r6
   8B08 8F F0              3056 	mov	b,r7
   8B0A 12 4B C9           3057 	lcall	__gptrget
   8B0D FA                 3058 	mov	r2,a
   8B0E A3                 3059 	inc	dptr
   8B0F 12 4B C9           3060 	lcall	__gptrget
   8B12 FE                 3061 	mov	r6,a
   8B13 A3                 3062 	inc	dptr
   8B14 12 4B C9           3063 	lcall	__gptrget
   8B17 FF                 3064 	mov	r7,a
   8B18 74 03              3065 	mov	a,#0x03
   8B1A 2A                 3066 	add	a,r2
   8B1B FA                 3067 	mov	r2,a
   8B1C E4                 3068 	clr	a
   8B1D 3E                 3069 	addc	a,r6
   8B1E FE                 3070 	mov	r6,a
   8B1F 8A 82              3071 	mov	dpl,r2
   8B21 8E 83              3072 	mov	dph,r6
   8B23 8F F0              3073 	mov	b,r7
   8B25 12 4B C9           3074 	lcall	__gptrget
   8B28 FD                 3075 	mov	r5,a
   8B29 D0 07              3076 	pop	ar7
   8B2B D0 06              3077 	pop	ar6
   8B2D ED                 3078 	mov	a,r5
   8B2E 60 03              3079 	jz	00183$
   8B30 02 8B D7           3080 	ljmp	00126$
   8B33                    3081 00183$:
                           3082 ;	main.c:274: sprintf(ptr, "[%d, %d],", sub2->valueint, value.int_value);
   8B33 C0 06              3083 	push	ar6
   8B35 C0 07              3084 	push	ar7
   8B37 E5 81              3085 	mov	a,sp
   8B39 24 EB              3086 	add	a,#0xEB
   8B3B F9                 3087 	mov	r1,a
   8B3C 87 05              3088 	mov	ar5,@r1
   8B3E 09                 3089 	inc	r1
   8B3F 87 04              3090 	mov	ar4,@r1
   8B41 19                 3091 	dec	r1
   8B42 E5 81              3092 	mov	a,sp
   8B44 24 F8              3093 	add	a,#0xf8
   8B46 F8                 3094 	mov	r0,a
   8B47 86 82              3095 	mov	dpl,@r0
   8B49 08                 3096 	inc	r0
   8B4A 86 83              3097 	mov	dph,@r0
   8B4C 08                 3098 	inc	r0
   8B4D 86 F0              3099 	mov	b,@r0
   8B4F E5 81              3100 	mov	a,sp
   8B51 24 F6              3101 	add	a,#0xf6
   8B53 F9                 3102 	mov	r1,a
   8B54 12 4B C9           3103 	lcall	__gptrget
   8B57 F7                 3104 	mov	@r1,a
   8B58 A3                 3105 	inc	dptr
   8B59 12 4B C9           3106 	lcall	__gptrget
   8B5C 09                 3107 	inc	r1
   8B5D F7                 3108 	mov	@r1,a
   8B5E E5 81              3109 	mov	a,sp
   8B60 24 F3              3110 	add	a,#0xf3
   8B62 F8                 3111 	mov	r0,a
   8B63 86 02              3112 	mov	ar2,@r0
   8B65 08                 3113 	inc	r0
   8B66 86 06              3114 	mov	ar6,@r0
   8B68 08                 3115 	inc	r0
   8B69 86 07              3116 	mov	ar7,@r0
   8B6B C0 07              3117 	push	ar7
   8B6D C0 06              3118 	push	ar6
   8B6F C0 05              3119 	push	ar5
   8B71 C0 04              3120 	push	ar4
   8B73 E5 81              3121 	mov	a,sp
   8B75 24 F2              3122 	add	a,#0xf2
   8B77 F8                 3123 	mov	r0,a
   8B78 E6                 3124 	mov	a,@r0
   8B79 C0 E0              3125 	push	acc
   8B7B 08                 3126 	inc	r0
   8B7C E6                 3127 	mov	a,@r0
   8B7D C0 E0              3128 	push	acc
   8B7F 74 B7              3129 	mov	a,#__str_8
   8B81 C0 E0              3130 	push	acc
   8B83 74 78              3131 	mov	a,#(__str_8 >> 8)
   8B85 C0 E0              3132 	push	acc
   8B87 74 80              3133 	mov	a,#0x80
   8B89 C0 E0              3134 	push	acc
   8B8B C0 02              3135 	push	ar2
   8B8D C0 06              3136 	push	ar6
   8B8F C0 07              3137 	push	ar7
   8B91 78 FB              3138 	mov	r0,#_sprintf
   8B93 79 44              3139 	mov	r1,#(_sprintf >> 8)
   8B95 7A 00              3140 	mov	r2,#(_sprintf >> 16)
   8B97 12 06 D5           3141 	lcall	__sdcc_banked_call
   8B9A E5 81              3142 	mov	a,sp
   8B9C 24 F6              3143 	add	a,#0xf6
   8B9E F5 81              3144 	mov	sp,a
   8BA0 D0 06              3145 	pop	ar6
   8BA2 D0 07              3146 	pop	ar7
                           3147 ;	main.c:275: ptr = ptr + strlen(ptr);
   8BA4 E5 81              3148 	mov	a,sp
   8BA6 24 F3              3149 	add	a,#0xf3
   8BA8 F8                 3150 	mov	r0,a
   8BA9 86 02              3151 	mov	ar2,@r0
   8BAB 08                 3152 	inc	r0
   8BAC 86 06              3153 	mov	ar6,@r0
   8BAE 08                 3154 	inc	r0
   8BAF 86 07              3155 	mov	ar7,@r0
   8BB1 8A 82              3156 	mov	dpl,r2
   8BB3 8E 83              3157 	mov	dph,r6
   8BB5 8F F0              3158 	mov	b,r7
   8BB7 78 1A              3159 	mov	r0,#_strlen
   8BB9 79 4A              3160 	mov	r1,#(_strlen >> 8)
   8BBB 7A 00              3161 	mov	r2,#(_strlen >> 16)
   8BBD 12 06 D5           3162 	lcall	__sdcc_banked_call
   8BC0 AE 82              3163 	mov	r6,dpl
   8BC2 AF 83              3164 	mov	r7,dph
   8BC4 E5 81              3165 	mov	a,sp
   8BC6 24 F3              3166 	add	a,#0xf3
   8BC8 F8                 3167 	mov	r0,a
   8BC9 EE                 3168 	mov	a,r6
   8BCA 26                 3169 	add	a,@r0
   8BCB F6                 3170 	mov	@r0,a
   8BCC EF                 3171 	mov	a,r7
   8BCD 08                 3172 	inc	r0
   8BCE 36                 3173 	addc	a,@r0
   8BCF F6                 3174 	mov	@r0,a
   8BD0 D0 07              3175 	pop	ar7
   8BD2 D0 06              3176 	pop	ar6
   8BD4 02 8D 3E           3177 	ljmp	00130$
   8BD7                    3178 00126$:
                           3179 ;	main.c:276: } else if (res->resource_type->type == Float) {
   8BD7 BD 01 02           3180 	cjne	r5,#0x01,00184$
   8BDA 80 03              3181 	sjmp	00185$
   8BDC                    3182 00184$:
   8BDC 02 8C 95           3183 	ljmp	00123$
   8BDF                    3184 00185$:
                           3185 ;	main.c:277: sprintf(ptr, "[%d, %f],", sub2->valueint, value.float_value);
   8BDF C0 06              3186 	push	ar6
   8BE1 C0 07              3187 	push	ar7
   8BE3 E5 81              3188 	mov	a,sp
   8BE5 24 EB              3189 	add	a,#0xEB
   8BE7 F9                 3190 	mov	r1,a
   8BE8 E5 81              3191 	mov	a,sp
   8BEA 24 FB              3192 	add	a,#0xfb
   8BEC F8                 3193 	mov	r0,a
   8BED E7                 3194 	mov	a,@r1
   8BEE F6                 3195 	mov	@r0,a
   8BEF 09                 3196 	inc	r1
   8BF0 E7                 3197 	mov	a,@r1
   8BF1 08                 3198 	inc	r0
   8BF2 F6                 3199 	mov	@r0,a
   8BF3 09                 3200 	inc	r1
   8BF4 E7                 3201 	mov	a,@r1
   8BF5 08                 3202 	inc	r0
   8BF6 F6                 3203 	mov	@r0,a
   8BF7 09                 3204 	inc	r1
   8BF8 E7                 3205 	mov	a,@r1
   8BF9 08                 3206 	inc	r0
   8BFA F6                 3207 	mov	@r0,a
   8BFB 19                 3208 	dec	r1
   8BFC 19                 3209 	dec	r1
   8BFD 19                 3210 	dec	r1
   8BFE E5 81              3211 	mov	a,sp
   8C00 24 F8              3212 	add	a,#0xf8
   8C02 F8                 3213 	mov	r0,a
   8C03 86 82              3214 	mov	dpl,@r0
   8C05 08                 3215 	inc	r0
   8C06 86 83              3216 	mov	dph,@r0
   8C08 08                 3217 	inc	r0
   8C09 86 F0              3218 	mov	b,@r0
   8C0B 12 4B C9           3219 	lcall	__gptrget
   8C0E FD                 3220 	mov	r5,a
   8C0F A3                 3221 	inc	dptr
   8C10 12 4B C9           3222 	lcall	__gptrget
   8C13 FA                 3223 	mov	r2,a
   8C14 E5 81              3224 	mov	a,sp
   8C16 24 F3              3225 	add	a,#0xf3
   8C18 F8                 3226 	mov	r0,a
   8C19 86 03              3227 	mov	ar3,@r0
   8C1B 08                 3228 	inc	r0
   8C1C 86 04              3229 	mov	ar4,@r0
   8C1E 08                 3230 	inc	r0
   8C1F 86 07              3231 	mov	ar7,@r0
   8C21 C0 07              3232 	push	ar7
   8C23 C0 06              3233 	push	ar6
   8C25 E5 81              3234 	mov	a,sp
   8C27 24 F9              3235 	add	a,#0xf9
   8C29 F8                 3236 	mov	r0,a
   8C2A E6                 3237 	mov	a,@r0
   8C2B C0 E0              3238 	push	acc
   8C2D 08                 3239 	inc	r0
   8C2E E6                 3240 	mov	a,@r0
   8C2F C0 E0              3241 	push	acc
   8C31 08                 3242 	inc	r0
   8C32 E6                 3243 	mov	a,@r0
   8C33 C0 E0              3244 	push	acc
   8C35 08                 3245 	inc	r0
   8C36 E6                 3246 	mov	a,@r0
   8C37 C0 E0              3247 	push	acc
   8C39 C0 05              3248 	push	ar5
   8C3B C0 02              3249 	push	ar2
   8C3D 74 C1              3250 	mov	a,#__str_9
   8C3F C0 E0              3251 	push	acc
   8C41 74 78              3252 	mov	a,#(__str_9 >> 8)
   8C43 C0 E0              3253 	push	acc
   8C45 74 80              3254 	mov	a,#0x80
   8C47 C0 E0              3255 	push	acc
   8C49 C0 03              3256 	push	ar3
   8C4B C0 04              3257 	push	ar4
   8C4D C0 07              3258 	push	ar7
   8C4F 78 FB              3259 	mov	r0,#_sprintf
   8C51 79 44              3260 	mov	r1,#(_sprintf >> 8)
   8C53 7A 00              3261 	mov	r2,#(_sprintf >> 16)
   8C55 12 06 D5           3262 	lcall	__sdcc_banked_call
   8C58 E5 81              3263 	mov	a,sp
   8C5A 24 F4              3264 	add	a,#0xf4
   8C5C F5 81              3265 	mov	sp,a
   8C5E D0 06              3266 	pop	ar6
   8C60 D0 07              3267 	pop	ar7
                           3268 ;	main.c:278: ptr = ptr + strlen(ptr);
   8C62 E5 81              3269 	mov	a,sp
   8C64 24 F3              3270 	add	a,#0xf3
   8C66 F8                 3271 	mov	r0,a
   8C67 86 02              3272 	mov	ar2,@r0
   8C69 08                 3273 	inc	r0
   8C6A 86 03              3274 	mov	ar3,@r0
   8C6C 08                 3275 	inc	r0
   8C6D 86 04              3276 	mov	ar4,@r0
   8C6F 8A 82              3277 	mov	dpl,r2
   8C71 8B 83              3278 	mov	dph,r3
   8C73 8C F0              3279 	mov	b,r4
   8C75 78 1A              3280 	mov	r0,#_strlen
   8C77 79 4A              3281 	mov	r1,#(_strlen >> 8)
   8C79 7A 00              3282 	mov	r2,#(_strlen >> 16)
   8C7B 12 06 D5           3283 	lcall	__sdcc_banked_call
   8C7E AE 82              3284 	mov	r6,dpl
   8C80 AF 83              3285 	mov	r7,dph
   8C82 E5 81              3286 	mov	a,sp
   8C84 24 F3              3287 	add	a,#0xf3
   8C86 F8                 3288 	mov	r0,a
   8C87 EE                 3289 	mov	a,r6
   8C88 26                 3290 	add	a,@r0
   8C89 F6                 3291 	mov	@r0,a
   8C8A EF                 3292 	mov	a,r7
   8C8B 08                 3293 	inc	r0
   8C8C 36                 3294 	addc	a,@r0
   8C8D F6                 3295 	mov	@r0,a
   8C8E D0 07              3296 	pop	ar7
   8C90 D0 06              3297 	pop	ar6
   8C92 02 8D 3E           3298 	ljmp	00130$
   8C95                    3299 00123$:
                           3300 ;	main.c:279: } else if (res->resource_type->type == String) {
   8C95 BD 02 02           3301 	cjne	r5,#0x02,00186$
   8C98 80 03              3302 	sjmp	00187$
   8C9A                    3303 00186$:
   8C9A 02 8D 3E           3304 	ljmp	00130$
   8C9D                    3305 00187$:
                           3306 ;	main.c:280: sprintf(ptr, "[%d, %s],", sub2->valueint, value.string_value);
   8C9D C0 06              3307 	push	ar6
   8C9F C0 07              3308 	push	ar7
   8CA1 E5 81              3309 	mov	a,sp
   8CA3 24 EB              3310 	add	a,#0xEB
   8CA5 FD                 3311 	mov	r5,a
   8CA6 7C 00              3312 	mov	r4,#0x00
   8CA8 7B 40              3313 	mov	r3,#0x40
   8CAA E5 81              3314 	mov	a,sp
   8CAC 24 F8              3315 	add	a,#0xf8
   8CAE F8                 3316 	mov	r0,a
   8CAF 86 82              3317 	mov	dpl,@r0
   8CB1 08                 3318 	inc	r0
   8CB2 86 83              3319 	mov	dph,@r0
   8CB4 08                 3320 	inc	r0
   8CB5 86 F0              3321 	mov	b,@r0
   8CB7 E5 81              3322 	mov	a,sp
   8CB9 24 FB              3323 	add	a,#0xfb
   8CBB F9                 3324 	mov	r1,a
   8CBC 12 4B C9           3325 	lcall	__gptrget
   8CBF F7                 3326 	mov	@r1,a
   8CC0 A3                 3327 	inc	dptr
   8CC1 12 4B C9           3328 	lcall	__gptrget
   8CC4 09                 3329 	inc	r1
   8CC5 F7                 3330 	mov	@r1,a
   8CC6 E5 81              3331 	mov	a,sp
   8CC8 24 F3              3332 	add	a,#0xf3
   8CCA F8                 3333 	mov	r0,a
   8CCB 86 02              3334 	mov	ar2,@r0
   8CCD 08                 3335 	inc	r0
   8CCE 86 06              3336 	mov	ar6,@r0
   8CD0 08                 3337 	inc	r0
   8CD1 86 07              3338 	mov	ar7,@r0
   8CD3 C0 07              3339 	push	ar7
   8CD5 C0 06              3340 	push	ar6
   8CD7 C0 05              3341 	push	ar5
   8CD9 C0 04              3342 	push	ar4
   8CDB C0 03              3343 	push	ar3
   8CDD E5 81              3344 	mov	a,sp
   8CDF 24 F6              3345 	add	a,#0xf6
   8CE1 F8                 3346 	mov	r0,a
   8CE2 E6                 3347 	mov	a,@r0
   8CE3 C0 E0              3348 	push	acc
   8CE5 08                 3349 	inc	r0
   8CE6 E6                 3350 	mov	a,@r0
   8CE7 C0 E0              3351 	push	acc
   8CE9 74 CB              3352 	mov	a,#__str_10
   8CEB C0 E0              3353 	push	acc
   8CED 74 78              3354 	mov	a,#(__str_10 >> 8)
   8CEF C0 E0              3355 	push	acc
   8CF1 74 80              3356 	mov	a,#0x80
   8CF3 C0 E0              3357 	push	acc
   8CF5 C0 02              3358 	push	ar2
   8CF7 C0 06              3359 	push	ar6
   8CF9 C0 07              3360 	push	ar7
   8CFB 78 FB              3361 	mov	r0,#_sprintf
   8CFD 79 44              3362 	mov	r1,#(_sprintf >> 8)
   8CFF 7A 00              3363 	mov	r2,#(_sprintf >> 16)
   8D01 12 06 D5           3364 	lcall	__sdcc_banked_call
   8D04 E5 81              3365 	mov	a,sp
   8D06 24 F5              3366 	add	a,#0xf5
   8D08 F5 81              3367 	mov	sp,a
   8D0A D0 06              3368 	pop	ar6
   8D0C D0 07              3369 	pop	ar7
                           3370 ;	main.c:281: ptr = ptr + strlen(ptr);
   8D0E E5 81              3371 	mov	a,sp
   8D10 24 F3              3372 	add	a,#0xf3
   8D12 F8                 3373 	mov	r0,a
   8D13 86 02              3374 	mov	ar2,@r0
   8D15 08                 3375 	inc	r0
   8D16 86 03              3376 	mov	ar3,@r0
   8D18 08                 3377 	inc	r0
   8D19 86 04              3378 	mov	ar4,@r0
   8D1B 8A 82              3379 	mov	dpl,r2
   8D1D 8B 83              3380 	mov	dph,r3
   8D1F 8C F0              3381 	mov	b,r4
   8D21 78 1A              3382 	mov	r0,#_strlen
   8D23 79 4A              3383 	mov	r1,#(_strlen >> 8)
   8D25 7A 00              3384 	mov	r2,#(_strlen >> 16)
   8D27 12 06 D5           3385 	lcall	__sdcc_banked_call
   8D2A AE 82              3386 	mov	r6,dpl
   8D2C AF 83              3387 	mov	r7,dph
   8D2E E5 81              3388 	mov	a,sp
   8D30 24 F3              3389 	add	a,#0xf3
   8D32 F8                 3390 	mov	r0,a
   8D33 EE                 3391 	mov	a,r6
   8D34 26                 3392 	add	a,@r0
   8D35 F6                 3393 	mov	@r0,a
   8D36 EF                 3394 	mov	a,r7
   8D37 08                 3395 	inc	r0
   8D38 36                 3396 	addc	a,@r0
   8D39 F6                 3397 	mov	@r0,a
                           3398 ;	main.c:296: return;
   8D3A D0 07              3399 	pop	ar7
   8D3C D0 06              3400 	pop	ar6
                           3401 ;	main.c:283: continue;
   8D3E                    3402 00130$:
                           3403 ;	main.c:258: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
   8D3E 0E                 3404 	inc	r6
   8D3F BE 00 01           3405 	cjne	r6,#0x00,00188$
   8D42 0F                 3406 	inc	r7
   8D43                    3407 00188$:
   8D43 02 89 F1           3408 	ljmp	00128$
   8D46                    3409 00131$:
                           3410 ;	main.c:288: sprintf((ptr - 1), "]],");
   8D46 E5 81              3411 	mov	a,sp
   8D48 24 F5              3412 	add	a,#0xf5
   8D4A F8                 3413 	mov	r0,a
   8D4B E6                 3414 	mov	a,@r0
   8D4C 24 FF              3415 	add	a,#0xFF
   8D4E FD                 3416 	mov	r5,a
   8D4F 08                 3417 	inc	r0
   8D50 E6                 3418 	mov	a,@r0
   8D51 34 FF              3419 	addc	a,#0xFF
   8D53 FE                 3420 	mov	r6,a
   8D54 08                 3421 	inc	r0
   8D55 86 07              3422 	mov	ar7,@r0
   8D57 74 D5              3423 	mov	a,#__str_11
   8D59 C0 E0              3424 	push	acc
   8D5B 74 78              3425 	mov	a,#(__str_11 >> 8)
   8D5D C0 E0              3426 	push	acc
   8D5F 74 80              3427 	mov	a,#0x80
   8D61 C0 E0              3428 	push	acc
   8D63 C0 05              3429 	push	ar5
   8D65 C0 06              3430 	push	ar6
   8D67 C0 07              3431 	push	ar7
   8D69 78 FB              3432 	mov	r0,#_sprintf
   8D6B 79 44              3433 	mov	r1,#(_sprintf >> 8)
   8D6D 7A 00              3434 	mov	r2,#(_sprintf >> 16)
   8D6F 12 06 D5           3435 	lcall	__sdcc_banked_call
   8D72 E5 81              3436 	mov	a,sp
   8D74 24 FA              3437 	add	a,#0xfa
                           3438 ;	main.c:289: ptr += 2;
   8D76 F5 81              3439 	mov	sp,a
   8D78 24 F5              3440 	add	a,#0xf5
   8D7A F8                 3441 	mov	r0,a
   8D7B 74 02              3442 	mov	a,#0x02
   8D7D 26                 3443 	add	a,@r0
   8D7E F6                 3444 	mov	@r0,a
   8D7F E4                 3445 	clr	a
   8D80 08                 3446 	inc	r0
   8D81 36                 3447 	addc	a,@r0
   8D82 F6                 3448 	mov	@r0,a
   8D83                    3449 00134$:
                           3450 ;	main.c:232: for (;i < cJSON_GetArraySize(root); i++) {
   8D83 E5 81              3451 	mov	a,sp
   8D85 24 E8              3452 	add	a,#0xe8
   8D87 F8                 3453 	mov	r0,a
   8D88 06                 3454 	inc	@r0
   8D89 B6 00 02           3455 	cjne	@r0,#0x00,00189$
   8D8C 08                 3456 	inc	r0
   8D8D 06                 3457 	inc	@r0
   8D8E                    3458 00189$:
   8D8E 02 88 2A           3459 	ljmp	00132$
   8D91                    3460 00135$:
                           3461 ;	main.c:292: sprintf((ptr - 1), "]");//discard last ','
   8D91 E5 81              3462 	mov	a,sp
   8D93 24 F5              3463 	add	a,#0xf5
   8D95 F8                 3464 	mov	r0,a
   8D96 E6                 3465 	mov	a,@r0
   8D97 24 FF              3466 	add	a,#0xFF
   8D99 FD                 3467 	mov	r5,a
   8D9A 08                 3468 	inc	r0
   8D9B E6                 3469 	mov	a,@r0
   8D9C 34 FF              3470 	addc	a,#0xFF
   8D9E FE                 3471 	mov	r6,a
   8D9F 08                 3472 	inc	r0
   8DA0 86 07              3473 	mov	ar7,@r0
   8DA2 74 D9              3474 	mov	a,#__str_12
   8DA4 C0 E0              3475 	push	acc
   8DA6 74 78              3476 	mov	a,#(__str_12 >> 8)
   8DA8 C0 E0              3477 	push	acc
   8DAA 74 80              3478 	mov	a,#0x80
   8DAC C0 E0              3479 	push	acc
   8DAE C0 05              3480 	push	ar5
   8DB0 C0 06              3481 	push	ar6
   8DB2 C0 07              3482 	push	ar7
   8DB4 78 FB              3483 	mov	r0,#_sprintf
   8DB6 79 44              3484 	mov	r1,#(_sprintf >> 8)
   8DB8 7A 00              3485 	mov	r2,#(_sprintf >> 16)
   8DBA 12 06 D5           3486 	lcall	__sdcc_banked_call
   8DBD E5 81              3487 	mov	a,sp
   8DBF 24 FA              3488 	add	a,#0xfa
   8DC1 F5 81              3489 	mov	sp,a
                           3490 ;	main.c:294: send_msg(output_buf, ptr - output_buf, &UIP_IP_BUF->srcipaddr);
   8DC3 7E FD              3491 	mov	r6,#_uip_aligned_buf
   8DC5 7F 06              3492 	mov	r7,#(_uip_aligned_buf >> 8)
   8DC7 74 08              3493 	mov	a,#0x08
   8DC9 2E                 3494 	add	a,r6
   8DCA FE                 3495 	mov	r6,a
   8DCB E4                 3496 	clr	a
   8DCC 3F                 3497 	addc	a,r7
   8DCD FF                 3498 	mov	r7,a
   8DCE 7D 00              3499 	mov	r5,#0x00
   8DD0 E5 81              3500 	mov	a,sp
   8DD2 24 F5              3501 	add	a,#0xf5
   8DD4 F8                 3502 	mov	r0,a
   8DD5 E6                 3503 	mov	a,@r0
   8DD6 C3                 3504 	clr	c
   8DD7 94 04              3505 	subb	a,#_output_buf
   8DD9 FB                 3506 	mov	r3,a
   8DDA 08                 3507 	inc	r0
   8DDB E6                 3508 	mov	a,@r0
   8DDC 94 00              3509 	subb	a,#(_output_buf >> 8)
   8DDE FC                 3510 	mov	r4,a
   8DDF C0 06              3511 	push	ar6
   8DE1 C0 07              3512 	push	ar7
   8DE3 C0 05              3513 	push	ar5
   8DE5 C0 03              3514 	push	ar3
   8DE7 C0 04              3515 	push	ar4
   8DE9 90 00 04           3516 	mov	dptr,#_output_buf
   8DEC 75 F0 00           3517 	mov	b,#0x00
   8DEF 78 AA              3518 	mov	r0,#_send_msg
   8DF1 79 80              3519 	mov	r1,#(_send_msg >> 8)
   8DF3 7A 02              3520 	mov	r2,#(_send_msg >> 16)
   8DF5 12 06 D5           3521 	lcall	__sdcc_banked_call
   8DF8 E5 81              3522 	mov	a,sp
   8DFA 24 FB              3523 	add	a,#0xfb
   8DFC F5 81              3524 	mov	sp,a
                           3525 ;	main.c:296: return;
   8DFE                    3526 00136$:
   8DFE E5 81              3527 	mov	a,sp
   8E00 24 DE              3528 	add	a,#0xDE
   8E02 F5 81              3529 	mov	sp,a
   8E04 02 06 E7           3530 	ljmp	__sdcc_banked_ret
                           3531 ;------------------------------------------------------------
                           3532 ;Allocation info for local variables in function 'reload_request_handler'
                           3533 ;------------------------------------------------------------
                           3534 ;	main.c:325: reload_request_handler()
                           3535 ;	-----------------------------------------
                           3536 ;	 function reload_request_handler
                           3537 ;	-----------------------------------------
   8E07                    3538 _reload_request_handler:
                           3539 ;	main.c:328: }
   8E07 02 06 E7           3540 	ljmp	__sdcc_banked_ret
                           3541 ;------------------------------------------------------------
                           3542 ;Allocation info for local variables in function 'subscribe_request_handler'
                           3543 ;------------------------------------------------------------
                           3544 ;parameters                Allocated to stack - sp -30
                           3545 ;device_id                 Allocated to stack - sp -24
                           3546 ;root                      Allocated to stack - sp -21
                           3547 ;sub                       Allocated to registers r3 r4 r5 
                           3548 ;sub1                      Allocated to registers r3 r4 r5 
                           3549 ;sub3                      Allocated to registers r7 r6 r2 
                           3550 ;sub4                      Allocated to stack - sp -18
                           3551 ;i                         Allocated to stack - sp -15
                           3552 ;j                         Allocated to registers 
                           3553 ;obj                       Allocated to stack - sp -13
                           3554 ;res                       Allocated to stack - sp -10
                           3555 ;retcode                   Allocated to registers 
                           3556 ;subscriber                Allocated to stack - sp -7
                           3557 ;cond_value                Allocated to stack - sp -4
                           3558 ;op                        Allocated to stack - sp +0
                           3559 ;sloc0                     Allocated to stack - sp +13
                           3560 ;------------------------------------------------------------
                           3561 ;	main.c:332: subscribe_request_handler(uint8_t *device_id, uint8_t *parameters)
                           3562 ;	-----------------------------------------
                           3563 ;	 function subscribe_request_handler
                           3564 ;	-----------------------------------------
   8E0A                    3565 _subscribe_request_handler:
   8E0A C0 82              3566 	push	dpl
   8E0C C0 83              3567 	push	dph
   8E0E C0 F0              3568 	push	b
   8E10 E5 81              3569 	mov	a,sp
   8E12 24 16              3570 	add	a,#0x16
                           3571 ;	main.c:343: if (!parameters) {
   8E14 F5 81              3572 	mov	sp,a
   8E16 24 E2              3573 	add	a,#0xe2
   8E18 F8                 3574 	mov	r0,a
   8E19 E6                 3575 	mov	a,@r0
   8E1A 08                 3576 	inc	r0
   8E1B 46                 3577 	orl	a,@r0
   8E1C 70 03              3578 	jnz	00102$
                           3579 ;	main.c:344: return;
   8E1E 02 93 59           3580 	ljmp	00141$
   8E21                    3581 00102$:
                           3582 ;	main.c:347: root = cJSON_Parse(parameters);
   8E21 E5 81              3583 	mov	a,sp
   8E23 24 E2              3584 	add	a,#0xe2
   8E25 F8                 3585 	mov	r0,a
   8E26 86 02              3586 	mov	ar2,@r0
   8E28 08                 3587 	inc	r0
   8E29 86 03              3588 	mov	ar3,@r0
   8E2B 08                 3589 	inc	r0
   8E2C 86 04              3590 	mov	ar4,@r0
   8E2E 8A 82              3591 	mov	dpl,r2
   8E30 8B 83              3592 	mov	dph,r3
   8E32 8C F0              3593 	mov	b,r4
   8E34 78 0B              3594 	mov	r0,#_cJSON_Parse
   8E36 79 B9              3595 	mov	r1,#(_cJSON_Parse >> 8)
   8E38 7A 02              3596 	mov	r2,#(_cJSON_Parse >> 16)
   8E3A 12 06 D5           3597 	lcall	__sdcc_banked_call
   8E3D AA 82              3598 	mov	r2,dpl
   8E3F AB 83              3599 	mov	r3,dph
   8E41 AC F0              3600 	mov	r4,b
   8E43 E5 81              3601 	mov	a,sp
   8E45 24 EB              3602 	add	a,#0xeb
   8E47 F8                 3603 	mov	r0,a
   8E48 A6 02              3604 	mov	@r0,ar2
   8E4A 08                 3605 	inc	r0
   8E4B A6 03              3606 	mov	@r0,ar3
   8E4D 08                 3607 	inc	r0
   8E4E A6 04              3608 	mov	@r0,ar4
                           3609 ;	main.c:349: if (!root) {
   8E50 E5 81              3610 	mov	a,sp
   8E52 24 EB              3611 	add	a,#0xeb
   8E54 F8                 3612 	mov	r0,a
   8E55 E6                 3613 	mov	a,@r0
   8E56 08                 3614 	inc	r0
   8E57 46                 3615 	orl	a,@r0
   8E58 70 03              3616 	jnz	00160$
                           3617 ;	main.c:350: return;
   8E5A 02 93 59           3618 	ljmp	00141$
   8E5D                    3619 00160$:
   8E5D E5 81              3620 	mov	a,sp
   8E5F 24 F1              3621 	add	a,#0xf1
   8E61 F8                 3622 	mov	r0,a
   8E62 E4                 3623 	clr	a
   8E63 F6                 3624 	mov	@r0,a
   8E64 08                 3625 	inc	r0
   8E65 F6                 3626 	mov	@r0,a
   8E66                    3627 00137$:
                           3628 ;	main.c:353: for (;i < cJSON_GetArraySize(root); i++) {
   8E66 E5 81              3629 	mov	a,sp
   8E68 24 EB              3630 	add	a,#0xeb
   8E6A F8                 3631 	mov	r0,a
   8E6B 86 82              3632 	mov	dpl,@r0
   8E6D 08                 3633 	inc	r0
   8E6E 86 83              3634 	mov	dph,@r0
   8E70 08                 3635 	inc	r0
   8E71 86 F0              3636 	mov	b,@r0
   8E73 78 C6              3637 	mov	r0,#_cJSON_GetArraySize
   8E75 79 D4              3638 	mov	r1,#(_cJSON_GetArraySize >> 8)
   8E77 7A 02              3639 	mov	r2,#(_cJSON_GetArraySize >> 16)
   8E79 12 06 D5           3640 	lcall	__sdcc_banked_call
   8E7C AC 82              3641 	mov	r4,dpl
   8E7E AD 83              3642 	mov	r5,dph
   8E80 E5 81              3643 	mov	a,sp
   8E82 24 F1              3644 	add	a,#0xf1
   8E84 F8                 3645 	mov	r0,a
   8E85 C3                 3646 	clr	c
   8E86 E6                 3647 	mov	a,@r0
   8E87 9C                 3648 	subb	a,r4
   8E88 08                 3649 	inc	r0
   8E89 E6                 3650 	mov	a,@r0
   8E8A 9D                 3651 	subb	a,r5
   8E8B 40 03              3652 	jc	00181$
   8E8D 02 92 E3           3653 	ljmp	00140$
   8E90                    3654 00181$:
                           3655 ;	main.c:355: sub = cJSON_GetArrayItem(root, i);
   8E90 E5 81              3656 	mov	a,sp
   8E92 24 F1              3657 	add	a,#0xf1
   8E94 F8                 3658 	mov	r0,a
   8E95 86 04              3659 	mov	ar4,@r0
   8E97 08                 3660 	inc	r0
   8E98 86 05              3661 	mov	ar5,@r0
   8E9A C0 04              3662 	push	ar4
   8E9C C0 05              3663 	push	ar5
   8E9E E5 81              3664 	mov	a,sp
   8EA0 24 E9              3665 	add	a,#0xe9
   8EA2 F8                 3666 	mov	r0,a
   8EA3 86 82              3667 	mov	dpl,@r0
   8EA5 08                 3668 	inc	r0
   8EA6 86 83              3669 	mov	dph,@r0
   8EA8 08                 3670 	inc	r0
   8EA9 86 F0              3671 	mov	b,@r0
   8EAB 78 11              3672 	mov	r0,#_cJSON_GetArrayItem
   8EAD 79 D5              3673 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8EAF 7A 02              3674 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8EB1 12 06 D5           3675 	lcall	__sdcc_banked_call
   8EB4 AB 82              3676 	mov	r3,dpl
   8EB6 AC 83              3677 	mov	r4,dph
   8EB8 AD F0              3678 	mov	r5,b
   8EBA 15 81              3679 	dec	sp
   8EBC 15 81              3680 	dec	sp
                           3681 ;	main.c:356: if (!sub) {
   8EBE EB                 3682 	mov	a,r3
   8EBF 4C                 3683 	orl	a,r4
   8EC0 70 03              3684 	jnz	00106$
                           3685 ;	main.c:357: return;
   8EC2 02 93 59           3686 	ljmp	00141$
   8EC5                    3687 00106$:
                           3688 ;	main.c:360: sub1 = cJSON_GetArrayItem(sub, 0);
   8EC5 E4                 3689 	clr	a
   8EC6 C0 E0              3690 	push	acc
   8EC8 C0 E0              3691 	push	acc
   8ECA 8B 82              3692 	mov	dpl,r3
   8ECC 8C 83              3693 	mov	dph,r4
   8ECE 8D F0              3694 	mov	b,r5
   8ED0 78 11              3695 	mov	r0,#_cJSON_GetArrayItem
   8ED2 79 D5              3696 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8ED4 7A 02              3697 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8ED6 12 06 D5           3698 	lcall	__sdcc_banked_call
   8ED9 AB 82              3699 	mov	r3,dpl
   8EDB AC 83              3700 	mov	r4,dph
   8EDD AD F0              3701 	mov	r5,b
   8EDF 15 81              3702 	dec	sp
   8EE1 15 81              3703 	dec	sp
                           3704 ;	main.c:361: if (!sub1) {
   8EE3 EB                 3705 	mov	a,r3
   8EE4 4C                 3706 	orl	a,r4
   8EE5 70 03              3707 	jnz	00108$
                           3708 ;	main.c:362: return;
   8EE7 02 93 59           3709 	ljmp	00141$
   8EEA                    3710 00108$:
                           3711 ;	main.c:365: obj = device_find_object(sub1->valuestring);
   8EEA 74 0B              3712 	mov	a,#0x0B
   8EEC 2B                 3713 	add	a,r3
   8EED FA                 3714 	mov	r2,a
   8EEE E4                 3715 	clr	a
   8EEF 3C                 3716 	addc	a,r4
   8EF0 FE                 3717 	mov	r6,a
   8EF1 8D 07              3718 	mov	ar7,r5
   8EF3 8A 82              3719 	mov	dpl,r2
   8EF5 8E 83              3720 	mov	dph,r6
   8EF7 8F F0              3721 	mov	b,r7
   8EF9 12 4B C9           3722 	lcall	__gptrget
   8EFC FA                 3723 	mov	r2,a
   8EFD A3                 3724 	inc	dptr
   8EFE 12 4B C9           3725 	lcall	__gptrget
   8F01 FE                 3726 	mov	r6,a
   8F02 A3                 3727 	inc	dptr
   8F03 12 4B C9           3728 	lcall	__gptrget
   8F06 FF                 3729 	mov	r7,a
   8F07 8A 82              3730 	mov	dpl,r2
   8F09 8E 83              3731 	mov	dph,r6
   8F0B 8F F0              3732 	mov	b,r7
   8F0D C0 05              3733 	push	ar5
   8F0F C0 04              3734 	push	ar4
   8F11 C0 03              3735 	push	ar3
   8F13 78 B6              3736 	mov	r0,#_device_find_object
   8F15 79 A0              3737 	mov	r1,#(_device_find_object >> 8)
   8F17 7A 05              3738 	mov	r2,#(_device_find_object >> 16)
   8F19 12 06 D5           3739 	lcall	__sdcc_banked_call
   8F1C AA 82              3740 	mov	r2,dpl
   8F1E AE 83              3741 	mov	r6,dph
   8F20 AF F0              3742 	mov	r7,b
   8F22 D0 03              3743 	pop	ar3
   8F24 D0 04              3744 	pop	ar4
   8F26 D0 05              3745 	pop	ar5
   8F28 E5 81              3746 	mov	a,sp
   8F2A 24 F3              3747 	add	a,#0xf3
   8F2C F8                 3748 	mov	r0,a
   8F2D A6 02              3749 	mov	@r0,ar2
   8F2F 08                 3750 	inc	r0
   8F30 A6 06              3751 	mov	@r0,ar6
   8F32 08                 3752 	inc	r0
   8F33 A6 07              3753 	mov	@r0,ar7
                           3754 ;	main.c:366: if(!obj) {
   8F35 E5 81              3755 	mov	a,sp
   8F37 24 F3              3756 	add	a,#0xf3
   8F39 F8                 3757 	mov	r0,a
   8F3A E6                 3758 	mov	a,@r0
   8F3B 08                 3759 	inc	r0
   8F3C 46                 3760 	orl	a,@r0
   8F3D 70 03              3761 	jnz	00184$
   8F3F 02 92 D5           3762 	ljmp	00139$
   8F42                    3763 00184$:
                           3764 ;	main.c:370: res = object_instance_find_resource(obj, 5700);//sensor value 
   8F42 C0 05              3765 	push	ar5
   8F44 C0 04              3766 	push	ar4
   8F46 C0 03              3767 	push	ar3
   8F48 74 44              3768 	mov	a,#0x44
   8F4A C0 E0              3769 	push	acc
   8F4C 74 16              3770 	mov	a,#0x16
   8F4E C0 E0              3771 	push	acc
   8F50 E5 81              3772 	mov	a,sp
   8F52 24 EE              3773 	add	a,#0xee
   8F54 F8                 3774 	mov	r0,a
   8F55 86 82              3775 	mov	dpl,@r0
   8F57 08                 3776 	inc	r0
   8F58 86 83              3777 	mov	dph,@r0
   8F5A 08                 3778 	inc	r0
   8F5B 86 F0              3779 	mov	b,@r0
   8F5D 78 95              3780 	mov	r0,#_object_instance_find_resource
   8F5F 79 95              3781 	mov	r1,#(_object_instance_find_resource >> 8)
   8F61 7A 05              3782 	mov	r2,#(_object_instance_find_resource >> 16)
   8F63 12 06 D5           3783 	lcall	__sdcc_banked_call
   8F66 AF 82              3784 	mov	r7,dpl
   8F68 AE 83              3785 	mov	r6,dph
   8F6A AA F0              3786 	mov	r2,b
   8F6C 15 81              3787 	dec	sp
   8F6E 15 81              3788 	dec	sp
   8F70 D0 03              3789 	pop	ar3
   8F72 D0 04              3790 	pop	ar4
   8F74 D0 05              3791 	pop	ar5
   8F76 E5 81              3792 	mov	a,sp
   8F78 24 F6              3793 	add	a,#0xf6
   8F7A F8                 3794 	mov	r0,a
   8F7B A6 07              3795 	mov	@r0,ar7
   8F7D 08                 3796 	inc	r0
   8F7E A6 06              3797 	mov	@r0,ar6
   8F80 08                 3798 	inc	r0
   8F81 A6 02              3799 	mov	@r0,ar2
                           3800 ;	main.c:371: if (!res) {
   8F83 E5 81              3801 	mov	a,sp
   8F85 24 F6              3802 	add	a,#0xf6
   8F87 F8                 3803 	mov	r0,a
   8F88 E6                 3804 	mov	a,@r0
   8F89 08                 3805 	inc	r0
   8F8A 46                 3806 	orl	a,@r0
   8F8B 70 03              3807 	jnz	00185$
   8F8D 02 92 D5           3808 	ljmp	00139$
   8F90                    3809 00185$:
                           3810 ;	main.c:375: sub3 = cJSON_GetArrayItem(sub1, 1);
   8F90 74 01              3811 	mov	a,#0x01
   8F92 C0 E0              3812 	push	acc
   8F94 E4                 3813 	clr	a
   8F95 C0 E0              3814 	push	acc
   8F97 8B 82              3815 	mov	dpl,r3
   8F99 8C 83              3816 	mov	dph,r4
   8F9B 8D F0              3817 	mov	b,r5
   8F9D 78 11              3818 	mov	r0,#_cJSON_GetArrayItem
   8F9F 79 D5              3819 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8FA1 7A 02              3820 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8FA3 12 06 D5           3821 	lcall	__sdcc_banked_call
   8FA6 AB 82              3822 	mov	r3,dpl
   8FA8 AC 83              3823 	mov	r4,dph
   8FAA AD F0              3824 	mov	r5,b
   8FAC 15 81              3825 	dec	sp
   8FAE 15 81              3826 	dec	sp
   8FB0 8B 07              3827 	mov	ar7,r3
   8FB2 8C 06              3828 	mov	ar6,r4
   8FB4 8D 02              3829 	mov	ar2,r5
                           3830 ;	main.c:376: if (!sub3) {
   8FB6 EF                 3831 	mov	a,r7
   8FB7 4E                 3832 	orl	a,r6
   8FB8 70 03              3833 	jnz	00186$
   8FBA 02 92 D5           3834 	ljmp	00139$
   8FBD                    3835 00186$:
                           3836 ;	main.c:381: sub4 = cJSON_GetArrayItem(sub3, 0);
   8FBD C0 07              3837 	push	ar7
   8FBF C0 06              3838 	push	ar6
   8FC1 C0 02              3839 	push	ar2
   8FC3 E4                 3840 	clr	a
   8FC4 C0 E0              3841 	push	acc
   8FC6 C0 E0              3842 	push	acc
   8FC8 8F 82              3843 	mov	dpl,r7
   8FCA 8E 83              3844 	mov	dph,r6
   8FCC 8A F0              3845 	mov	b,r2
   8FCE 78 11              3846 	mov	r0,#_cJSON_GetArrayItem
   8FD0 79 D5              3847 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   8FD2 7A 02              3848 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   8FD4 12 06 D5           3849 	lcall	__sdcc_banked_call
   8FD7 AD 82              3850 	mov	r5,dpl
   8FD9 AC 83              3851 	mov	r4,dph
   8FDB AB F0              3852 	mov	r3,b
   8FDD 15 81              3853 	dec	sp
   8FDF 15 81              3854 	dec	sp
   8FE1 D0 02              3855 	pop	ar2
   8FE3 D0 06              3856 	pop	ar6
   8FE5 D0 07              3857 	pop	ar7
   8FE7 E5 81              3858 	mov	a,sp
   8FE9 24 EE              3859 	add	a,#0xee
   8FEB F8                 3860 	mov	r0,a
   8FEC A6 05              3861 	mov	@r0,ar5
   8FEE 08                 3862 	inc	r0
   8FEF A6 04              3863 	mov	@r0,ar4
   8FF1 08                 3864 	inc	r0
   8FF2 A6 03              3865 	mov	@r0,ar3
                           3866 ;	main.c:382: if (sub4) {
   8FF4 E5 81              3867 	mov	a,sp
   8FF6 24 EE              3868 	add	a,#0xee
   8FF8 F8                 3869 	mov	r0,a
   8FF9 E6                 3870 	mov	a,@r0
   8FFA 08                 3871 	inc	r0
   8FFB 46                 3872 	orl	a,@r0
   8FFC 70 03              3873 	jnz	00187$
   8FFE 02 92 D5           3874 	ljmp	00139$
   9001                    3875 00187$:
                           3876 ;	main.c:383: if (sub4->valueint == CONDITION_TYPE_VALUE_COMPARE) {
   9001 C0 07              3877 	push	ar7
   9003 C0 06              3878 	push	ar6
   9005 C0 02              3879 	push	ar2
   9007 E5 81              3880 	mov	a,sp
   9009 24 EB              3881 	add	a,#0xeb
   900B F8                 3882 	mov	r0,a
   900C 74 0E              3883 	mov	a,#0x0E
   900E 26                 3884 	add	a,@r0
   900F FB                 3885 	mov	r3,a
   9010 E4                 3886 	clr	a
   9011 08                 3887 	inc	r0
   9012 36                 3888 	addc	a,@r0
   9013 FC                 3889 	mov	r4,a
   9014 08                 3890 	inc	r0
   9015 86 05              3891 	mov	ar5,@r0
   9017 8B 82              3892 	mov	dpl,r3
   9019 8C 83              3893 	mov	dph,r4
   901B 8D F0              3894 	mov	b,r5
   901D 12 4B C9           3895 	lcall	__gptrget
   9020 FD                 3896 	mov	r5,a
   9021 A3                 3897 	inc	dptr
   9022 12 4B C9           3898 	lcall	__gptrget
   9025 FC                 3899 	mov	r4,a
   9026 BD 01 05           3900 	cjne	r5,#0x01,00188$
   9029 BC 00 02           3901 	cjne	r4,#0x00,00188$
   902C 80 09              3902 	sjmp	00189$
   902E                    3903 00188$:
   902E D0 02              3904 	pop	ar2
   9030 D0 06              3905 	pop	ar6
   9032 D0 07              3906 	pop	ar7
   9034 02 92 3F           3907 	ljmp	00133$
   9037                    3908 00189$:
   9037 D0 02              3909 	pop	ar2
   9039 D0 06              3910 	pop	ar6
   903B D0 07              3911 	pop	ar7
                           3912 ;	main.c:384: sub4 = cJSON_GetArrayItem(sub3, 1);
   903D C0 07              3913 	push	ar7
   903F C0 06              3914 	push	ar6
   9041 C0 02              3915 	push	ar2
   9043 74 01              3916 	mov	a,#0x01
   9045 C0 E0              3917 	push	acc
   9047 E4                 3918 	clr	a
   9048 C0 E0              3919 	push	acc
   904A 8F 82              3920 	mov	dpl,r7
   904C 8E 83              3921 	mov	dph,r6
   904E 8A F0              3922 	mov	b,r2
   9050 78 11              3923 	mov	r0,#_cJSON_GetArrayItem
   9052 79 D5              3924 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   9054 7A 02              3925 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   9056 12 06 D5           3926 	lcall	__sdcc_banked_call
   9059 AB 82              3927 	mov	r3,dpl
   905B AC 83              3928 	mov	r4,dph
   905D AD F0              3929 	mov	r5,b
   905F 15 81              3930 	dec	sp
   9061 15 81              3931 	dec	sp
   9063 D0 02              3932 	pop	ar2
   9065 D0 06              3933 	pop	ar6
   9067 D0 07              3934 	pop	ar7
   9069 E5 81              3935 	mov	a,sp
   906B 24 EE              3936 	add	a,#0xee
   906D F8                 3937 	mov	r0,a
   906E A6 03              3938 	mov	@r0,ar3
   9070 08                 3939 	inc	r0
   9071 A6 04              3940 	mov	@r0,ar4
   9073 08                 3941 	inc	r0
   9074 A6 05              3942 	mov	@r0,ar5
                           3943 ;	main.c:385: if (sub4) {
   9076 E5 81              3944 	mov	a,sp
   9078 24 EE              3945 	add	a,#0xee
   907A F8                 3946 	mov	r0,a
   907B E6                 3947 	mov	a,@r0
   907C 08                 3948 	inc	r0
   907D 46                 3949 	orl	a,@r0
   907E 70 03              3950 	jnz	00190$
   9080 02 92 D5           3951 	ljmp	00139$
   9083                    3952 00190$:
                           3953 ;	main.c:386: op = sub4->valueint;
   9083 E5 81              3954 	mov	a,sp
   9085 24 EE              3955 	add	a,#0xee
   9087 F8                 3956 	mov	r0,a
   9088 74 0E              3957 	mov	a,#0x0E
   908A 26                 3958 	add	a,@r0
   908B FB                 3959 	mov	r3,a
   908C E4                 3960 	clr	a
   908D 08                 3961 	inc	r0
   908E 36                 3962 	addc	a,@r0
   908F FC                 3963 	mov	r4,a
   9090 08                 3964 	inc	r0
   9091 86 05              3965 	mov	ar5,@r0
   9093 8B 82              3966 	mov	dpl,r3
   9095 8C 83              3967 	mov	dph,r4
   9097 8D F0              3968 	mov	b,r5
   9099 12 4B C9           3969 	lcall	__gptrget
   909C FB                 3970 	mov	r3,a
   909D A3                 3971 	inc	dptr
   909E 12 4B C9           3972 	lcall	__gptrget
   90A1 A8 81              3973 	mov	r0,sp
   90A3 A6 03              3974 	mov	@r0,ar3
                           3975 ;	main.c:387: sub4 = cJSON_GetArrayItem(sub3, 2);
   90A5 74 02              3976 	mov	a,#0x02
   90A7 C0 E0              3977 	push	acc
   90A9 E4                 3978 	clr	a
   90AA C0 E0              3979 	push	acc
   90AC 8F 82              3980 	mov	dpl,r7
   90AE 8E 83              3981 	mov	dph,r6
   90B0 8A F0              3982 	mov	b,r2
   90B2 78 11              3983 	mov	r0,#_cJSON_GetArrayItem
   90B4 79 D5              3984 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   90B6 7A 02              3985 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   90B8 12 06 D5           3986 	lcall	__sdcc_banked_call
   90BB AB 82              3987 	mov	r3,dpl
   90BD AC 83              3988 	mov	r4,dph
   90BF AD F0              3989 	mov	r5,b
   90C1 15 81              3990 	dec	sp
   90C3 15 81              3991 	dec	sp
   90C5 E5 81              3992 	mov	a,sp
   90C7 24 EE              3993 	add	a,#0xee
   90C9 F8                 3994 	mov	r0,a
   90CA A6 03              3995 	mov	@r0,ar3
   90CC 08                 3996 	inc	r0
   90CD A6 04              3997 	mov	@r0,ar4
   90CF 08                 3998 	inc	r0
   90D0 A6 05              3999 	mov	@r0,ar5
                           4000 ;	main.c:388: if (sub4) {
   90D2 E5 81              4001 	mov	a,sp
   90D4 24 EE              4002 	add	a,#0xee
   90D6 F8                 4003 	mov	r0,a
   90D7 E6                 4004 	mov	a,@r0
   90D8 08                 4005 	inc	r0
   90D9 46                 4006 	orl	a,@r0
   90DA 70 03              4007 	jnz	00191$
   90DC 02 91 93           4008 	ljmp	00122$
   90DF                    4009 00191$:
                           4010 ;	main.c:389: if (res->resource_type->type == Integer) {
   90DF E5 81              4011 	mov	a,sp
   90E1 24 F6              4012 	add	a,#0xf6
   90E3 F8                 4013 	mov	r0,a
   90E4 74 06              4014 	mov	a,#0x06
   90E6 26                 4015 	add	a,@r0
   90E7 FB                 4016 	mov	r3,a
   90E8 E4                 4017 	clr	a
   90E9 08                 4018 	inc	r0
   90EA 36                 4019 	addc	a,@r0
   90EB FC                 4020 	mov	r4,a
   90EC 08                 4021 	inc	r0
   90ED 86 05              4022 	mov	ar5,@r0
   90EF 8B 82              4023 	mov	dpl,r3
   90F1 8C 83              4024 	mov	dph,r4
   90F3 8D F0              4025 	mov	b,r5
   90F5 12 4B C9           4026 	lcall	__gptrget
   90F8 FB                 4027 	mov	r3,a
   90F9 A3                 4028 	inc	dptr
   90FA 12 4B C9           4029 	lcall	__gptrget
   90FD FC                 4030 	mov	r4,a
   90FE A3                 4031 	inc	dptr
   90FF 12 4B C9           4032 	lcall	__gptrget
   9102 FD                 4033 	mov	r5,a
   9103 74 03              4034 	mov	a,#0x03
   9105 2B                 4035 	add	a,r3
   9106 FB                 4036 	mov	r3,a
   9107 E4                 4037 	clr	a
   9108 3C                 4038 	addc	a,r4
   9109 FC                 4039 	mov	r4,a
   910A 8B 82              4040 	mov	dpl,r3
   910C 8C 83              4041 	mov	dph,r4
   910E 8D F0              4042 	mov	b,r5
   9110 12 4B C9           4043 	lcall	__gptrget
   9113 FD                 4044 	mov	r5,a
   9114 70 39              4045 	jnz	00119$
                           4046 ;	main.c:390: cond_value.int_value = sub4->valueint;
   9116 E5 81              4047 	mov	a,sp
   9118 24 FC              4048 	add	a,#0xFC
   911A F9                 4049 	mov	r1,a
   911B E5 81              4050 	mov	a,sp
   911D 24 EE              4051 	add	a,#0xee
   911F F8                 4052 	mov	r0,a
   9120 74 0E              4053 	mov	a,#0x0E
   9122 26                 4054 	add	a,@r0
   9123 FB                 4055 	mov	r3,a
   9124 E4                 4056 	clr	a
   9125 08                 4057 	inc	r0
   9126 36                 4058 	addc	a,@r0
   9127 FC                 4059 	mov	r4,a
   9128 08                 4060 	inc	r0
   9129 86 07              4061 	mov	ar7,@r0
   912B 8B 82              4062 	mov	dpl,r3
   912D 8C 83              4063 	mov	dph,r4
   912F 8F F0              4064 	mov	b,r7
   9131 12 4B C9           4065 	lcall	__gptrget
   9134 FB                 4066 	mov	r3,a
   9135 A3                 4067 	inc	dptr
   9136 12 4B C9           4068 	lcall	__gptrget
   9139 FC                 4069 	mov	r4,a
   913A 33                 4070 	rlc	a
   913B 95 E0              4071 	subb	a,acc
   913D FF                 4072 	mov	r7,a
   913E FE                 4073 	mov	r6,a
   913F A7 03              4074 	mov	@r1,ar3
   9141 09                 4075 	inc	r1
   9142 A7 04              4076 	mov	@r1,ar4
   9144 09                 4077 	inc	r1
   9145 A7 07              4078 	mov	@r1,ar7
   9147 09                 4079 	inc	r1
   9148 A7 06              4080 	mov	@r1,ar6
   914A 19                 4081 	dec	r1
   914B 19                 4082 	dec	r1
   914C 19                 4083 	dec	r1
   914D 80 44              4084 	sjmp	00122$
   914F                    4085 00119$:
                           4086 ;	main.c:391: } else if (res->resource_type->type == Float) {
   914F BD 01 02           4087 	cjne	r5,#0x01,00193$
   9152 80 03              4088 	sjmp	00194$
   9154                    4089 00193$:
   9154 02 92 D5           4090 	ljmp	00139$
   9157                    4091 00194$:
                           4092 ;	main.c:392: cond_value.float_value = sub4->valuefloat;
   9157 E5 81              4093 	mov	a,sp
   9159 24 FC              4094 	add	a,#0xFC
   915B F9                 4095 	mov	r1,a
   915C E5 81              4096 	mov	a,sp
   915E 24 EE              4097 	add	a,#0xee
   9160 F8                 4098 	mov	r0,a
   9161 74 10              4099 	mov	a,#0x10
   9163 26                 4100 	add	a,@r0
   9164 FD                 4101 	mov	r5,a
   9165 E4                 4102 	clr	a
   9166 08                 4103 	inc	r0
   9167 36                 4104 	addc	a,@r0
   9168 FE                 4105 	mov	r6,a
   9169 08                 4106 	inc	r0
   916A 86 07              4107 	mov	ar7,@r0
   916C 8D 82              4108 	mov	dpl,r5
   916E 8E 83              4109 	mov	dph,r6
   9170 8F F0              4110 	mov	b,r7
   9172 12 4B C9           4111 	lcall	__gptrget
   9175 FD                 4112 	mov	r5,a
   9176 A3                 4113 	inc	dptr
   9177 12 4B C9           4114 	lcall	__gptrget
   917A FE                 4115 	mov	r6,a
   917B A3                 4116 	inc	dptr
   917C 12 4B C9           4117 	lcall	__gptrget
   917F FF                 4118 	mov	r7,a
   9180 A3                 4119 	inc	dptr
   9181 12 4B C9           4120 	lcall	__gptrget
   9184 FC                 4121 	mov	r4,a
   9185 A7 05              4122 	mov	@r1,ar5
   9187 09                 4123 	inc	r1
   9188 A7 06              4124 	mov	@r1,ar6
   918A 09                 4125 	inc	r1
   918B A7 07              4126 	mov	@r1,ar7
   918D 09                 4127 	inc	r1
   918E A7 04              4128 	mov	@r1,ar4
   9190 19                 4129 	dec	r1
   9191 19                 4130 	dec	r1
   9192 19                 4131 	dec	r1
                           4132 ;	main.c:394: continue;
   9193                    4133 00122$:
                           4134 ;	main.c:398: subscriber = subscriber_alloc();
   9193 78 85              4135 	mov	r0,#_subscriber_alloc
   9195 79 80              4136 	mov	r1,#(_subscriber_alloc >> 8)
   9197 7A 05              4137 	mov	r2,#(_subscriber_alloc >> 16)
   9199 12 06 D5           4138 	lcall	__sdcc_banked_call
   919C AD 82              4139 	mov	r5,dpl
   919E AE 83              4140 	mov	r6,dph
   91A0 AF F0              4141 	mov	r7,b
   91A2 E5 81              4142 	mov	a,sp
   91A4 24 F9              4143 	add	a,#0xf9
   91A6 F8                 4144 	mov	r0,a
   91A7 A6 05              4145 	mov	@r0,ar5
   91A9 08                 4146 	inc	r0
   91AA A6 06              4147 	mov	@r0,ar6
   91AC 08                 4148 	inc	r0
   91AD A6 07              4149 	mov	@r0,ar7
                           4150 ;	main.c:399: if (subscriber) {
   91AF E5 81              4151 	mov	a,sp
   91B1 24 F9              4152 	add	a,#0xf9
   91B3 F8                 4153 	mov	r0,a
   91B4 E6                 4154 	mov	a,@r0
   91B5 08                 4155 	inc	r0
   91B6 46                 4156 	orl	a,@r0
   91B7 70 03              4157 	jnz	00195$
   91B9 02 92 D5           4158 	ljmp	00139$
   91BC                    4159 00195$:
                           4160 ;	main.c:400: subscriber_value_compare_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id, op, &cond_value);
   91BC E5 81              4161 	mov	a,sp
   91BE 24 FC              4162 	add	a,#0xFC
   91C0 FC                 4163 	mov	r4,a
   91C1 7B 00              4164 	mov	r3,#0x00
   91C3 7A 40              4165 	mov	r2,#0x40
   91C5 7E FD              4166 	mov	r6,#_uip_aligned_buf
   91C7 7F 06              4167 	mov	r7,#(_uip_aligned_buf >> 8)
   91C9 74 08              4168 	mov	a,#0x08
   91CB 2E                 4169 	add	a,r6
   91CC FE                 4170 	mov	r6,a
   91CD E4                 4171 	clr	a
   91CE 3F                 4172 	addc	a,r7
   91CF FF                 4173 	mov	r7,a
   91D0 7D 00              4174 	mov	r5,#0x00
   91D2 C0 04              4175 	push	ar4
   91D4 C0 03              4176 	push	ar3
   91D6 C0 02              4177 	push	ar2
   91D8 E5 81              4178 	mov	a,sp
   91DA 24 FD              4179 	add	a,#0xfd
   91DC F8                 4180 	mov	r0,a
   91DD E6                 4181 	mov	a,@r0
   91DE C0 E0              4182 	push	acc
   91E0 E5 81              4183 	mov	a,sp
   91E2 24 E4              4184 	add	a,#0xe4
   91E4 F8                 4185 	mov	r0,a
   91E5 E6                 4186 	mov	a,@r0
   91E6 C0 E0              4187 	push	acc
   91E8 08                 4188 	inc	r0
   91E9 E6                 4189 	mov	a,@r0
   91EA C0 E0              4190 	push	acc
   91EC 08                 4191 	inc	r0
   91ED E6                 4192 	mov	a,@r0
   91EE C0 E0              4193 	push	acc
   91F0 C0 06              4194 	push	ar6
   91F2 C0 07              4195 	push	ar7
   91F4 C0 05              4196 	push	ar5
   91F6 E5 81              4197 	mov	a,sp
   91F8 24 EF              4198 	add	a,#0xef
   91FA F8                 4199 	mov	r0,a
   91FB 86 82              4200 	mov	dpl,@r0
   91FD 08                 4201 	inc	r0
   91FE 86 83              4202 	mov	dph,@r0
   9200 08                 4203 	inc	r0
   9201 86 F0              4204 	mov	b,@r0
   9203 78 D3              4205 	mov	r0,#_subscriber_value_compare_type_init
   9205 79 80              4206 	mov	r1,#(_subscriber_value_compare_type_init >> 8)
   9207 7A 05              4207 	mov	r2,#(_subscriber_value_compare_type_init >> 16)
   9209 12 06 D5           4208 	lcall	__sdcc_banked_call
   920C E5 81              4209 	mov	a,sp
   920E 24 F6              4210 	add	a,#0xf6
                           4211 ;	main.c:401: object_add_subscriber(obj, subscriber);
   9210 F5 81              4212 	mov	sp,a
   9212 24 F9              4213 	add	a,#0xf9
   9214 F8                 4214 	mov	r0,a
   9215 E6                 4215 	mov	a,@r0
   9216 C0 E0              4216 	push	acc
   9218 08                 4217 	inc	r0
   9219 E6                 4218 	mov	a,@r0
   921A C0 E0              4219 	push	acc
   921C 08                 4220 	inc	r0
   921D E6                 4221 	mov	a,@r0
   921E C0 E0              4222 	push	acc
   9220 E5 81              4223 	mov	a,sp
   9222 24 F0              4224 	add	a,#0xf0
   9224 F8                 4225 	mov	r0,a
   9225 86 82              4226 	mov	dpl,@r0
   9227 08                 4227 	inc	r0
   9228 86 83              4228 	mov	dph,@r0
   922A 08                 4229 	inc	r0
   922B 86 F0              4230 	mov	b,@r0
   922D 78 4C              4231 	mov	r0,#_object_add_subscriber
   922F 79 96              4232 	mov	r1,#(_object_add_subscriber >> 8)
   9231 7A 05              4233 	mov	r2,#(_object_add_subscriber >> 16)
   9233 12 06 D5           4234 	lcall	__sdcc_banked_call
   9236 15 81              4235 	dec	sp
   9238 15 81              4236 	dec	sp
   923A 15 81              4237 	dec	sp
   923C 02 92 D5           4238 	ljmp	00139$
   923F                    4239 00133$:
                           4240 ;	main.c:404: } else if (sub4->valueint == CONDITION_TYPE_REPORT) {
   923F ED                 4241 	mov	a,r5
   9240 4C                 4242 	orl	a,r4
   9241 60 03              4243 	jz	00196$
   9243 02 92 D5           4244 	ljmp	00139$
   9246                    4245 00196$:
                           4246 ;	main.c:405: subscriber = subscriber_alloc();
   9246 78 85              4247 	mov	r0,#_subscriber_alloc
   9248 79 80              4248 	mov	r1,#(_subscriber_alloc >> 8)
   924A 7A 05              4249 	mov	r2,#(_subscriber_alloc >> 16)
   924C 12 06 D5           4250 	lcall	__sdcc_banked_call
   924F AD 82              4251 	mov	r5,dpl
   9251 AE 83              4252 	mov	r6,dph
   9253 AF F0              4253 	mov	r7,b
   9255 E5 81              4254 	mov	a,sp
   9257 24 F9              4255 	add	a,#0xf9
   9259 F8                 4256 	mov	r0,a
   925A A6 05              4257 	mov	@r0,ar5
   925C 08                 4258 	inc	r0
   925D A6 06              4259 	mov	@r0,ar6
   925F 08                 4260 	inc	r0
   9260 A6 07              4261 	mov	@r0,ar7
                           4262 ;	main.c:406: if (subscriber) {
   9262 E5 81              4263 	mov	a,sp
   9264 24 F9              4264 	add	a,#0xf9
   9266 F8                 4265 	mov	r0,a
   9267 E6                 4266 	mov	a,@r0
   9268 08                 4267 	inc	r0
   9269 46                 4268 	orl	a,@r0
   926A 60 69              4269 	jz	00139$
                           4270 ;	main.c:407: subscriber_report_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id);
   926C 7E FD              4271 	mov	r6,#_uip_aligned_buf
   926E 7F 06              4272 	mov	r7,#(_uip_aligned_buf >> 8)
   9270 74 08              4273 	mov	a,#0x08
   9272 2E                 4274 	add	a,r6
   9273 FE                 4275 	mov	r6,a
   9274 E4                 4276 	clr	a
   9275 3F                 4277 	addc	a,r7
   9276 FF                 4278 	mov	r7,a
   9277 7D 00              4279 	mov	r5,#0x00
   9279 E5 81              4280 	mov	a,sp
   927B 24 E8              4281 	add	a,#0xe8
   927D F8                 4282 	mov	r0,a
   927E E6                 4283 	mov	a,@r0
   927F C0 E0              4284 	push	acc
   9281 08                 4285 	inc	r0
   9282 E6                 4286 	mov	a,@r0
   9283 C0 E0              4287 	push	acc
   9285 08                 4288 	inc	r0
   9286 E6                 4289 	mov	a,@r0
   9287 C0 E0              4290 	push	acc
   9289 C0 06              4291 	push	ar6
   928B C0 07              4292 	push	ar7
   928D C0 05              4293 	push	ar5
   928F E5 81              4294 	mov	a,sp
   9291 24 F3              4295 	add	a,#0xf3
   9293 F8                 4296 	mov	r0,a
   9294 86 82              4297 	mov	dpl,@r0
   9296 08                 4298 	inc	r0
   9297 86 83              4299 	mov	dph,@r0
   9299 08                 4300 	inc	r0
   929A 86 F0              4301 	mov	b,@r0
   929C 78 EF              4302 	mov	r0,#_subscriber_report_type_init
   929E 79 81              4303 	mov	r1,#(_subscriber_report_type_init >> 8)
   92A0 7A 05              4304 	mov	r2,#(_subscriber_report_type_init >> 16)
   92A2 12 06 D5           4305 	lcall	__sdcc_banked_call
   92A5 E5 81              4306 	mov	a,sp
   92A7 24 FA              4307 	add	a,#0xfa
                           4308 ;	main.c:408: object_add_subscriber(obj, subscriber);
   92A9 F5 81              4309 	mov	sp,a
   92AB 24 F9              4310 	add	a,#0xf9
   92AD F8                 4311 	mov	r0,a
   92AE E6                 4312 	mov	a,@r0
   92AF C0 E0              4313 	push	acc
   92B1 08                 4314 	inc	r0
   92B2 E6                 4315 	mov	a,@r0
   92B3 C0 E0              4316 	push	acc
   92B5 08                 4317 	inc	r0
   92B6 E6                 4318 	mov	a,@r0
   92B7 C0 E0              4319 	push	acc
   92B9 E5 81              4320 	mov	a,sp
   92BB 24 F0              4321 	add	a,#0xf0
   92BD F8                 4322 	mov	r0,a
   92BE 86 82              4323 	mov	dpl,@r0
   92C0 08                 4324 	inc	r0
   92C1 86 83              4325 	mov	dph,@r0
   92C3 08                 4326 	inc	r0
   92C4 86 F0              4327 	mov	b,@r0
   92C6 78 4C              4328 	mov	r0,#_object_add_subscriber
   92C8 79 96              4329 	mov	r1,#(_object_add_subscriber >> 8)
   92CA 7A 05              4330 	mov	r2,#(_object_add_subscriber >> 16)
   92CC 12 06 D5           4331 	lcall	__sdcc_banked_call
   92CF 15 81              4332 	dec	sp
   92D1 15 81              4333 	dec	sp
   92D3 15 81              4334 	dec	sp
                           4335 ;	main.c:411: continue;
   92D5                    4336 00139$:
                           4337 ;	main.c:353: for (;i < cJSON_GetArraySize(root); i++) {
   92D5 E5 81              4338 	mov	a,sp
   92D7 24 F1              4339 	add	a,#0xf1
   92D9 F8                 4340 	mov	r0,a
   92DA 06                 4341 	inc	@r0
   92DB B6 00 02           4342 	cjne	@r0,#0x00,00198$
   92DE 08                 4343 	inc	r0
   92DF 06                 4344 	inc	@r0
   92E0                    4345 00198$:
   92E0 02 8E 66           4346 	ljmp	00137$
   92E3                    4347 00140$:
                           4348 ;	main.c:417: sprintf(output_buf, "[%d]", retcode);
   92E3 E4                 4349 	clr	a
   92E4 C0 E0              4350 	push	acc
   92E6 C0 E0              4351 	push	acc
   92E8 74 AA              4352 	mov	a,#__str_5
   92EA C0 E0              4353 	push	acc
   92EC 74 78              4354 	mov	a,#(__str_5 >> 8)
   92EE C0 E0              4355 	push	acc
   92F0 74 80              4356 	mov	a,#0x80
   92F2 C0 E0              4357 	push	acc
   92F4 74 04              4358 	mov	a,#_output_buf
   92F6 C0 E0              4359 	push	acc
   92F8 74 00              4360 	mov	a,#(_output_buf >> 8)
   92FA C0 E0              4361 	push	acc
   92FC E4                 4362 	clr	a
   92FD C0 E0              4363 	push	acc
   92FF 78 FB              4364 	mov	r0,#_sprintf
   9301 79 44              4365 	mov	r1,#(_sprintf >> 8)
   9303 7A 00              4366 	mov	r2,#(_sprintf >> 16)
   9305 12 06 D5           4367 	lcall	__sdcc_banked_call
   9308 E5 81              4368 	mov	a,sp
   930A 24 F8              4369 	add	a,#0xf8
   930C F5 81              4370 	mov	sp,a
                           4371 ;	main.c:418: send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
   930E 7E FD              4372 	mov	r6,#_uip_aligned_buf
   9310 7F 06              4373 	mov	r7,#(_uip_aligned_buf >> 8)
   9312 74 08              4374 	mov	a,#0x08
   9314 2E                 4375 	add	a,r6
   9315 FE                 4376 	mov	r6,a
   9316 E4                 4377 	clr	a
   9317 3F                 4378 	addc	a,r7
   9318 FF                 4379 	mov	r7,a
   9319 7D 00              4380 	mov	r5,#0x00
   931B 90 00 04           4381 	mov	dptr,#_output_buf
   931E 75 F0 00           4382 	mov	b,#0x00
   9321 C0 07              4383 	push	ar7
   9323 C0 06              4384 	push	ar6
   9325 C0 05              4385 	push	ar5
   9327 78 1A              4386 	mov	r0,#_strlen
   9329 79 4A              4387 	mov	r1,#(_strlen >> 8)
   932B 7A 00              4388 	mov	r2,#(_strlen >> 16)
   932D 12 06 D5           4389 	lcall	__sdcc_banked_call
   9330 AB 82              4390 	mov	r3,dpl
   9332 AC 83              4391 	mov	r4,dph
   9334 D0 05              4392 	pop	ar5
   9336 D0 06              4393 	pop	ar6
   9338 D0 07              4394 	pop	ar7
   933A C0 06              4395 	push	ar6
   933C C0 07              4396 	push	ar7
   933E C0 05              4397 	push	ar5
   9340 C0 03              4398 	push	ar3
   9342 C0 04              4399 	push	ar4
   9344 90 00 04           4400 	mov	dptr,#_output_buf
   9347 75 F0 00           4401 	mov	b,#0x00
   934A 78 AA              4402 	mov	r0,#_send_msg
   934C 79 80              4403 	mov	r1,#(_send_msg >> 8)
   934E 7A 02              4404 	mov	r2,#(_send_msg >> 16)
   9350 12 06 D5           4405 	lcall	__sdcc_banked_call
   9353 E5 81              4406 	mov	a,sp
   9355 24 FB              4407 	add	a,#0xfb
   9357 F5 81              4408 	mov	sp,a
                           4409 ;	main.c:420: return;
   9359                    4410 00141$:
   9359 E5 81              4411 	mov	a,sp
   935B 24 E7              4412 	add	a,#0xE7
   935D F5 81              4413 	mov	sp,a
   935F 02 06 E7           4414 	ljmp	__sdcc_banked_ret
                           4415 ;------------------------------------------------------------
                           4416 ;Allocation info for local variables in function 'unsubscribe_request_handler'
                           4417 ;------------------------------------------------------------
                           4418 ;parameters                Allocated to registers r5 r6 r7 
                           4419 ;root                      Allocated to stack - sp -7
                           4420 ;sub                       Allocated to registers r5 r6 r7 
                           4421 ;sub1                      Allocated to registers r2 r3 r4 
                           4422 ;i                         Allocated to stack - sp -4
                           4423 ;j                         Allocated to registers 
                           4424 ;obj                       Allocated to stack - sp -2
                           4425 ;retcode                   Allocated to registers 
                           4426 ;------------------------------------------------------------
                           4427 ;	main.c:426: unsubscribe_request_handler(uint8_t *parameters)
                           4428 ;	-----------------------------------------
                           4429 ;	 function unsubscribe_request_handler
                           4430 ;	-----------------------------------------
   9362                    4431 _unsubscribe_request_handler:
   9362 E5 81              4432 	mov	a,sp
   9364 24 08              4433 	add	a,#0x08
   9366 F5 81              4434 	mov	sp,a
   9368 AD 82              4435 	mov	r5,dpl
   936A AE 83              4436 	mov	r6,dph
   936C AF F0              4437 	mov	r7,b
                           4438 ;	main.c:433: if (!parameters) {
   936E ED                 4439 	mov	a,r5
   936F 4E                 4440 	orl	a,r6
   9370 70 03              4441 	jnz	00102$
                           4442 ;	main.c:434: return;
   9372 02 95 6E           4443 	ljmp	00117$
   9375                    4444 00102$:
                           4445 ;	main.c:437: root = cJSON_Parse(parameters);
   9375 8D 82              4446 	mov	dpl,r5
   9377 8E 83              4447 	mov	dph,r6
   9379 8F F0              4448 	mov	b,r7
   937B 78 0B              4449 	mov	r0,#_cJSON_Parse
   937D 79 B9              4450 	mov	r1,#(_cJSON_Parse >> 8)
   937F 7A 02              4451 	mov	r2,#(_cJSON_Parse >> 16)
   9381 12 06 D5           4452 	lcall	__sdcc_banked_call
   9384 AD 82              4453 	mov	r5,dpl
   9386 AE 83              4454 	mov	r6,dph
   9388 AF F0              4455 	mov	r7,b
   938A E5 81              4456 	mov	a,sp
   938C 24 F9              4457 	add	a,#0xf9
   938E F8                 4458 	mov	r0,a
   938F A6 05              4459 	mov	@r0,ar5
   9391 08                 4460 	inc	r0
   9392 A6 06              4461 	mov	@r0,ar6
   9394 08                 4462 	inc	r0
   9395 A6 07              4463 	mov	@r0,ar7
                           4464 ;	main.c:439: if (!root) {
   9397 E5 81              4465 	mov	a,sp
   9399 24 F9              4466 	add	a,#0xf9
   939B F8                 4467 	mov	r0,a
   939C E6                 4468 	mov	a,@r0
   939D 08                 4469 	inc	r0
   939E 46                 4470 	orl	a,@r0
   939F 70 03              4471 	jnz	00126$
                           4472 ;	main.c:440: return;
   93A1 02 95 6E           4473 	ljmp	00117$
   93A4                    4474 00126$:
   93A4 E5 81              4475 	mov	a,sp
   93A6 24 FC              4476 	add	a,#0xfc
   93A8 F8                 4477 	mov	r0,a
   93A9 E4                 4478 	clr	a
   93AA F6                 4479 	mov	@r0,a
   93AB 08                 4480 	inc	r0
   93AC F6                 4481 	mov	@r0,a
   93AD                    4482 00113$:
                           4483 ;	main.c:443: for (;i < cJSON_GetArraySize(root); i++) {
   93AD E5 81              4484 	mov	a,sp
   93AF 24 F9              4485 	add	a,#0xf9
   93B1 F8                 4486 	mov	r0,a
   93B2 86 82              4487 	mov	dpl,@r0
   93B4 08                 4488 	inc	r0
   93B5 86 83              4489 	mov	dph,@r0
   93B7 08                 4490 	inc	r0
   93B8 86 F0              4491 	mov	b,@r0
   93BA 78 C6              4492 	mov	r0,#_cJSON_GetArraySize
   93BC 79 D4              4493 	mov	r1,#(_cJSON_GetArraySize >> 8)
   93BE 7A 02              4494 	mov	r2,#(_cJSON_GetArraySize >> 16)
   93C0 12 06 D5           4495 	lcall	__sdcc_banked_call
   93C3 AA 82              4496 	mov	r2,dpl
   93C5 AF 83              4497 	mov	r7,dph
   93C7 E5 81              4498 	mov	a,sp
   93C9 24 FC              4499 	add	a,#0xfc
   93CB F8                 4500 	mov	r0,a
   93CC C3                 4501 	clr	c
   93CD E6                 4502 	mov	a,@r0
   93CE 9A                 4503 	subb	a,r2
   93CF 08                 4504 	inc	r0
   93D0 E6                 4505 	mov	a,@r0
   93D1 9F                 4506 	subb	a,r7
   93D2 40 03              4507 	jc	00137$
   93D4 02 94 F8           4508 	ljmp	00116$
   93D7                    4509 00137$:
                           4510 ;	main.c:445: sub = cJSON_GetArrayItem(root, i);
   93D7 E5 81              4511 	mov	a,sp
   93D9 24 FC              4512 	add	a,#0xfc
   93DB F8                 4513 	mov	r0,a
   93DC 86 06              4514 	mov	ar6,@r0
   93DE 08                 4515 	inc	r0
   93DF 86 07              4516 	mov	ar7,@r0
   93E1 C0 06              4517 	push	ar6
   93E3 C0 07              4518 	push	ar7
   93E5 E5 81              4519 	mov	a,sp
   93E7 24 F7              4520 	add	a,#0xf7
   93E9 F8                 4521 	mov	r0,a
   93EA 86 82              4522 	mov	dpl,@r0
   93EC 08                 4523 	inc	r0
   93ED 86 83              4524 	mov	dph,@r0
   93EF 08                 4525 	inc	r0
   93F0 86 F0              4526 	mov	b,@r0
   93F2 78 11              4527 	mov	r0,#_cJSON_GetArrayItem
   93F4 79 D5              4528 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   93F6 7A 02              4529 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   93F8 12 06 D5           4530 	lcall	__sdcc_banked_call
   93FB AD 82              4531 	mov	r5,dpl
   93FD AE 83              4532 	mov	r6,dph
   93FF AF F0              4533 	mov	r7,b
   9401 15 81              4534 	dec	sp
   9403 15 81              4535 	dec	sp
                           4536 ;	main.c:446: if (!sub) {
   9405 ED                 4537 	mov	a,r5
   9406 4E                 4538 	orl	a,r6
   9407 70 03              4539 	jnz	00106$
                           4540 ;	main.c:447: return;
   9409 02 95 6E           4541 	ljmp	00117$
   940C                    4542 00106$:
                           4543 ;	main.c:450: sub1 = cJSON_GetArrayItem(sub, 0);
   940C C0 07              4544 	push	ar7
   940E C0 06              4545 	push	ar6
   9410 C0 05              4546 	push	ar5
   9412 E4                 4547 	clr	a
   9413 C0 E0              4548 	push	acc
   9415 C0 E0              4549 	push	acc
   9417 8D 82              4550 	mov	dpl,r5
   9419 8E 83              4551 	mov	dph,r6
   941B 8F F0              4552 	mov	b,r7
   941D 78 11              4553 	mov	r0,#_cJSON_GetArrayItem
   941F 79 D5              4554 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   9421 7A 02              4555 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   9423 12 06 D5           4556 	lcall	__sdcc_banked_call
   9426 AA 82              4557 	mov	r2,dpl
   9428 AB 83              4558 	mov	r3,dph
   942A AC F0              4559 	mov	r4,b
   942C 15 81              4560 	dec	sp
   942E 15 81              4561 	dec	sp
   9430 D0 05              4562 	pop	ar5
   9432 D0 06              4563 	pop	ar6
   9434 D0 07              4564 	pop	ar7
                           4565 ;	main.c:451: if (!sub1) {
   9436 EA                 4566 	mov	a,r2
   9437 4B                 4567 	orl	a,r3
   9438 70 03              4568 	jnz	00108$
                           4569 ;	main.c:452: return;
   943A 02 95 6E           4570 	ljmp	00117$
   943D                    4571 00108$:
                           4572 ;	main.c:455: obj = device_find_object(sub1->valuestring);
   943D C0 05              4573 	push	ar5
   943F C0 06              4574 	push	ar6
   9441 C0 07              4575 	push	ar7
   9443 74 0B              4576 	mov	a,#0x0B
   9445 2A                 4577 	add	a,r2
   9446 FD                 4578 	mov	r5,a
   9447 E4                 4579 	clr	a
   9448 3B                 4580 	addc	a,r3
   9449 FE                 4581 	mov	r6,a
   944A 8C 07              4582 	mov	ar7,r4
   944C 8D 82              4583 	mov	dpl,r5
   944E 8E 83              4584 	mov	dph,r6
   9450 8F F0              4585 	mov	b,r7
   9452 12 4B C9           4586 	lcall	__gptrget
   9455 FD                 4587 	mov	r5,a
   9456 A3                 4588 	inc	dptr
   9457 12 4B C9           4589 	lcall	__gptrget
   945A FE                 4590 	mov	r6,a
   945B A3                 4591 	inc	dptr
   945C 12 4B C9           4592 	lcall	__gptrget
   945F FF                 4593 	mov	r7,a
   9460 8D 82              4594 	mov	dpl,r5
   9462 8E 83              4595 	mov	dph,r6
   9464 8F F0              4596 	mov	b,r7
   9466 78 B6              4597 	mov	r0,#_device_find_object
   9468 79 A0              4598 	mov	r1,#(_device_find_object >> 8)
   946A 7A 05              4599 	mov	r2,#(_device_find_object >> 16)
   946C 12 06 D5           4600 	lcall	__sdcc_banked_call
   946F AD 82              4601 	mov	r5,dpl
   9471 AE 83              4602 	mov	r6,dph
   9473 AF F0              4603 	mov	r7,b
   9475 E5 81              4604 	mov	a,sp
   9477 24 FB              4605 	add	a,#0xfb
   9479 F8                 4606 	mov	r0,a
   947A A6 05              4607 	mov	@r0,ar5
   947C 08                 4608 	inc	r0
   947D A6 06              4609 	mov	@r0,ar6
   947F 08                 4610 	inc	r0
   9480 A6 07              4611 	mov	@r0,ar7
                           4612 ;	main.c:456: if(!obj) {
   9482 D0 07              4613 	pop	ar7
   9484 D0 06              4614 	pop	ar6
   9486 D0 05              4615 	pop	ar5
   9488 A8 81              4616 	mov	r0,sp
   948A 18                 4617 	dec	r0
   948B 18                 4618 	dec	r0
   948C E6                 4619 	mov	a,@r0
   948D 08                 4620 	inc	r0
   948E 46                 4621 	orl	a,@r0
   948F 60 59              4622 	jz	00115$
                           4623 ;	main.c:461: sub1 = cJSON_GetArrayItem(sub, 1);
   9491 74 01              4624 	mov	a,#0x01
   9493 C0 E0              4625 	push	acc
   9495 E4                 4626 	clr	a
   9496 C0 E0              4627 	push	acc
   9498 8D 82              4628 	mov	dpl,r5
   949A 8E 83              4629 	mov	dph,r6
   949C 8F F0              4630 	mov	b,r7
   949E 78 11              4631 	mov	r0,#_cJSON_GetArrayItem
   94A0 79 D5              4632 	mov	r1,#(_cJSON_GetArrayItem >> 8)
   94A2 7A 02              4633 	mov	r2,#(_cJSON_GetArrayItem >> 16)
   94A4 12 06 D5           4634 	lcall	__sdcc_banked_call
   94A7 AD 82              4635 	mov	r5,dpl
   94A9 AE 83              4636 	mov	r6,dph
   94AB AF F0              4637 	mov	r7,b
   94AD 15 81              4638 	dec	sp
   94AF 15 81              4639 	dec	sp
   94B1 8D 02              4640 	mov	ar2,r5
   94B3 8E 03              4641 	mov	ar3,r6
   94B5 8F 04              4642 	mov	ar4,r7
                           4643 ;	main.c:462: if (!sub1) {
   94B7 EA                 4644 	mov	a,r2
   94B8 4B                 4645 	orl	a,r3
   94B9 60 2F              4646 	jz	00115$
                           4647 ;	main.c:466: object_remove_subscriber(obj, &UIP_IP_BUF->srcipaddr);
   94BB 7E FD              4648 	mov	r6,#_uip_aligned_buf
   94BD 7F 06              4649 	mov	r7,#(_uip_aligned_buf >> 8)
   94BF 74 08              4650 	mov	a,#0x08
   94C1 2E                 4651 	add	a,r6
   94C2 FE                 4652 	mov	r6,a
   94C3 E4                 4653 	clr	a
   94C4 3F                 4654 	addc	a,r7
   94C5 FF                 4655 	mov	r7,a
   94C6 7D 00              4656 	mov	r5,#0x00
   94C8 C0 06              4657 	push	ar6
   94CA C0 07              4658 	push	ar7
   94CC C0 05              4659 	push	ar5
   94CE E5 81              4660 	mov	a,sp
   94D0 24 FB              4661 	add	a,#0xfb
   94D2 F8                 4662 	mov	r0,a
   94D3 86 82              4663 	mov	dpl,@r0
   94D5 08                 4664 	inc	r0
   94D6 86 83              4665 	mov	dph,@r0
   94D8 08                 4666 	inc	r0
   94D9 86 F0              4667 	mov	b,@r0
   94DB 78 11              4668 	mov	r0,#_object_remove_subscriber
   94DD 79 97              4669 	mov	r1,#(_object_remove_subscriber >> 8)
   94DF 7A 05              4670 	mov	r2,#(_object_remove_subscriber >> 16)
   94E1 12 06 D5           4671 	lcall	__sdcc_banked_call
   94E4 15 81              4672 	dec	sp
   94E6 15 81              4673 	dec	sp
   94E8 15 81              4674 	dec	sp
   94EA                    4675 00115$:
                           4676 ;	main.c:443: for (;i < cJSON_GetArraySize(root); i++) {
   94EA E5 81              4677 	mov	a,sp
   94EC 24 FC              4678 	add	a,#0xfc
   94EE F8                 4679 	mov	r0,a
   94EF 06                 4680 	inc	@r0
   94F0 B6 00 02           4681 	cjne	@r0,#0x00,00142$
   94F3 08                 4682 	inc	r0
   94F4 06                 4683 	inc	@r0
   94F5                    4684 00142$:
   94F5 02 93 AD           4685 	ljmp	00113$
   94F8                    4686 00116$:
                           4687 ;	main.c:471: sprintf(output_buf, "[%d]", retcode);
   94F8 E4                 4688 	clr	a
   94F9 C0 E0              4689 	push	acc
   94FB C0 E0              4690 	push	acc
   94FD 74 AA              4691 	mov	a,#__str_5
   94FF C0 E0              4692 	push	acc
   9501 74 78              4693 	mov	a,#(__str_5 >> 8)
   9503 C0 E0              4694 	push	acc
   9505 74 80              4695 	mov	a,#0x80
   9507 C0 E0              4696 	push	acc
   9509 74 04              4697 	mov	a,#_output_buf
   950B C0 E0              4698 	push	acc
   950D 74 00              4699 	mov	a,#(_output_buf >> 8)
   950F C0 E0              4700 	push	acc
   9511 E4                 4701 	clr	a
   9512 C0 E0              4702 	push	acc
   9514 78 FB              4703 	mov	r0,#_sprintf
   9516 79 44              4704 	mov	r1,#(_sprintf >> 8)
   9518 7A 00              4705 	mov	r2,#(_sprintf >> 16)
   951A 12 06 D5           4706 	lcall	__sdcc_banked_call
   951D E5 81              4707 	mov	a,sp
   951F 24 F8              4708 	add	a,#0xf8
   9521 F5 81              4709 	mov	sp,a
                           4710 ;	main.c:473: send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
   9523 7E FD              4711 	mov	r6,#_uip_aligned_buf
   9525 7F 06              4712 	mov	r7,#(_uip_aligned_buf >> 8)
   9527 74 08              4713 	mov	a,#0x08
   9529 2E                 4714 	add	a,r6
   952A FE                 4715 	mov	r6,a
   952B E4                 4716 	clr	a
   952C 3F                 4717 	addc	a,r7
   952D FF                 4718 	mov	r7,a
   952E 7D 00              4719 	mov	r5,#0x00
   9530 90 00 04           4720 	mov	dptr,#_output_buf
   9533 75 F0 00           4721 	mov	b,#0x00
   9536 C0 07              4722 	push	ar7
   9538 C0 06              4723 	push	ar6
   953A C0 05              4724 	push	ar5
   953C 78 1A              4725 	mov	r0,#_strlen
   953E 79 4A              4726 	mov	r1,#(_strlen >> 8)
   9540 7A 00              4727 	mov	r2,#(_strlen >> 16)
   9542 12 06 D5           4728 	lcall	__sdcc_banked_call
   9545 AB 82              4729 	mov	r3,dpl
   9547 AC 83              4730 	mov	r4,dph
   9549 D0 05              4731 	pop	ar5
   954B D0 06              4732 	pop	ar6
   954D D0 07              4733 	pop	ar7
   954F C0 06              4734 	push	ar6
   9551 C0 07              4735 	push	ar7
   9553 C0 05              4736 	push	ar5
   9555 C0 03              4737 	push	ar3
   9557 C0 04              4738 	push	ar4
   9559 90 00 04           4739 	mov	dptr,#_output_buf
   955C 75 F0 00           4740 	mov	b,#0x00
   955F 78 AA              4741 	mov	r0,#_send_msg
   9561 79 80              4742 	mov	r1,#(_send_msg >> 8)
   9563 7A 02              4743 	mov	r2,#(_send_msg >> 16)
   9565 12 06 D5           4744 	lcall	__sdcc_banked_call
   9568 E5 81              4745 	mov	a,sp
   956A 24 FB              4746 	add	a,#0xfb
   956C F5 81              4747 	mov	sp,a
                           4748 ;	main.c:475: return;
   956E                    4749 00117$:
   956E E5 81              4750 	mov	a,sp
   9570 24 F8              4751 	add	a,#0xF8
   9572 F5 81              4752 	mov	sp,a
   9574 02 06 E7           4753 	ljmp	__sdcc_banked_ret
                           4754 ;------------------------------------------------------------
                           4755 ;Allocation info for local variables in function 'message_handler'
                           4756 ;------------------------------------------------------------
                           4757 ;data                      Allocated to stack - sp -11
                           4758 ;parameters                Allocated to stack - sp -8
                           4759 ;method                    Allocated to registers r7 
                           4760 ;len                       Allocated to registers r6 r7 
                           4761 ;len1                      Allocated to registers r4 r5 
                           4762 ;i                         Allocated to registers r2 r3 
                           4763 ;security_header           Allocated to registers 
                           4764 ;shared_key                Allocated to stack - sp -8
                           4765 ;sloc0                     Allocated to stack - sp -5
                           4766 ;sloc1                     Allocated to stack - sp -2
                           4767 ;------------------------------------------------------------
                           4768 ;	main.c:480: message_handler(void)
                           4769 ;	-----------------------------------------
                           4770 ;	 function message_handler
                           4771 ;	-----------------------------------------
   9577                    4772 _message_handler:
   9577 E5 81              4773 	mov	a,sp
   9579 24 0C              4774 	add	a,#0x0C
   957B F5 81              4775 	mov	sp,a
                           4776 ;	main.c:488: if(uip_newdata()) {
   957D 90 08 57           4777 	mov	dptr,#_uip_flags
   9580 E0                 4778 	movx	a,@dptr
   9581 FF                 4779 	mov	r7,a
   9582 20 E1 03           4780 	jb	acc.1,00187$
   9585 02 99 CB           4781 	ljmp	00143$
   9588                    4782 00187$:
                           4783 ;	main.c:489: len = uip_datalen();
   9588 90 08 53           4784 	mov	dptr,#_uip_len
   958B E0                 4785 	movx	a,@dptr
   958C FE                 4786 	mov	r6,a
   958D A3                 4787 	inc	dptr
   958E E0                 4788 	movx	a,@dptr
   958F FF                 4789 	mov	r7,a
                           4790 ;	main.c:490: memcpy(output_buf, uip_appdata, len);
   9590 C0 07              4791 	push	ar7
   9592 C0 06              4792 	push	ar6
   9594 C0 06              4793 	push	ar6
   9596 C0 07              4794 	push	ar7
   9598 90 08 4D           4795 	mov	dptr,#_uip_appdata
   959B E0                 4796 	movx	a,@dptr
   959C C0 E0              4797 	push	acc
   959E A3                 4798 	inc	dptr
   959F E0                 4799 	movx	a,@dptr
   95A0 C0 E0              4800 	push	acc
   95A2 A3                 4801 	inc	dptr
   95A3 E0                 4802 	movx	a,@dptr
   95A4 C0 E0              4803 	push	acc
   95A6 90 00 04           4804 	mov	dptr,#_output_buf
   95A9 75 F0 00           4805 	mov	b,#0x00
   95AC 78 7A              4806 	mov	r0,#_memcpy
   95AE 79 47              4807 	mov	r1,#(_memcpy >> 8)
   95B0 7A 00              4808 	mov	r2,#(_memcpy >> 16)
   95B2 12 06 D5           4809 	lcall	__sdcc_banked_call
   95B5 E5 81              4810 	mov	a,sp
   95B7 24 FB              4811 	add	a,#0xfb
   95B9 F5 81              4812 	mov	sp,a
   95BB D0 06              4813 	pop	ar6
   95BD D0 07              4814 	pop	ar7
                           4815 ;	main.c:500: security_header = (security_header_t *)output_buf;
                           4816 ;	main.c:501: if (security_header->content_type == SECURITY_SERVER_HELLO) {
   95BF 7B 04              4817 	mov	r3,#_output_buf
   95C1 7C 00              4818 	mov	r4,#(_output_buf >> 8)
   95C3 7D 00              4819 	mov	r5,#0x00
   95C5 8B 82              4820 	mov	dpl,r3
   95C7 8C 83              4821 	mov	dph,r4
   95C9 8D F0              4822 	mov	b,r5
   95CB 12 4B C9           4823 	lcall	__gptrget
   95CE 03                 4824 	rr	a
   95CF 03                 4825 	rr	a
   95D0 54 07              4826 	anl	a,#0x07
   95D2 FB                 4827 	mov	r3,a
   95D3 BB 01 02           4828 	cjne	r3,#0x01,00188$
   95D6 80 03              4829 	sjmp	00189$
   95D8                    4830 00188$:
   95D8 02 96 71           4831 	ljmp	00139$
   95DB                    4832 00189$:
                           4833 ;	main.c:502: data = output_buf + sizeof(security_server_hello_msg_t);
   95DB E5 81              4834 	mov	a,sp
   95DD 24 F5              4835 	add	a,#0xf5
   95DF F8                 4836 	mov	r0,a
   95E0 76 07              4837 	mov	@r0,#(_output_buf + 0x0003)
   95E2 08                 4838 	inc	r0
   95E3 76 00              4839 	mov	@r0,#((_output_buf + 0x0003) >> 8)
   95E5 08                 4840 	inc	r0
   95E6 76 00              4841 	mov	@r0,#0x00
                           4842 ;	main.c:510: len1 = decrypt_data_by_master_key(data, security_header->len, data);
   95E8 90 00 05           4843 	mov	dptr,#(_output_buf + 0x0001)
   95EB 75 F0 00           4844 	mov	b,#0x00
   95EE 12 4B C9           4845 	lcall	__gptrget
   95F1 FA                 4846 	mov	r2,a
   95F2 A3                 4847 	inc	dptr
   95F3 12 4B C9           4848 	lcall	__gptrget
   95F6 FD                 4849 	mov	r5,a
   95F7 E5 81              4850 	mov	a,sp
   95F9 24 F5              4851 	add	a,#0xf5
   95FB F8                 4852 	mov	r0,a
   95FC E6                 4853 	mov	a,@r0
   95FD C0 E0              4854 	push	acc
   95FF 08                 4855 	inc	r0
   9600 E6                 4856 	mov	a,@r0
   9601 C0 E0              4857 	push	acc
   9603 08                 4858 	inc	r0
   9604 E6                 4859 	mov	a,@r0
   9605 C0 E0              4860 	push	acc
   9607 C0 02              4861 	push	ar2
   9609 C0 05              4862 	push	ar5
   960B E5 81              4863 	mov	a,sp
   960D 24 F0              4864 	add	a,#0xf0
   960F F8                 4865 	mov	r0,a
   9610 86 82              4866 	mov	dpl,@r0
   9612 08                 4867 	inc	r0
   9613 86 83              4868 	mov	dph,@r0
   9615 08                 4869 	inc	r0
   9616 86 F0              4870 	mov	b,@r0
   9618 78 BE              4871 	mov	r0,#_decrypt_data_by_master_key
   961A 79 A2              4872 	mov	r1,#(_decrypt_data_by_master_key >> 8)
   961C 7A 04              4873 	mov	r2,#(_decrypt_data_by_master_key >> 16)
   961E 12 06 D5           4874 	lcall	__sdcc_banked_call
   9621 AC 82              4875 	mov	r4,dpl
   9623 AD 83              4876 	mov	r5,dph
   9625 E5 81              4877 	mov	a,sp
   9627 24 FB              4878 	add	a,#0xfb
   9629 F5 81              4879 	mov	sp,a
                           4880 ;	main.c:518: if (len1) {
   962B EC                 4881 	mov	a,r4
   962C 4D                 4882 	orl	a,r5
   962D 60 3F              4883 	jz	00104$
                           4884 ;	main.c:519: if (set_network_shared_key(data, security_header->key_version)) {
   962F 7F 04              4885 	mov	r7,#_output_buf
   9631 7E 00              4886 	mov	r6,#(_output_buf >> 8)
   9633 7D 00              4887 	mov	r5,#0x00
   9635 8F 82              4888 	mov	dpl,r7
   9637 8E 83              4889 	mov	dph,r6
   9639 8D F0              4890 	mov	b,r5
   963B 12 4B C9           4891 	lcall	__gptrget
   963E C4                 4892 	swap	a
   963F 03                 4893 	rr	a
   9640 54 07              4894 	anl	a,#0x07
   9642 FB                 4895 	mov	r3,a
   9643 7A 00              4896 	mov	r2,#0x00
   9645 C0 03              4897 	push	ar3
   9647 C0 02              4898 	push	ar2
   9649 E5 81              4899 	mov	a,sp
   964B 24 F3              4900 	add	a,#0xf3
   964D F8                 4901 	mov	r0,a
   964E 86 82              4902 	mov	dpl,@r0
   9650 08                 4903 	inc	r0
   9651 86 83              4904 	mov	dph,@r0
   9653 08                 4905 	inc	r0
   9654 86 F0              4906 	mov	b,@r0
   9656 78 F5              4907 	mov	r0,#_set_network_shared_key
   9658 79 9F              4908 	mov	r1,#(_set_network_shared_key >> 8)
   965A 7A 04              4909 	mov	r2,#(_set_network_shared_key >> 16)
   965C 12 06 D5           4910 	lcall	__sdcc_banked_call
   965F AB 82              4911 	mov	r3,dpl
   9661 15 81              4912 	dec	sp
   9663 15 81              4913 	dec	sp
   9665 EB                 4914 	mov	a,r3
   9666 60 06              4915 	jz	00104$
                           4916 ;	main.c:520: auth_success = 1;
   9668 90 1D 99           4917 	mov	dptr,#_auth_success
   966B 74 01              4918 	mov	a,#0x01
   966D F0                 4919 	movx	@dptr,a
   966E                    4920 00104$:
                           4921 ;	main.c:524: return;
   966E 02 99 CB           4922 	ljmp	00143$
   9671                    4923 00139$:
                           4924 ;	main.c:525: } else if(security_header->content_type == SECURITY_ERROR) {
   9671 C0 06              4925 	push	ar6
   9673 C0 07              4926 	push	ar7
   9675 7A 04              4927 	mov	r2,#_output_buf
   9677 7B 00              4928 	mov	r3,#(_output_buf >> 8)
   9679 7F 00              4929 	mov	r7,#0x00
   967B 8A 82              4930 	mov	dpl,r2
   967D 8B 83              4931 	mov	dph,r3
   967F 8F F0              4932 	mov	b,r7
   9681 12 4B C9           4933 	lcall	__gptrget
   9684 03                 4934 	rr	a
   9685 03                 4935 	rr	a
   9686 54 07              4936 	anl	a,#0x07
   9688 FA                 4937 	mov	r2,a
   9689 BA 03 02           4938 	cjne	r2,#0x03,00192$
   968C 80 07              4939 	sjmp	00193$
   968E                    4940 00192$:
   968E D0 07              4941 	pop	ar7
   9690 D0 06              4942 	pop	ar6
   9692 02 97 1B           4943 	ljmp	00136$
   9695                    4944 00193$:
   9695 D0 07              4945 	pop	ar7
   9697 D0 06              4946 	pop	ar6
                           4947 ;	main.c:526: i = *((uint16_t *)(security_header + sizeof(security_header_t)));
   9699 90 00 0D           4948 	mov	dptr,#(_output_buf + 0x0009)
   969C 75 F0 00           4949 	mov	b,#0x00
   969F 12 4B C9           4950 	lcall	__gptrget
   96A2 FA                 4951 	mov	r2,a
   96A3 A3                 4952 	inc	dptr
   96A4 12 4B C9           4953 	lcall	__gptrget
   96A7 FB                 4954 	mov	r3,a
                           4955 ;	main.c:527: PRINTF("Security Error:%d", i);
   96A8 C0 03              4956 	push	ar3
   96AA C0 02              4957 	push	ar2
   96AC C0 02              4958 	push	ar2
   96AE C0 03              4959 	push	ar3
   96B0 74 DB              4960 	mov	a,#__str_13
   96B2 C0 E0              4961 	push	acc
   96B4 74 78              4962 	mov	a,#(__str_13 >> 8)
   96B6 C0 E0              4963 	push	acc
   96B8 74 80              4964 	mov	a,#0x80
   96BA C0 E0              4965 	push	acc
   96BC 78 6C              4966 	mov	r0,#_printf
   96BE 79 49              4967 	mov	r1,#(_printf >> 8)
   96C0 7A 00              4968 	mov	r2,#(_printf >> 16)
   96C2 12 06 D5           4969 	lcall	__sdcc_banked_call
   96C5 E5 81              4970 	mov	a,sp
   96C7 24 FB              4971 	add	a,#0xfb
   96C9 F5 81              4972 	mov	sp,a
   96CB D0 02              4973 	pop	ar2
   96CD D0 03              4974 	pop	ar3
                           4975 ;	main.c:528: if (i == SECURITY_ERROR_INVALID_KEY_VERSION || i == SECURITY_ERROR_DECRYPT_ERROR) {
   96CF BA 01 05           4976 	cjne	r2,#0x01,00194$
   96D2 BB 00 02           4977 	cjne	r3,#0x00,00194$
   96D5 80 06              4978 	sjmp	00107$
   96D7                    4979 00194$:
   96D7 BA 02 39           4980 	cjne	r2,#0x02,00108$
   96DA BB 00 36           4981 	cjne	r3,#0x00,00108$
   96DD                    4982 00107$:
                           4983 ;	main.c:529: shared_key = get_network_shared_key();
   96DD 78 EC              4984 	mov	r0,#_get_network_shared_key
   96DF 79 9F              4985 	mov	r1,#(_get_network_shared_key >> 8)
   96E1 7A 04              4986 	mov	r2,#(_get_network_shared_key >> 16)
   96E3 12 06 D5           4987 	lcall	__sdcc_banked_call
   96E6 C8                 4988 	xch	a,r0
   96E7 E5 81              4989 	mov	a,sp
   96E9 24 F8              4990 	add	a,#0xf8
   96EB C8                 4991 	xch	a,r0
   96EC A6 82              4992 	mov	@r0,dpl
   96EE 08                 4993 	inc	r0
   96EF A6 83              4994 	mov	@r0,dph
   96F1 08                 4995 	inc	r0
   96F2 A6 F0              4996 	mov	@r0,b
   96F4 E5 81              4997 	mov	a,sp
   96F6 24 F8              4998 	add	a,#0xf8
                           4999 ;	main.c:530: if (shared_key) {
   96F8 E5 81              5000 	mov	a,sp
   96FA 24 F8              5001 	add	a,#0xf8
   96FC F8                 5002 	mov	r0,a
   96FD E6                 5003 	mov	a,@r0
   96FE 08                 5004 	inc	r0
   96FF 46                 5005 	orl	a,@r0
   9700 60 11              5006 	jz	00108$
                           5007 ;	main.c:531: shared_key->used = false;
   9702 E5 81              5008 	mov	a,sp
   9704 24 F8              5009 	add	a,#0xf8
   9706 F8                 5010 	mov	r0,a
   9707 86 82              5011 	mov	dpl,@r0
   9709 08                 5012 	inc	r0
   970A 86 83              5013 	mov	dph,@r0
   970C 08                 5014 	inc	r0
   970D 86 F0              5015 	mov	b,@r0
   970F E4                 5016 	clr	a
   9710 12 3D 7D           5017 	lcall	__gptrput
   9713                    5018 00108$:
                           5019 ;	main.c:534: auth_success = 0;
   9713 90 1D 99           5020 	mov	dptr,#_auth_success
   9716 E4                 5021 	clr	a
   9717 F0                 5022 	movx	@dptr,a
                           5023 ;	main.c:535: return;
   9718 02 99 CB           5024 	ljmp	00143$
   971B                    5025 00136$:
                           5026 ;	main.c:536: } else if (security_header->content_type == SECURITY_DATA) {
   971B C0 06              5027 	push	ar6
   971D C0 07              5028 	push	ar7
   971F 7A 04              5029 	mov	r2,#_output_buf
   9721 7B 00              5030 	mov	r3,#(_output_buf >> 8)
   9723 7F 00              5031 	mov	r7,#0x00
   9725 8A 82              5032 	mov	dpl,r2
   9727 8B 83              5033 	mov	dph,r3
   9729 8F F0              5034 	mov	b,r7
   972B 12 4B C9           5035 	lcall	__gptrget
   972E 03                 5036 	rr	a
   972F 03                 5037 	rr	a
   9730 54 07              5038 	anl	a,#0x07
   9732 FA                 5039 	mov	r2,a
   9733 BA 02 02           5040 	cjne	r2,#0x02,00198$
   9736 80 07              5041 	sjmp	00199$
   9738                    5042 00198$:
   9738 D0 07              5043 	pop	ar7
   973A D0 06              5044 	pop	ar6
   973C 02 99 CB           5045 	ljmp	00143$
   973F                    5046 00199$:
   973F D0 07              5047 	pop	ar7
   9741 D0 06              5048 	pop	ar6
                           5049 ;	main.c:537: data = output_buf + sizeof(security_header_t);
   9743 E5 81              5050 	mov	a,sp
   9745 24 F5              5051 	add	a,#0xf5
   9747 F8                 5052 	mov	r0,a
   9748 76 07              5053 	mov	@r0,#(_output_buf + 0x0003)
   974A 08                 5054 	inc	r0
   974B 76 00              5055 	mov	@r0,#((_output_buf + 0x0003) >> 8)
   974D 08                 5056 	inc	r0
   974E 76 00              5057 	mov	@r0,#0x00
                           5058 ;	main.c:538: len1 = decrypt_data_by_network_shared_key(data, len - sizeof(security_header_t), data);
   9750 EE                 5059 	mov	a,r6
   9751 24 FD              5060 	add	a,#0xFD
   9753 FE                 5061 	mov	r6,a
   9754 EF                 5062 	mov	a,r7
   9755 34 FF              5063 	addc	a,#0xFF
   9757 FF                 5064 	mov	r7,a
   9758 E5 81              5065 	mov	a,sp
   975A 24 F5              5066 	add	a,#0xf5
   975C F8                 5067 	mov	r0,a
   975D E6                 5068 	mov	a,@r0
   975E C0 E0              5069 	push	acc
   9760 08                 5070 	inc	r0
   9761 E6                 5071 	mov	a,@r0
   9762 C0 E0              5072 	push	acc
   9764 08                 5073 	inc	r0
   9765 E6                 5074 	mov	a,@r0
   9766 C0 E0              5075 	push	acc
   9768 C0 06              5076 	push	ar6
   976A C0 07              5077 	push	ar7
   976C E5 81              5078 	mov	a,sp
   976E 24 F0              5079 	add	a,#0xf0
   9770 F8                 5080 	mov	r0,a
   9771 86 82              5081 	mov	dpl,@r0
   9773 08                 5082 	inc	r0
   9774 86 83              5083 	mov	dph,@r0
   9776 08                 5084 	inc	r0
   9777 86 F0              5085 	mov	b,@r0
   9779 78 D6              5086 	mov	r0,#_decrypt_data_by_network_shared_key
   977B 79 A0              5087 	mov	r1,#(_decrypt_data_by_network_shared_key >> 8)
   977D 7A 04              5088 	mov	r2,#(_decrypt_data_by_network_shared_key >> 16)
   977F 12 06 D5           5089 	lcall	__sdcc_banked_call
   9782 AE 82              5090 	mov	r6,dpl
   9784 AF 83              5091 	mov	r7,dph
   9786 E5 81              5092 	mov	a,sp
   9788 24 FB              5093 	add	a,#0xfb
   978A F5 81              5094 	mov	sp,a
   978C 8E 04              5095 	mov	ar4,r6
   978E 8F 05              5096 	mov	ar5,r7
                           5097 ;	main.c:539: if (!len1) {
   9790 EC                 5098 	mov	a,r4
   9791 4D                 5099 	orl	a,r5
   9792 70 1E              5100 	jnz	00111$
                           5101 ;	main.c:540: PRINTF("Decrypt Error");
   9794 74 ED              5102 	mov	a,#__str_14
   9796 C0 E0              5103 	push	acc
   9798 74 78              5104 	mov	a,#(__str_14 >> 8)
   979A C0 E0              5105 	push	acc
   979C 74 80              5106 	mov	a,#0x80
   979E C0 E0              5107 	push	acc
   97A0 78 6C              5108 	mov	r0,#_printf
   97A2 79 49              5109 	mov	r1,#(_printf >> 8)
   97A4 7A 00              5110 	mov	r2,#(_printf >> 16)
   97A6 12 06 D5           5111 	lcall	__sdcc_banked_call
   97A9 15 81              5112 	dec	sp
   97AB 15 81              5113 	dec	sp
   97AD 15 81              5114 	dec	sp
                           5115 ;	main.c:541: return;
   97AF 02 99 CB           5116 	ljmp	00143$
   97B2                    5117 00111$:
                           5118 ;	main.c:549: if (len1 >= sizeof(msg_header_t)) {
   97B2 C3                 5119 	clr	c
   97B3 EC                 5120 	mov	a,r4
   97B4 94 0C              5121 	subb	a,#0x0C
   97B6 ED                 5122 	mov	a,r5
   97B7 94 00              5123 	subb	a,#0x00
   97B9 50 03              5124 	jnc	00201$
   97BB 02 99 CB           5125 	ljmp	00143$
   97BE                    5126 00201$:
                           5127 ;	main.c:550: if (memcmp(get_msg_device_id(data), g_device.device_id, DEV_ID_SIZE) == 0) {
   97BE E5 81              5128 	mov	a,sp
   97C0 24 F5              5129 	add	a,#0xf5
   97C2 F8                 5130 	mov	r0,a
   97C3 A9 81              5131 	mov	r1,sp
   97C5 19                 5132 	dec	r1
   97C6 19                 5133 	dec	r1
   97C7 E6                 5134 	mov	a,@r0
   97C8 F7                 5135 	mov	@r1,a
   97C9 08                 5136 	inc	r0
   97CA 09                 5137 	inc	r1
   97CB E6                 5138 	mov	a,@r0
   97CC F7                 5139 	mov	@r1,a
   97CD 08                 5140 	inc	r0
   97CE 09                 5141 	inc	r1
   97CF E6                 5142 	mov	a,@r0
   97D0 F7                 5143 	mov	@r1,a
   97D1 A8 81              5144 	mov	r0,sp
   97D3 18                 5145 	dec	r0
   97D4 18                 5146 	dec	r0
   97D5 E5 81              5147 	mov	a,sp
   97D7 24 FB              5148 	add	a,#0xfb
   97D9 F9                 5149 	mov	r1,a
   97DA 74 04              5150 	mov	a,#0x04
   97DC 26                 5151 	add	a,@r0
   97DD F7                 5152 	mov	@r1,a
   97DE E4                 5153 	clr	a
   97DF 08                 5154 	inc	r0
   97E0 36                 5155 	addc	a,@r0
   97E1 09                 5156 	inc	r1
   97E2 F7                 5157 	mov	@r1,a
   97E3 08                 5158 	inc	r0
   97E4 09                 5159 	inc	r1
   97E5 E6                 5160 	mov	a,@r0
   97E6 F7                 5161 	mov	@r1,a
   97E7 E5 81              5162 	mov	a,sp
   97E9 24 FB              5163 	add	a,#0xfb
   97EB F8                 5164 	mov	r0,a
   97EC 86 02              5165 	mov	ar2,@r0
   97EE 08                 5166 	inc	r0
   97EF 86 06              5167 	mov	ar6,@r0
   97F1 08                 5168 	inc	r0
   97F2 86 07              5169 	mov	ar7,@r0
   97F4 74 08              5170 	mov	a,#0x08
   97F6 C0 E0              5171 	push	acc
   97F8 E4                 5172 	clr	a
   97F9 C0 E0              5173 	push	acc
   97FB 74 3D              5174 	mov	a,#_g_device
   97FD C0 E0              5175 	push	acc
   97FF 74 0F              5176 	mov	a,#(_g_device >> 8)
   9801 C0 E0              5177 	push	acc
   9803 E4                 5178 	clr	a
   9804 C0 E0              5179 	push	acc
   9806 8A 82              5180 	mov	dpl,r2
   9808 8E 83              5181 	mov	dph,r6
   980A 8F F0              5182 	mov	b,r7
   980C 78 C5              5183 	mov	r0,#_memcmp
   980E 79 41              5184 	mov	r1,#(_memcmp >> 8)
   9810 7A 00              5185 	mov	r2,#(_memcmp >> 16)
   9812 12 06 D5           5186 	lcall	__sdcc_banked_call
   9815 AE 82              5187 	mov	r6,dpl
   9817 AF 83              5188 	mov	r7,dph
   9819 E5 81              5189 	mov	a,sp
   981B 24 FB              5190 	add	a,#0xfb
   981D F5 81              5191 	mov	sp,a
   981F EE                 5192 	mov	a,r6
   9820 4F                 5193 	orl	a,r7
   9821 60 03              5194 	jz	00202$
   9823 02 99 B0           5195 	ljmp	00129$
   9826                    5196 00202$:
                           5197 ;	main.c:551: if (get_msg_type(data) == TYPE_REQUEST) {
   9826 A8 81              5198 	mov	r0,sp
   9828 18                 5199 	dec	r0
   9829 18                 5200 	dec	r0
   982A 86 02              5201 	mov	ar2,@r0
   982C 08                 5202 	inc	r0
   982D 86 06              5203 	mov	ar6,@r0
   982F 08                 5204 	inc	r0
   9830 86 07              5205 	mov	ar7,@r0
   9832 8A 82              5206 	mov	dpl,r2
   9834 8E 83              5207 	mov	dph,r6
   9836 8F F0              5208 	mov	b,r7
   9838 12 4B C9           5209 	lcall	__gptrget
   983B 54 FC              5210 	anl	a,#0xFC
   983D 60 03              5211 	jz	00203$
   983F 02 99 6A           5212 	ljmp	00126$
   9842                    5213 00203$:
                           5214 ;	main.c:553: method = get_msg_method(data);
   9842 A8 81              5215 	mov	r0,sp
   9844 18                 5216 	dec	r0
   9845 18                 5217 	dec	r0
   9846 74 01              5218 	mov	a,#0x01
   9848 26                 5219 	add	a,@r0
   9849 FA                 5220 	mov	r2,a
   984A E4                 5221 	clr	a
   984B 08                 5222 	inc	r0
   984C 36                 5223 	addc	a,@r0
   984D FE                 5224 	mov	r6,a
   984E 08                 5225 	inc	r0
   984F 86 07              5226 	mov	ar7,@r0
   9851 8A 82              5227 	mov	dpl,r2
   9853 8E 83              5228 	mov	dph,r6
   9855 8F F0              5229 	mov	b,r7
   9857 12 4B C9           5230 	lcall	__gptrget
   985A FA                 5231 	mov	r2,a
   985B FF                 5232 	mov	r7,a
                           5233 ;	main.c:554: switch(method){
   985C BF 00 02           5234 	cjne	r7,#0x00,00204$
   985F 80 25              5235 	sjmp	00112$
   9861                    5236 00204$:
   9861 BF 02 03           5237 	cjne	r7,#0x02,00205$
   9864 02 98 E7           5238 	ljmp	00115$
   9867                    5239 00205$:
   9867 BF 03 02           5240 	cjne	r7,#0x03,00206$
   986A 80 5A              5241 	sjmp	00114$
   986C                    5242 00206$:
   986C BF 04 02           5243 	cjne	r7,#0x04,00207$
   986F 80 21              5244 	sjmp	00113$
   9871                    5245 00207$:
   9871 BF 06 03           5246 	cjne	r7,#0x06,00208$
   9874 02 99 08           5247 	ljmp	00116$
   9877                    5248 00208$:
   9877 BF 0C 03           5249 	cjne	r7,#0x0C,00209$
   987A 02 99 14           5250 	ljmp	00117$
   987D                    5251 00209$:
   987D BF 0D 03           5252 	cjne	r7,#0x0D,00210$
   9880 02 99 48           5253 	ljmp	00118$
   9883                    5254 00210$:
   9883 02 99 68           5255 	ljmp	00119$
                           5256 ;	main.c:555: case METHOD_NEW_DEVICE:
   9886                    5257 00112$:
                           5258 ;	main.c:556: discover_request_handler();
   9886 78 77              5259 	mov	r0,#_discover_request_handler
   9888 79 81              5260 	mov	r1,#(_discover_request_handler >> 8)
   988A 7A 02              5261 	mov	r2,#(_discover_request_handler >> 16)
   988C 12 06 D5           5262 	lcall	__sdcc_banked_call
                           5263 ;	main.c:557: break;
   988F 02 99 CB           5264 	ljmp	00143$
                           5265 ;	main.c:558: case METHOD_REPORT:
   9892                    5266 00113$:
                           5267 ;	main.c:559: report_request_handler(get_msg_device_id(data), get_msg_parameters(data));
   9892 A8 81              5268 	mov	r0,sp
   9894 18                 5269 	dec	r0
   9895 18                 5270 	dec	r0
   9896 74 0C              5271 	mov	a,#0x0C
   9898 26                 5272 	add	a,@r0
   9899 FA                 5273 	mov	r2,a
   989A E4                 5274 	clr	a
   989B 08                 5275 	inc	r0
   989C 36                 5276 	addc	a,@r0
   989D FD                 5277 	mov	r5,a
   989E 08                 5278 	inc	r0
   989F 86 06              5279 	mov	ar6,@r0
   98A1 C0 02              5280 	push	ar2
   98A3 C0 05              5281 	push	ar5
   98A5 C0 06              5282 	push	ar6
   98A7 E5 81              5283 	mov	a,sp
   98A9 24 F8              5284 	add	a,#0xf8
   98AB F8                 5285 	mov	r0,a
   98AC 86 82              5286 	mov	dpl,@r0
   98AE 08                 5287 	inc	r0
   98AF 86 83              5288 	mov	dph,@r0
   98B1 08                 5289 	inc	r0
   98B2 86 F0              5290 	mov	b,@r0
   98B4 78 C8              5291 	mov	r0,#_report_request_handler
   98B6 79 82              5292 	mov	r1,#(_report_request_handler >> 8)
   98B8 7A 02              5293 	mov	r2,#(_report_request_handler >> 16)
   98BA 12 06 D5           5294 	lcall	__sdcc_banked_call
   98BD 15 81              5295 	dec	sp
   98BF 15 81              5296 	dec	sp
   98C1 15 81              5297 	dec	sp
                           5298 ;	main.c:560: break;
   98C3 02 99 CB           5299 	ljmp	00143$
                           5300 ;	main.c:561: case METHOD_SET_RESOURCES:
   98C6                    5301 00114$:
                           5302 ;	main.c:562: set_objects_request_handler(get_msg_parameters(data));
   98C6 A8 81              5303 	mov	r0,sp
   98C8 18                 5304 	dec	r0
   98C9 18                 5305 	dec	r0
   98CA 74 0C              5306 	mov	a,#0x0C
   98CC 26                 5307 	add	a,@r0
   98CD FC                 5308 	mov	r4,a
   98CE E4                 5309 	clr	a
   98CF 08                 5310 	inc	r0
   98D0 36                 5311 	addc	a,@r0
   98D1 FD                 5312 	mov	r5,a
   98D2 08                 5313 	inc	r0
   98D3 86 06              5314 	mov	ar6,@r0
   98D5 8C 82              5315 	mov	dpl,r4
   98D7 8D 83              5316 	mov	dph,r5
   98D9 8E F0              5317 	mov	b,r6
   98DB 78 CB              5318 	mov	r0,#_set_objects_request_handler
   98DD 79 82              5319 	mov	r1,#(_set_objects_request_handler >> 8)
   98DF 7A 02              5320 	mov	r2,#(_set_objects_request_handler >> 16)
   98E1 12 06 D5           5321 	lcall	__sdcc_banked_call
                           5322 ;	main.c:563: break;
   98E4 02 99 CB           5323 	ljmp	00143$
                           5324 ;	main.c:564: case METHOD_GET_RESOURCES:
   98E7                    5325 00115$:
                           5326 ;	main.c:565: get_resources_request_handler(get_msg_parameters(data));
   98E7 A8 81              5327 	mov	r0,sp
   98E9 18                 5328 	dec	r0
   98EA 18                 5329 	dec	r0
   98EB 74 0C              5330 	mov	a,#0x0C
   98ED 26                 5331 	add	a,@r0
   98EE FC                 5332 	mov	r4,a
   98EF E4                 5333 	clr	a
   98F0 08                 5334 	inc	r0
   98F1 36                 5335 	addc	a,@r0
   98F2 FD                 5336 	mov	r5,a
   98F3 08                 5337 	inc	r0
   98F4 86 06              5338 	mov	ar6,@r0
   98F6 8C 82              5339 	mov	dpl,r4
   98F8 8D 83              5340 	mov	dph,r5
   98FA 8E F0              5341 	mov	b,r6
   98FC 78 9B              5342 	mov	r0,#_get_resources_request_handler
   98FE 79 87              5343 	mov	r1,#(_get_resources_request_handler >> 8)
   9900 7A 02              5344 	mov	r2,#(_get_resources_request_handler >> 16)
   9902 12 06 D5           5345 	lcall	__sdcc_banked_call
                           5346 ;	main.c:566: break;
   9905 02 99 CB           5347 	ljmp	00143$
                           5348 ;	main.c:578: case METHOD_RELOAD:
   9908                    5349 00116$:
                           5350 ;	main.c:579: reload_request_handler();
   9908 78 07              5351 	mov	r0,#_reload_request_handler
   990A 79 8E              5352 	mov	r1,#(_reload_request_handler >> 8)
   990C 7A 02              5353 	mov	r2,#(_reload_request_handler >> 16)
   990E 12 06 D5           5354 	lcall	__sdcc_banked_call
                           5355 ;	main.c:580: break;
   9911 02 99 CB           5356 	ljmp	00143$
                           5357 ;	main.c:581: case METHOD_SUBSCRIBE:
   9914                    5358 00117$:
                           5359 ;	main.c:582: subscribe_request_handler(get_msg_device_id(data), get_msg_parameters(data));
   9914 A8 81              5360 	mov	r0,sp
   9916 18                 5361 	dec	r0
   9917 18                 5362 	dec	r0
   9918 74 0C              5363 	mov	a,#0x0C
   991A 26                 5364 	add	a,@r0
   991B FC                 5365 	mov	r4,a
   991C E4                 5366 	clr	a
   991D 08                 5367 	inc	r0
   991E 36                 5368 	addc	a,@r0
   991F FD                 5369 	mov	r5,a
   9920 08                 5370 	inc	r0
   9921 86 06              5371 	mov	ar6,@r0
   9923 C0 04              5372 	push	ar4
   9925 C0 05              5373 	push	ar5
   9927 C0 06              5374 	push	ar6
   9929 E5 81              5375 	mov	a,sp
   992B 24 F8              5376 	add	a,#0xf8
   992D F8                 5377 	mov	r0,a
   992E 86 82              5378 	mov	dpl,@r0
   9930 08                 5379 	inc	r0
   9931 86 83              5380 	mov	dph,@r0
   9933 08                 5381 	inc	r0
   9934 86 F0              5382 	mov	b,@r0
   9936 78 0A              5383 	mov	r0,#_subscribe_request_handler
   9938 79 8E              5384 	mov	r1,#(_subscribe_request_handler >> 8)
   993A 7A 02              5385 	mov	r2,#(_subscribe_request_handler >> 16)
   993C 12 06 D5           5386 	lcall	__sdcc_banked_call
   993F 15 81              5387 	dec	sp
   9941 15 81              5388 	dec	sp
   9943 15 81              5389 	dec	sp
                           5390 ;	main.c:583: break;
   9945 02 99 CB           5391 	ljmp	00143$
                           5392 ;	main.c:584: case METHOD_UNSUBSCRIBE:
   9948                    5393 00118$:
                           5394 ;	main.c:585: unsubscribe_request_handler(get_msg_parameters(data));
   9948 A8 81              5395 	mov	r0,sp
   994A 18                 5396 	dec	r0
   994B 18                 5397 	dec	r0
   994C 74 0C              5398 	mov	a,#0x0C
   994E 26                 5399 	add	a,@r0
   994F FC                 5400 	mov	r4,a
   9950 E4                 5401 	clr	a
   9951 08                 5402 	inc	r0
   9952 36                 5403 	addc	a,@r0
   9953 FD                 5404 	mov	r5,a
   9954 08                 5405 	inc	r0
   9955 86 06              5406 	mov	ar6,@r0
   9957 8C 82              5407 	mov	dpl,r4
   9959 8D 83              5408 	mov	dph,r5
   995B 8E F0              5409 	mov	b,r6
   995D 78 62              5410 	mov	r0,#_unsubscribe_request_handler
   995F 79 93              5411 	mov	r1,#(_unsubscribe_request_handler >> 8)
   9961 7A 02              5412 	mov	r2,#(_unsubscribe_request_handler >> 16)
   9963 12 06 D5           5413 	lcall	__sdcc_banked_call
                           5414 ;	main.c:586: break;
                           5415 ;	main.c:587: default:
   9966 80 63              5416 	sjmp	00143$
   9968                    5417 00119$:
                           5418 ;	main.c:588: return;
                           5419 ;	main.c:589: }
   9968 80 61              5420 	sjmp	00143$
   996A                    5421 00126$:
                           5422 ;	main.c:591: method = get_msg_method(data);
   996A A8 81              5423 	mov	r0,sp
   996C 18                 5424 	dec	r0
   996D 18                 5425 	dec	r0
   996E 74 01              5426 	mov	a,#0x01
   9970 26                 5427 	add	a,@r0
   9971 FC                 5428 	mov	r4,a
   9972 E4                 5429 	clr	a
   9973 08                 5430 	inc	r0
   9974 36                 5431 	addc	a,@r0
   9975 FD                 5432 	mov	r5,a
   9976 08                 5433 	inc	r0
   9977 86 06              5434 	mov	ar6,@r0
   9979 8C 82              5435 	mov	dpl,r4
   997B 8D 83              5436 	mov	dph,r5
   997D 8E F0              5437 	mov	b,r6
   997F 12 4B C9           5438 	lcall	__gptrget
   9982 FC                 5439 	mov	r4,a
   9983 FF                 5440 	mov	r7,a
                           5441 ;	main.c:592: switch(method){
   9984 BF 00 02           5442 	cjne	r7,#0x00,00211$
   9987 80 05              5443 	sjmp	00121$
   9989                    5444 00211$:
                           5445 ;	main.c:593: case METHOD_NEW_DEVICE:
   9989 BF 01 22           5446 	cjne	r7,#0x01,00123$
   998C 80 3D              5447 	sjmp	00143$
   998E                    5448 00121$:
                           5449 ;	main.c:594: register_response_handler(get_msg_parameters(data));
   998E A8 81              5450 	mov	r0,sp
   9990 18                 5451 	dec	r0
   9991 18                 5452 	dec	r0
   9992 74 0C              5453 	mov	a,#0x0C
   9994 26                 5454 	add	a,@r0
   9995 FD                 5455 	mov	r5,a
   9996 E4                 5456 	clr	a
   9997 08                 5457 	inc	r0
   9998 36                 5458 	addc	a,@r0
   9999 FE                 5459 	mov	r6,a
   999A 08                 5460 	inc	r0
   999B 86 07              5461 	mov	ar7,@r0
   999D 8D 82              5462 	mov	dpl,r5
   999F 8E 83              5463 	mov	dph,r6
   99A1 8F F0              5464 	mov	b,r7
   99A3 78 CF              5465 	mov	r0,#_register_response_handler
   99A5 79 81              5466 	mov	r1,#(_register_response_handler >> 8)
   99A7 7A 02              5467 	mov	r2,#(_register_response_handler >> 16)
   99A9 12 06 D5           5468 	lcall	__sdcc_banked_call
                           5469 ;	main.c:595: break;
                           5470 ;	main.c:598: default:
   99AC 80 1D              5471 	sjmp	00143$
   99AE                    5472 00123$:
                           5473 ;	main.c:599: return;
                           5474 ;	main.c:600: }
   99AE 80 1B              5475 	sjmp	00143$
   99B0                    5476 00129$:
                           5477 ;	main.c:603: PRINTF("It is not for me\n");
   99B0 74 FB              5478 	mov	a,#__str_15
   99B2 C0 E0              5479 	push	acc
   99B4 74 78              5480 	mov	a,#(__str_15 >> 8)
   99B6 C0 E0              5481 	push	acc
   99B8 74 80              5482 	mov	a,#0x80
   99BA C0 E0              5483 	push	acc
   99BC 78 6C              5484 	mov	r0,#_printf
   99BE 79 49              5485 	mov	r1,#(_printf >> 8)
   99C0 7A 00              5486 	mov	r2,#(_printf >> 16)
   99C2 12 06 D5           5487 	lcall	__sdcc_banked_call
   99C5 15 81              5488 	dec	sp
   99C7 15 81              5489 	dec	sp
   99C9 15 81              5490 	dec	sp
   99CB                    5491 00143$:
   99CB E5 81              5492 	mov	a,sp
   99CD 24 F4              5493 	add	a,#0xF4
   99CF F5 81              5494 	mov	sp,a
   99D1 02 06 E7           5495 	ljmp	__sdcc_banked_ret
                           5496 ;------------------------------------------------------------
                           5497 ;Allocation info for local variables in function 'print_local_addresses'
                           5498 ;------------------------------------------------------------
                           5499 ;i                         Allocated to registers r6 r7 
                           5500 ;state                     Allocated to registers r2 
                           5501 ;sloc0                     Allocated to stack - sp -1
                           5502 ;------------------------------------------------------------
                           5503 ;	main.c:611: print_local_addresses(void)
                           5504 ;	-----------------------------------------
                           5505 ;	 function print_local_addresses
                           5506 ;	-----------------------------------------
   99D4                    5507 _print_local_addresses:
   99D4 05 81              5508 	inc	sp
   99D6 05 81              5509 	inc	sp
                           5510 ;	main.c:616: PRINTF("Client IPv6 addresses: ");
   99D8 74 0D              5511 	mov	a,#__str_16
   99DA C0 E0              5512 	push	acc
   99DC 74 79              5513 	mov	a,#(__str_16 >> 8)
   99DE C0 E0              5514 	push	acc
   99E0 74 80              5515 	mov	a,#0x80
   99E2 C0 E0              5516 	push	acc
   99E4 78 6C              5517 	mov	r0,#_printf
   99E6 79 49              5518 	mov	r1,#(_printf >> 8)
   99E8 7A 00              5519 	mov	r2,#(_printf >> 16)
   99EA 12 06 D5           5520 	lcall	__sdcc_banked_call
   99ED 15 81              5521 	dec	sp
   99EF 15 81              5522 	dec	sp
   99F1 15 81              5523 	dec	sp
                           5524 ;	main.c:617: for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
   99F3 7E 00              5525 	mov	r6,#0x00
   99F5 7F 00              5526 	mov	r7,#0x00
   99F7 7C 00              5527 	mov	r4,#0x00
   99F9 7D 00              5528 	mov	r5,#0x00
   99FB A8 81              5529 	mov	r0,sp
   99FD 18                 5530 	dec	r0
   99FE E4                 5531 	clr	a
   99FF F6                 5532 	mov	@r0,a
   9A00 08                 5533 	inc	r0
   9A01 F6                 5534 	mov	@r0,a
   9A02                    5535 00107$:
   9A02 C3                 5536 	clr	c
   9A03 EE                 5537 	mov	a,r6
   9A04 94 03              5538 	subb	a,#0x03
   9A06 EF                 5539 	mov	a,r7
   9A07 94 00              5540 	subb	a,#0x00
   9A09 40 03              5541 	jc	00124$
   9A0B 02 9A C5           5542 	ljmp	00111$
   9A0E                    5543 00124$:
                           5544 ;	main.c:618: state = uip_ds6_if.addr_list[i].state;
   9A0E C0 06              5545 	push	ar6
   9A10 C0 07              5546 	push	ar7
   9A12 E5 81              5547 	mov	a,sp
   9A14 24 FD              5548 	add	a,#0xfd
   9A16 F8                 5549 	mov	r0,a
   9A17 E6                 5550 	mov	a,@r0
   9A18 24 70              5551 	add	a,#(_uip_ds6_if + 0x0012)
   9A1A FE                 5552 	mov	r6,a
   9A1B 08                 5553 	inc	r0
   9A1C E6                 5554 	mov	a,@r0
   9A1D 34 02              5555 	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
   9A1F FF                 5556 	mov	r7,a
   9A20 74 11              5557 	mov	a,#0x11
   9A22 2E                 5558 	add	a,r6
   9A23 F5 82              5559 	mov	dpl,a
   9A25 E4                 5560 	clr	a
   9A26 3F                 5561 	addc	a,r7
   9A27 F5 83              5562 	mov	dph,a
   9A29 E0                 5563 	movx	a,@dptr
   9A2A FB                 5564 	mov	r3,a
   9A2B FA                 5565 	mov	r2,a
                           5566 ;	main.c:619: if(uip_ds6_if.addr_list[i].isused &&
   9A2C 8E 82              5567 	mov	dpl,r6
   9A2E 8F 83              5568 	mov	dph,r7
   9A30 E0                 5569 	movx	a,@dptr
   9A31 D0 07              5570 	pop	ar7
   9A33 D0 06              5571 	pop	ar6
   9A35 60 74              5572 	jz	00109$
                           5573 ;	main.c:620: (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
   9A37 EA                 5574 	mov	a,r2
   9A38 60 03              5575 	jz	00103$
   9A3A BA 01 6E           5576 	cjne	r2,#0x01,00109$
   9A3D                    5577 00103$:
                           5578 ;	main.c:621: PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
   9A3D C0 06              5579 	push	ar6
   9A3F C0 07              5580 	push	ar7
   9A41 EC                 5581 	mov	a,r4
   9A42 24 70              5582 	add	a,#(_uip_ds6_if + 0x0012)
   9A44 FE                 5583 	mov	r6,a
   9A45 ED                 5584 	mov	a,r5
   9A46 34 02              5585 	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
   9A48 FF                 5586 	mov	r7,a
   9A49 0E                 5587 	inc	r6
   9A4A BE 00 01           5588 	cjne	r6,#0x00,00129$
   9A4D 0F                 5589 	inc	r7
   9A4E                    5590 00129$:
   9A4E 8F 03              5591 	mov	ar3,r7
   9A50 7F 00              5592 	mov	r7,#0x00
   9A52 8E 82              5593 	mov	dpl,r6
   9A54 8B 83              5594 	mov	dph,r3
   9A56 8F F0              5595 	mov	b,r7
   9A58 C0 07              5596 	push	ar7
   9A5A C0 06              5597 	push	ar6
   9A5C C0 05              5598 	push	ar5
   9A5E C0 04              5599 	push	ar4
   9A60 C0 02              5600 	push	ar2
   9A62 78 6C              5601 	mov	r0,#_uip_debug_ipaddr_print
   9A64 79 BA              5602 	mov	r1,#(_uip_debug_ipaddr_print >> 8)
   9A66 7A 05              5603 	mov	r2,#(_uip_debug_ipaddr_print >> 16)
   9A68 12 06 D5           5604 	lcall	__sdcc_banked_call
                           5605 ;	main.c:622: PRINTF("\n");
   9A6B 74 73              5606 	mov	a,#__str_2
   9A6D C0 E0              5607 	push	acc
   9A6F 74 78              5608 	mov	a,#(__str_2 >> 8)
   9A71 C0 E0              5609 	push	acc
   9A73 74 80              5610 	mov	a,#0x80
   9A75 C0 E0              5611 	push	acc
   9A77 78 6C              5612 	mov	r0,#_printf
   9A79 79 49              5613 	mov	r1,#(_printf >> 8)
   9A7B 7A 00              5614 	mov	r2,#(_printf >> 16)
   9A7D 12 06 D5           5615 	lcall	__sdcc_banked_call
   9A80 15 81              5616 	dec	sp
   9A82 15 81              5617 	dec	sp
   9A84 15 81              5618 	dec	sp
   9A86 D0 02              5619 	pop	ar2
   9A88 D0 04              5620 	pop	ar4
   9A8A D0 05              5621 	pop	ar5
   9A8C D0 06              5622 	pop	ar6
   9A8E D0 07              5623 	pop	ar7
                           5624 ;	main.c:624: if (state == ADDR_TENTATIVE) {
   9A90 D0 07              5625 	pop	ar7
   9A92 D0 06              5626 	pop	ar6
   9A94 EA                 5627 	mov	a,r2
   9A95 70 14              5628 	jnz	00109$
                           5629 ;	main.c:625: uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
   9A97 EC                 5630 	mov	a,r4
   9A98 24 70              5631 	add	a,#(_uip_ds6_if + 0x0012)
   9A9A FA                 5632 	mov	r2,a
   9A9B ED                 5633 	mov	a,r5
   9A9C 34 02              5634 	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
   9A9E FB                 5635 	mov	r3,a
   9A9F 74 11              5636 	mov	a,#0x11
   9AA1 2A                 5637 	add	a,r2
   9AA2 F5 82              5638 	mov	dpl,a
   9AA4 E4                 5639 	clr	a
   9AA5 3B                 5640 	addc	a,r3
   9AA6 F5 83              5641 	mov	dph,a
   9AA8 74 01              5642 	mov	a,#0x01
   9AAA F0                 5643 	movx	@dptr,a
   9AAB                    5644 00109$:
                           5645 ;	main.c:617: for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
   9AAB 74 1C              5646 	mov	a,#0x1C
   9AAD 2C                 5647 	add	a,r4
   9AAE FC                 5648 	mov	r4,a
   9AAF E4                 5649 	clr	a
   9AB0 3D                 5650 	addc	a,r5
   9AB1 FD                 5651 	mov	r5,a
   9AB2 A8 81              5652 	mov	r0,sp
   9AB4 18                 5653 	dec	r0
   9AB5 74 1C              5654 	mov	a,#0x1C
   9AB7 26                 5655 	add	a,@r0
   9AB8 F6                 5656 	mov	@r0,a
   9AB9 E4                 5657 	clr	a
   9ABA 08                 5658 	inc	r0
   9ABB 36                 5659 	addc	a,@r0
   9ABC F6                 5660 	mov	@r0,a
   9ABD 0E                 5661 	inc	r6
   9ABE BE 00 01           5662 	cjne	r6,#0x00,00131$
   9AC1 0F                 5663 	inc	r7
   9AC2                    5664 00131$:
   9AC2 02 9A 02           5665 	ljmp	00107$
   9AC5                    5666 00111$:
   9AC5 15 81              5667 	dec	sp
   9AC7 15 81              5668 	dec	sp
   9AC9 02 06 E7           5669 	ljmp	__sdcc_banked_ret
                           5670 ;------------------------------------------------------------
                           5671 ;Allocation info for local variables in function 'set_server_address'
                           5672 ;------------------------------------------------------------
                           5673 ;g_addr                    Allocated to stack - sp -6
                           5674 ;sloc0                     Allocated to stack - sp -3
                           5675 ;sloc1                     Allocated to stack - sp -1
                           5676 ;------------------------------------------------------------
                           5677 ;	main.c:632: set_server_address(void)
                           5678 ;	-----------------------------------------
                           5679 ;	 function set_server_address
                           5680 ;	-----------------------------------------
   9ACC                    5681 _set_server_address:
   9ACC E5 81              5682 	mov	a,sp
   9ACE 24 07              5683 	add	a,#0x07
   9AD0 F5 81              5684 	mov	sp,a
                           5685 ;	main.c:636: g_addr = uip_ds6_get_global(ADDR_PREFERRED);
   9AD2 75 82 01           5686 	mov	dpl,#0x01
   9AD5 78 E3              5687 	mov	r0,#_uip_ds6_get_global
   9AD7 79 94              5688 	mov	r1,#(_uip_ds6_get_global >> 8)
   9AD9 7A 03              5689 	mov	r2,#(_uip_ds6_get_global >> 16)
   9ADB 12 06 D5           5690 	lcall	__sdcc_banked_call
   9ADE AD 82              5691 	mov	r5,dpl
   9AE0 AE 83              5692 	mov	r6,dph
   9AE2 AF F0              5693 	mov	r7,b
   9AE4 E5 81              5694 	mov	a,sp
   9AE6 24 FA              5695 	add	a,#0xfa
   9AE8 F8                 5696 	mov	r0,a
   9AE9 A6 05              5697 	mov	@r0,ar5
   9AEB 08                 5698 	inc	r0
   9AEC A6 06              5699 	mov	@r0,ar6
   9AEE 08                 5700 	inc	r0
   9AEF A6 07              5701 	mov	@r0,ar7
                           5702 ;	main.c:637: if (!g_addr) {
   9AF1 E5 81              5703 	mov	a,sp
   9AF3 24 FA              5704 	add	a,#0xfa
   9AF5 F8                 5705 	mov	r0,a
   9AF6 E6                 5706 	mov	a,@r0
   9AF7 08                 5707 	inc	r0
   9AF8 46                 5708 	orl	a,@r0
   9AF9 60 03              5709 	jz	00113$
   9AFB 02 9B 98           5710 	ljmp	00106$
   9AFE                    5711 00113$:
                           5712 ;	main.c:638: uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
   9AFE 90 01 29           5713 	mov	dptr,#_server_ipaddr
   9B01 74 AA              5714 	mov	a,#0xAA
   9B03 F0                 5715 	movx	@dptr,a
   9B04 A3                 5716 	inc	dptr
   9B05 F0                 5717 	movx	@dptr,a
   9B06 90 01 2B           5718 	mov	dptr,#(_server_ipaddr + 0x0002)
   9B09 E4                 5719 	clr	a
   9B0A F0                 5720 	movx	@dptr,a
   9B0B A3                 5721 	inc	dptr
   9B0C F0                 5722 	movx	@dptr,a
   9B0D 90 01 2D           5723 	mov	dptr,#(_server_ipaddr + 0x0004)
   9B10 F0                 5724 	movx	@dptr,a
   9B11 A3                 5725 	inc	dptr
   9B12 E4                 5726 	clr	a
   9B13 F0                 5727 	movx	@dptr,a
   9B14 90 01 2F           5728 	mov	dptr,#(_server_ipaddr + 0x0006)
   9B17 F0                 5729 	movx	@dptr,a
   9B18 A3                 5730 	inc	dptr
   9B19 E4                 5731 	clr	a
   9B1A F0                 5732 	movx	@dptr,a
   9B1B 90 01 31           5733 	mov	dptr,#(_server_ipaddr + 0x0008)
   9B1E F0                 5734 	movx	@dptr,a
   9B1F A3                 5735 	inc	dptr
   9B20 E4                 5736 	clr	a
   9B21 F0                 5737 	movx	@dptr,a
   9B22 90 01 33           5738 	mov	dptr,#(_server_ipaddr + 0x000a)
   9B25 F0                 5739 	movx	@dptr,a
   9B26 A3                 5740 	inc	dptr
   9B27 E4                 5741 	clr	a
   9B28 F0                 5742 	movx	@dptr,a
   9B29 90 01 35           5743 	mov	dptr,#(_server_ipaddr + 0x000c)
   9B2C F0                 5744 	movx	@dptr,a
   9B2D A3                 5745 	inc	dptr
   9B2E E4                 5746 	clr	a
   9B2F F0                 5747 	movx	@dptr,a
   9B30 90 01 37           5748 	mov	dptr,#(_server_ipaddr + 0x000e)
   9B33 F0                 5749 	movx	@dptr,a
   9B34 A3                 5750 	inc	dptr
   9B35 E4                 5751 	clr	a
   9B36 F0                 5752 	movx	@dptr,a
                           5753 ;	main.c:639: uip_ds6_set_addr_iid(&server_ipaddr, &uip_lladdr);
   9B37 74 F2              5754 	mov	a,#_uip_lladdr
   9B39 C0 E0              5755 	push	acc
   9B3B 74 06              5756 	mov	a,#(_uip_lladdr >> 8)
   9B3D C0 E0              5757 	push	acc
   9B3F E4                 5758 	clr	a
   9B40 C0 E0              5759 	push	acc
   9B42 90 01 29           5760 	mov	dptr,#_server_ipaddr
   9B45 75 F0 00           5761 	mov	b,#0x00
   9B48 78 F6              5762 	mov	r0,#_uip_ds6_set_addr_iid
   9B4A 79 9A              5763 	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
   9B4C 7A 03              5764 	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
   9B4E 12 06 D5           5765 	lcall	__sdcc_banked_call
   9B51 15 81              5766 	dec	sp
   9B53 15 81              5767 	dec	sp
   9B55 15 81              5768 	dec	sp
                           5769 ;	main.c:640: uip_ds6_addr_add(&server_ipaddr, 0, ADDR_AUTOCONF);
   9B57 74 01              5770 	mov	a,#0x01
   9B59 C0 E0              5771 	push	acc
   9B5B E4                 5772 	clr	a
   9B5C C0 E0              5773 	push	acc
   9B5E C0 E0              5774 	push	acc
   9B60 C0 E0              5775 	push	acc
   9B62 C0 E0              5776 	push	acc
   9B64 90 01 29           5777 	mov	dptr,#_server_ipaddr
   9B67 75 F0 00           5778 	mov	b,#0x00
   9B6A 78 F5              5779 	mov	r0,#_uip_ds6_addr_add
   9B6C 79 90              5780 	mov	r1,#(_uip_ds6_addr_add >> 8)
   9B6E 7A 03              5781 	mov	r2,#(_uip_ds6_addr_add >> 16)
   9B70 12 06 D5           5782 	lcall	__sdcc_banked_call
   9B73 E5 81              5783 	mov	a,sp
   9B75 24 FB              5784 	add	a,#0xfb
   9B77 F5 81              5785 	mov	sp,a
                           5786 ;	main.c:641: g_addr = uip_ds6_get_global(ADDR_PREFERRED);
   9B79 75 82 01           5787 	mov	dpl,#0x01
   9B7C 78 E3              5788 	mov	r0,#_uip_ds6_get_global
   9B7E 79 94              5789 	mov	r1,#(_uip_ds6_get_global >> 8)
   9B80 7A 03              5790 	mov	r2,#(_uip_ds6_get_global >> 16)
   9B82 12 06 D5           5791 	lcall	__sdcc_banked_call
   9B85 AA 82              5792 	mov	r2,dpl
   9B87 AB 83              5793 	mov	r3,dph
   9B89 AC F0              5794 	mov	r4,b
   9B8B E5 81              5795 	mov	a,sp
   9B8D 24 FA              5796 	add	a,#0xfa
   9B8F F8                 5797 	mov	r0,a
   9B90 A6 02              5798 	mov	@r0,ar2
   9B92 08                 5799 	inc	r0
   9B93 A6 03              5800 	mov	@r0,ar3
   9B95 08                 5801 	inc	r0
   9B96 A6 04              5802 	mov	@r0,ar4
                           5803 ;	main.c:644: uip_ip6addr(&server_ipaddr, g_addr->ipaddr.u16[0], g_addr->ipaddr.u16[1], g_addr->ipaddr.u16[2],
   9B98                    5804 00106$:
   9B98 E5 81              5805 	mov	a,sp
   9B9A 24 FA              5806 	add	a,#0xfa
   9B9C F8                 5807 	mov	r0,a
   9B9D 74 01              5808 	mov	a,#0x01
   9B9F 26                 5809 	add	a,@r0
   9BA0 FA                 5810 	mov	r2,a
   9BA1 E4                 5811 	clr	a
   9BA2 08                 5812 	inc	r0
   9BA3 36                 5813 	addc	a,@r0
   9BA4 FB                 5814 	mov	r3,a
   9BA5 08                 5815 	inc	r0
   9BA6 86 04              5816 	mov	ar4,@r0
   9BA8 8A 82              5817 	mov	dpl,r2
   9BAA 8B 83              5818 	mov	dph,r3
   9BAC 8C F0              5819 	mov	b,r4
   9BAE 12 4B C9           5820 	lcall	__gptrget
   9BB1 FA                 5821 	mov	r2,a
   9BB2 A3                 5822 	inc	dptr
   9BB3 12 4B C9           5823 	lcall	__gptrget
   9BB6 FB                 5824 	mov	r3,a
   9BB7 8A 07              5825 	mov	ar7,r2
   9BB9 7C 00              5826 	mov	r4,#0x00
   9BBB 8B 02              5827 	mov	ar2,r3
   9BBD 7B 00              5828 	mov	r3,#0x00
   9BBF EA                 5829 	mov	a,r2
   9BC0 42 04              5830 	orl	ar4,a
   9BC2 EB                 5831 	mov	a,r3
   9BC3 42 07              5832 	orl	ar7,a
   9BC5 90 01 29           5833 	mov	dptr,#_server_ipaddr
   9BC8 EC                 5834 	mov	a,r4
   9BC9 F0                 5835 	movx	@dptr,a
   9BCA A3                 5836 	inc	dptr
   9BCB EF                 5837 	mov	a,r7
   9BCC F0                 5838 	movx	@dptr,a
   9BCD E5 81              5839 	mov	a,sp
   9BCF 24 FA              5840 	add	a,#0xfa
   9BD1 F8                 5841 	mov	r0,a
   9BD2 74 01              5842 	mov	a,#0x01
   9BD4 26                 5843 	add	a,@r0
   9BD5 FD                 5844 	mov	r5,a
   9BD6 E4                 5845 	clr	a
   9BD7 08                 5846 	inc	r0
   9BD8 36                 5847 	addc	a,@r0
   9BD9 FE                 5848 	mov	r6,a
   9BDA 08                 5849 	inc	r0
   9BDB 86 07              5850 	mov	ar7,@r0
   9BDD 74 02              5851 	mov	a,#0x02
   9BDF 2D                 5852 	add	a,r5
   9BE0 FA                 5853 	mov	r2,a
   9BE1 E4                 5854 	clr	a
   9BE2 3E                 5855 	addc	a,r6
   9BE3 FB                 5856 	mov	r3,a
   9BE4 8F 04              5857 	mov	ar4,r7
   9BE6 8A 82              5858 	mov	dpl,r2
   9BE8 8B 83              5859 	mov	dph,r3
   9BEA 8C F0              5860 	mov	b,r4
   9BEC E5 81              5861 	mov	a,sp
   9BEE 24 FD              5862 	add	a,#0xfd
   9BF0 F8                 5863 	mov	r0,a
   9BF1 12 4B C9           5864 	lcall	__gptrget
   9BF4 F6                 5865 	mov	@r0,a
   9BF5 A3                 5866 	inc	dptr
   9BF6 12 4B C9           5867 	lcall	__gptrget
   9BF9 08                 5868 	inc	r0
   9BFA F6                 5869 	mov	@r0,a
   9BFB E5 81              5870 	mov	a,sp
   9BFD 24 FD              5871 	add	a,#0xfd
   9BFF F8                 5872 	mov	r0,a
   9C00 A9 81              5873 	mov	r1,sp
   9C02 19                 5874 	dec	r1
   9C03 E6                 5875 	mov	a,@r0
   9C04 09                 5876 	inc	r1
   9C05 F7                 5877 	mov	@r1,a
   9C06 19                 5878 	dec	r1
   9C07 77 00              5879 	mov	@r1,#0x00
   9C09 E5 81              5880 	mov	a,sp
   9C0B 24 FD              5881 	add	a,#0xfd
   9C0D F8                 5882 	mov	r0,a
   9C0E 08                 5883 	inc	r0
   9C0F 86 02              5884 	mov	ar2,@r0
   9C11 7C 00              5885 	mov	r4,#0x00
   9C13 A8 81              5886 	mov	r0,sp
   9C15 18                 5887 	dec	r0
   9C16 E6                 5888 	mov	a,@r0
   9C17 42 02              5889 	orl	ar2,a
   9C19 08                 5890 	inc	r0
   9C1A E6                 5891 	mov	a,@r0
   9C1B 42 04              5892 	orl	ar4,a
   9C1D 90 01 2B           5893 	mov	dptr,#(_server_ipaddr + 0x0002)
   9C20 EA                 5894 	mov	a,r2
   9C21 F0                 5895 	movx	@dptr,a
   9C22 A3                 5896 	inc	dptr
   9C23 EC                 5897 	mov	a,r4
   9C24 F0                 5898 	movx	@dptr,a
   9C25 74 04              5899 	mov	a,#0x04
   9C27 2D                 5900 	add	a,r5
   9C28 FA                 5901 	mov	r2,a
   9C29 E4                 5902 	clr	a
   9C2A 3E                 5903 	addc	a,r6
   9C2B FB                 5904 	mov	r3,a
   9C2C 8F 04              5905 	mov	ar4,r7
   9C2E 8A 82              5906 	mov	dpl,r2
   9C30 8B 83              5907 	mov	dph,r3
   9C32 8C F0              5908 	mov	b,r4
   9C34 A8 81              5909 	mov	r0,sp
   9C36 18                 5910 	dec	r0
   9C37 12 4B C9           5911 	lcall	__gptrget
   9C3A F6                 5912 	mov	@r0,a
   9C3B A3                 5913 	inc	dptr
   9C3C 12 4B C9           5914 	lcall	__gptrget
   9C3F 08                 5915 	inc	r0
   9C40 F6                 5916 	mov	@r0,a
   9C41 A8 81              5917 	mov	r0,sp
   9C43 18                 5918 	dec	r0
   9C44 E5 81              5919 	mov	a,sp
   9C46 24 FD              5920 	add	a,#0xfd
   9C48 F9                 5921 	mov	r1,a
   9C49 E6                 5922 	mov	a,@r0
   9C4A 09                 5923 	inc	r1
   9C4B F7                 5924 	mov	@r1,a
   9C4C 19                 5925 	dec	r1
   9C4D 77 00              5926 	mov	@r1,#0x00
   9C4F A8 81              5927 	mov	r0,sp
   9C51 86 02              5928 	mov	ar2,@r0
   9C53 7C 00              5929 	mov	r4,#0x00
   9C55 E5 81              5930 	mov	a,sp
   9C57 24 FD              5931 	add	a,#0xfd
   9C59 F8                 5932 	mov	r0,a
   9C5A E6                 5933 	mov	a,@r0
   9C5B 42 02              5934 	orl	ar2,a
   9C5D 08                 5935 	inc	r0
   9C5E E6                 5936 	mov	a,@r0
   9C5F 42 04              5937 	orl	ar4,a
   9C61 90 01 2D           5938 	mov	dptr,#(_server_ipaddr + 0x0004)
   9C64 EA                 5939 	mov	a,r2
   9C65 F0                 5940 	movx	@dptr,a
   9C66 A3                 5941 	inc	dptr
   9C67 EC                 5942 	mov	a,r4
   9C68 F0                 5943 	movx	@dptr,a
   9C69 74 06              5944 	mov	a,#0x06
   9C6B 2D                 5945 	add	a,r5
   9C6C FD                 5946 	mov	r5,a
   9C6D E4                 5947 	clr	a
   9C6E 3E                 5948 	addc	a,r6
   9C6F FE                 5949 	mov	r6,a
   9C70 8D 82              5950 	mov	dpl,r5
   9C72 8E 83              5951 	mov	dph,r6
   9C74 8F F0              5952 	mov	b,r7
   9C76 12 4B C9           5953 	lcall	__gptrget
   9C79 FD                 5954 	mov	r5,a
   9C7A A3                 5955 	inc	dptr
   9C7B 12 4B C9           5956 	lcall	__gptrget
   9C7E FE                 5957 	mov	r6,a
   9C7F 8D 07              5958 	mov	ar7,r5
   9C81 7C 00              5959 	mov	r4,#0x00
   9C83 8E 05              5960 	mov	ar5,r6
   9C85 7E 00              5961 	mov	r6,#0x00
   9C87 ED                 5962 	mov	a,r5
   9C88 42 04              5963 	orl	ar4,a
   9C8A EE                 5964 	mov	a,r6
   9C8B 42 07              5965 	orl	ar7,a
   9C8D 90 01 2F           5966 	mov	dptr,#(_server_ipaddr + 0x0006)
   9C90 EC                 5967 	mov	a,r4
   9C91 F0                 5968 	movx	@dptr,a
   9C92 A3                 5969 	inc	dptr
   9C93 EF                 5970 	mov	a,r7
   9C94 F0                 5971 	movx	@dptr,a
   9C95 90 01 31           5972 	mov	dptr,#(_server_ipaddr + 0x0008)
   9C98 E4                 5973 	clr	a
   9C99 F0                 5974 	movx	@dptr,a
   9C9A A3                 5975 	inc	dptr
   9C9B F0                 5976 	movx	@dptr,a
   9C9C 90 01 33           5977 	mov	dptr,#(_server_ipaddr + 0x000a)
   9C9F F0                 5978 	movx	@dptr,a
   9CA0 A3                 5979 	inc	dptr
   9CA1 E4                 5980 	clr	a
   9CA2 F0                 5981 	movx	@dptr,a
   9CA3 90 01 35           5982 	mov	dptr,#(_server_ipaddr + 0x000c)
   9CA6 F0                 5983 	movx	@dptr,a
   9CA7 A3                 5984 	inc	dptr
   9CA8 E4                 5985 	clr	a
   9CA9 F0                 5986 	movx	@dptr,a
   9CAA 90 01 37           5987 	mov	dptr,#(_server_ipaddr + 0x000e)
   9CAD F0                 5988 	movx	@dptr,a
   9CAE A3                 5989 	inc	dptr
   9CAF 74 01              5990 	mov	a,#0x01
   9CB1 F0                 5991 	movx	@dptr,a
   9CB2 E5 81              5992 	mov	a,sp
   9CB4 24 F9              5993 	add	a,#0xF9
   9CB6 F5 81              5994 	mov	sp,a
   9CB8 02 06 E7           5995 	ljmp	__sdcc_banked_ret
                           5996 ;------------------------------------------------------------
                           5997 ;Allocation info for local variables in function 'process_thread_coconut_sensor_process'
                           5998 ;------------------------------------------------------------
                           5999 ;ev                        Allocated to stack - sp -6
                           6000 ;data                      Allocated to stack - sp -9
                           6001 ;process_pt                Allocated to stack - sp -2
                           6002 ;len                       Allocated to registers r6 r7 
                           6003 ;PT_YIELD_FLAG             Allocated to registers r4 
                           6004 ;sloc0                     Allocated to stack - sp +4
                           6005 ;et                        Allocated with name '_process_thread_coconut_sensor_process_et_1_1'
                           6006 ;------------------------------------------------------------
                           6007 ;	main.c:651: PROCESS_THREAD(coconut_sensor_process, ev, data)
                           6008 ;	-----------------------------------------
                           6009 ;	 function process_thread_coconut_sensor_process
                           6010 ;	-----------------------------------------
   9CBB                    6011 _process_thread_coconut_sensor_process:
   9CBB C0 82              6012 	push	dpl
   9CBD C0 83              6013 	push	dph
   9CBF C0 F0              6014 	push	b
                           6015 ;	main.c:656: PROCESS_BEGIN();
   9CC1 7C 01              6016 	mov	r4,#0x01
   9CC3 A8 81              6017 	mov	r0,sp
   9CC5 18                 6018 	dec	r0
   9CC6 18                 6019 	dec	r0
   9CC7 86 82              6020 	mov	dpl,@r0
   9CC9 08                 6021 	inc	r0
   9CCA 86 83              6022 	mov	dph,@r0
   9CCC 08                 6023 	inc	r0
   9CCD 86 F0              6024 	mov	b,@r0
   9CCF 12 4B C9           6025 	lcall	__gptrget
   9CD2 FA                 6026 	mov	r2,a
   9CD3 A3                 6027 	inc	dptr
   9CD4 12 4B C9           6028 	lcall	__gptrget
   9CD7 FB                 6029 	mov	r3,a
   9CD8 BA 00 05           6030 	cjne	r2,#0x00,00183$
   9CDB BB 00 02           6031 	cjne	r3,#0x00,00183$
   9CDE 80 14              6032 	sjmp	00109$
   9CE0                    6033 00183$:
   9CE0 BA 92 05           6034 	cjne	r2,#0x92,00184$
   9CE3 BB 02 02           6035 	cjne	r3,#0x02,00184$
   9CE6 80 50              6036 	sjmp	00102$
   9CE8                    6037 00184$:
   9CE8 BA C1 06           6038 	cjne	r2,#0xC1,00185$
   9CEB BB 02 03           6039 	cjne	r3,#0x02,00185$
   9CEE 02 9F 99           6040 	ljmp	00127$
   9CF1                    6041 00185$:
   9CF1 02 A1 1B           6042 	ljmp	00150$
                           6043 ;	main.c:658: PROCESS_PAUSE();
   9CF4                    6044 00109$:
   9CF4 90 1D A9           6045 	mov	dptr,#_process_current
   9CF7 E0                 6046 	movx	a,@dptr
   9CF8 FA                 6047 	mov	r2,a
   9CF9 A3                 6048 	inc	dptr
   9CFA E0                 6049 	movx	a,@dptr
   9CFB FB                 6050 	mov	r3,a
   9CFC A3                 6051 	inc	dptr
   9CFD E0                 6052 	movx	a,@dptr
   9CFE FF                 6053 	mov	r7,a
   9CFF E4                 6054 	clr	a
   9D00 C0 E0              6055 	push	acc
   9D02 C0 E0              6056 	push	acc
   9D04 C0 E0              6057 	push	acc
   9D06 74 85              6058 	mov	a,#0x85
   9D08 C0 E0              6059 	push	acc
   9D0A 8A 82              6060 	mov	dpl,r2
   9D0C 8B 83              6061 	mov	dph,r3
   9D0E 8F F0              6062 	mov	b,r7
   9D10 78 9E              6063 	mov	r0,#_process_post
   9D12 79 88              6064 	mov	r1,#(_process_post >> 8)
   9D14 7A 04              6065 	mov	r2,#(_process_post >> 16)
   9D16 12 06 D5           6066 	lcall	__sdcc_banked_call
   9D19 E5 81              6067 	mov	a,sp
   9D1B 24 FC              6068 	add	a,#0xfc
   9D1D F5 81              6069 	mov	sp,a
   9D1F 7C 00              6070 	mov	r4,#0x00
   9D21 A8 81              6071 	mov	r0,sp
   9D23 18                 6072 	dec	r0
   9D24 18                 6073 	dec	r0
   9D25 86 82              6074 	mov	dpl,@r0
   9D27 08                 6075 	inc	r0
   9D28 86 83              6076 	mov	dph,@r0
   9D2A 08                 6077 	inc	r0
   9D2B 86 F0              6078 	mov	b,@r0
   9D2D 74 92              6079 	mov	a,#0x92
   9D2F 12 3D 7D           6080 	lcall	__gptrput
   9D32 A3                 6081 	inc	dptr
   9D33 74 02              6082 	mov	a,#0x02
   9D35 12 3D 7D           6083 	lcall	__gptrput
   9D38                    6084 00102$:
   9D38 EC                 6085 	mov	a,r4
   9D39 60 0A              6086 	jz	00103$
   9D3B E5 81              6087 	mov	a,sp
   9D3D 24 FA              6088 	add	a,#0xfa
   9D3F F8                 6089 	mov	r0,a
   9D40 B6 85 02           6090 	cjne	@r0,#0x85,00187$
   9D43 80 06              6091 	sjmp	00107$
   9D45                    6092 00187$:
   9D45                    6093 00103$:
   9D45 75 82 01           6094 	mov	dpl,#0x01
   9D48 02 A1 33           6095 	ljmp	00151$
   9D4B                    6096 00107$:
                           6097 ;	main.c:660: set_server_address();
   9D4B 78 CC              6098 	mov	r0,#_set_server_address
   9D4D 79 9A              6099 	mov	r1,#(_set_server_address >> 8)
   9D4F 7A 02              6100 	mov	r2,#(_set_server_address >> 16)
   9D51 12 06 D5           6101 	lcall	__sdcc_banked_call
                           6102 ;	main.c:662: PRINTF("Coconut process started\n");
   9D54 74 25              6103 	mov	a,#__str_17
   9D56 C0 E0              6104 	push	acc
   9D58 74 79              6105 	mov	a,#(__str_17 >> 8)
   9D5A C0 E0              6106 	push	acc
   9D5C 74 80              6107 	mov	a,#0x80
   9D5E C0 E0              6108 	push	acc
   9D60 78 6C              6109 	mov	r0,#_printf
   9D62 79 49              6110 	mov	r1,#(_printf >> 8)
   9D64 7A 00              6111 	mov	r2,#(_printf >> 16)
   9D66 12 06 D5           6112 	lcall	__sdcc_banked_call
   9D69 15 81              6113 	dec	sp
   9D6B 15 81              6114 	dec	sp
   9D6D 15 81              6115 	dec	sp
                           6116 ;	main.c:664: print_local_addresses();
   9D6F 78 D4              6117 	mov	r0,#_print_local_addresses
   9D71 79 99              6118 	mov	r1,#(_print_local_addresses >> 8)
   9D73 7A 02              6119 	mov	r2,#(_print_local_addresses >> 16)
   9D75 12 06 D5           6120 	lcall	__sdcc_banked_call
                           6121 ;	main.c:666: subscribers_mem_pool_init(); 
   9D78 78 73              6122 	mov	r0,#_subscribers_mem_pool_init
   9D7A 79 80              6123 	mov	r1,#(_subscribers_mem_pool_init >> 8)
   9D7C 7A 05              6124 	mov	r2,#(_subscribers_mem_pool_init >> 16)
   9D7E 12 06 D5           6125 	lcall	__sdcc_banked_call
                           6126 ;	main.c:672: device_fs_init(); 
   9D81 78 81              6127 	mov	r0,#_device_fs_init
   9D83 79 A3              6128 	mov	r1,#(_device_fs_init >> 8)
   9D85 7A 05              6129 	mov	r2,#(_device_fs_init >> 16)
   9D87 12 06 D5           6130 	lcall	__sdcc_banked_call
                           6131 ;	main.c:674: if (!crypto_init()) {
   9D8A 78 9F              6132 	mov	r0,#_crypto_init
   9D8C 79 A7              6133 	mov	r1,#(_crypto_init >> 8)
   9D8E 7A 04              6134 	mov	r2,#(_crypto_init >> 16)
   9D90 12 06 D5           6135 	lcall	__sdcc_banked_call
   9D93 E5 82              6136 	mov	a,dpl
   9D95 70 36              6137 	jnz	00116$
                           6138 ;	main.c:675: PRINTF("Crypto init fail\n");
   9D97 74 3E              6139 	mov	a,#__str_18
   9D99 C0 E0              6140 	push	acc
   9D9B 74 79              6141 	mov	a,#(__str_18 >> 8)
   9D9D C0 E0              6142 	push	acc
   9D9F 74 80              6143 	mov	a,#0x80
   9DA1 C0 E0              6144 	push	acc
   9DA3 78 6C              6145 	mov	r0,#_printf
   9DA5 79 49              6146 	mov	r1,#(_printf >> 8)
   9DA7 7A 00              6147 	mov	r2,#(_printf >> 16)
   9DA9 12 06 D5           6148 	lcall	__sdcc_banked_call
   9DAC 15 81              6149 	dec	sp
   9DAE 15 81              6150 	dec	sp
   9DB0 15 81              6151 	dec	sp
                           6152 ;	main.c:676: PROCESS_EXIT();
   9DB2 A8 81              6153 	mov	r0,sp
   9DB4 18                 6154 	dec	r0
   9DB5 18                 6155 	dec	r0
   9DB6 86 82              6156 	mov	dpl,@r0
   9DB8 08                 6157 	inc	r0
   9DB9 86 83              6158 	mov	dph,@r0
   9DBB 08                 6159 	inc	r0
   9DBC 86 F0              6160 	mov	b,@r0
   9DBE E4                 6161 	clr	a
   9DBF 12 3D 7D           6162 	lcall	__gptrput
   9DC2 A3                 6163 	inc	dptr
   9DC3 E4                 6164 	clr	a
   9DC4 12 3D 7D           6165 	lcall	__gptrput
   9DC7 75 82 02           6166 	mov	dpl,#0x02
   9DCA 02 A1 33           6167 	ljmp	00151$
   9DCD                    6168 00116$:
                           6169 ;	main.c:679: PRINTF("Crypto init Done\n");
   9DCD 74 50              6170 	mov	a,#__str_19
   9DCF C0 E0              6171 	push	acc
   9DD1 74 79              6172 	mov	a,#(__str_19 >> 8)
   9DD3 C0 E0              6173 	push	acc
   9DD5 74 80              6174 	mov	a,#0x80
   9DD7 C0 E0              6175 	push	acc
   9DD9 78 6C              6176 	mov	r0,#_printf
   9DDB 79 49              6177 	mov	r1,#(_printf >> 8)
   9DDD 7A 00              6178 	mov	r2,#(_printf >> 16)
   9DDF 12 06 D5           6179 	lcall	__sdcc_banked_call
   9DE2 15 81              6180 	dec	sp
   9DE4 15 81              6181 	dec	sp
   9DE6 15 81              6182 	dec	sp
                           6183 ;	main.c:682: if (!create_device()) {
   9DE8 78 05              6184 	mov	r0,#_create_device
   9DEA 79 B5              6185 	mov	r1,#(_create_device >> 8)
   9DEC 7A 05              6186 	mov	r2,#(_create_device >> 16)
   9DEE 12 06 D5           6187 	lcall	__sdcc_banked_call
   9DF1 40 36              6188 	jc	00121$
                           6189 ;	main.c:683: PRINTF("Device init fail\n");
   9DF3 74 62              6190 	mov	a,#__str_20
   9DF5 C0 E0              6191 	push	acc
   9DF7 74 79              6192 	mov	a,#(__str_20 >> 8)
   9DF9 C0 E0              6193 	push	acc
   9DFB 74 80              6194 	mov	a,#0x80
   9DFD C0 E0              6195 	push	acc
   9DFF 78 6C              6196 	mov	r0,#_printf
   9E01 79 49              6197 	mov	r1,#(_printf >> 8)
   9E03 7A 00              6198 	mov	r2,#(_printf >> 16)
   9E05 12 06 D5           6199 	lcall	__sdcc_banked_call
   9E08 15 81              6200 	dec	sp
   9E0A 15 81              6201 	dec	sp
   9E0C 15 81              6202 	dec	sp
                           6203 ;	main.c:684: PROCESS_EXIT();
   9E0E A8 81              6204 	mov	r0,sp
   9E10 18                 6205 	dec	r0
   9E11 18                 6206 	dec	r0
   9E12 86 82              6207 	mov	dpl,@r0
   9E14 08                 6208 	inc	r0
   9E15 86 83              6209 	mov	dph,@r0
   9E17 08                 6210 	inc	r0
   9E18 86 F0              6211 	mov	b,@r0
   9E1A E4                 6212 	clr	a
   9E1B 12 3D 7D           6213 	lcall	__gptrput
   9E1E A3                 6214 	inc	dptr
   9E1F E4                 6215 	clr	a
   9E20 12 3D 7D           6216 	lcall	__gptrput
   9E23 75 82 02           6217 	mov	dpl,#0x02
   9E26 02 A1 33           6218 	ljmp	00151$
   9E29                    6219 00121$:
                           6220 ;	main.c:687: PRINTF("Device create done\n");
   9E29 74 74              6221 	mov	a,#__str_21
   9E2B C0 E0              6222 	push	acc
   9E2D 74 79              6223 	mov	a,#(__str_21 >> 8)
   9E2F C0 E0              6224 	push	acc
   9E31 74 80              6225 	mov	a,#0x80
   9E33 C0 E0              6226 	push	acc
   9E35 78 6C              6227 	mov	r0,#_printf
   9E37 79 49              6228 	mov	r1,#(_printf >> 8)
   9E39 7A 00              6229 	mov	r2,#(_printf >> 16)
   9E3B 12 06 D5           6230 	lcall	__sdcc_banked_call
   9E3E 15 81              6231 	dec	sp
   9E40 15 81              6232 	dec	sp
   9E42 15 81              6233 	dec	sp
                           6234 ;	main.c:690: client_conn = udp_new(NULL, UIP_HTONS(COCONUT_UDP_SERVER_PORT), NULL);
   9E44 E4                 6235 	clr	a
   9E45 C0 E0              6236 	push	acc
   9E47 C0 E0              6237 	push	acc
   9E49 C0 E0              6238 	push	acc
   9E4B 74 16              6239 	mov	a,#0x16
   9E4D C0 E0              6240 	push	acc
   9E4F 74 2E              6241 	mov	a,#0x2E
   9E51 C0 E0              6242 	push	acc
   9E53 90 00 00           6243 	mov	dptr,#0x0000
   9E56 75 F0 00           6244 	mov	b,#0x00
   9E59 78 05              6245 	mov	r0,#_udp_new
   9E5B 79 8B              6246 	mov	r1,#(_udp_new >> 8)
   9E5D 7A 04              6247 	mov	r2,#(_udp_new >> 16)
   9E5F 12 06 D5           6248 	lcall	__sdcc_banked_call
   9E62 AD 82              6249 	mov	r5,dpl
   9E64 AE 83              6250 	mov	r6,dph
   9E66 AF F0              6251 	mov	r7,b
   9E68 E5 81              6252 	mov	a,sp
   9E6A 24 FB              6253 	add	a,#0xfb
   9E6C F5 81              6254 	mov	sp,a
   9E6E 90 01 26           6255 	mov	dptr,#_client_conn
   9E71 ED                 6256 	mov	a,r5
   9E72 F0                 6257 	movx	@dptr,a
   9E73 A3                 6258 	inc	dptr
   9E74 EE                 6259 	mov	a,r6
   9E75 F0                 6260 	movx	@dptr,a
   9E76 A3                 6261 	inc	dptr
   9E77 EF                 6262 	mov	a,r7
   9E78 F0                 6263 	movx	@dptr,a
                           6264 ;	main.c:691: if(client_conn == NULL) {
   9E79 ED                 6265 	mov	a,r5
   9E7A 4E                 6266 	orl	a,r6
   9E7B 70 36              6267 	jnz	00126$
                           6268 ;	main.c:692: PRINTF("No UDP connection available, exiting the process!\n");
   9E7D 74 88              6269 	mov	a,#__str_22
   9E7F C0 E0              6270 	push	acc
   9E81 74 79              6271 	mov	a,#(__str_22 >> 8)
   9E83 C0 E0              6272 	push	acc
   9E85 74 80              6273 	mov	a,#0x80
   9E87 C0 E0              6274 	push	acc
   9E89 78 6C              6275 	mov	r0,#_printf
   9E8B 79 49              6276 	mov	r1,#(_printf >> 8)
   9E8D 7A 00              6277 	mov	r2,#(_printf >> 16)
   9E8F 12 06 D5           6278 	lcall	__sdcc_banked_call
   9E92 15 81              6279 	dec	sp
   9E94 15 81              6280 	dec	sp
   9E96 15 81              6281 	dec	sp
                           6282 ;	main.c:693: PROCESS_EXIT();
   9E98 A8 81              6283 	mov	r0,sp
   9E9A 18                 6284 	dec	r0
   9E9B 18                 6285 	dec	r0
   9E9C 86 82              6286 	mov	dpl,@r0
   9E9E 08                 6287 	inc	r0
   9E9F 86 83              6288 	mov	dph,@r0
   9EA1 08                 6289 	inc	r0
   9EA2 86 F0              6290 	mov	b,@r0
   9EA4 E4                 6291 	clr	a
   9EA5 12 3D 7D           6292 	lcall	__gptrput
   9EA8 A3                 6293 	inc	dptr
   9EA9 E4                 6294 	clr	a
   9EAA 12 3D 7D           6295 	lcall	__gptrput
   9EAD 75 82 02           6296 	mov	dpl,#0x02
   9EB0 02 A1 33           6297 	ljmp	00151$
   9EB3                    6298 00126$:
                           6299 ;	main.c:695: udp_bind(client_conn, UIP_HTONS(COCONUT_UDP_CLIENT_PORT));
   9EB3 74 10              6300 	mov	a,#0x10
   9EB5 2D                 6301 	add	a,r5
   9EB6 FD                 6302 	mov	r5,a
   9EB7 E4                 6303 	clr	a
   9EB8 3E                 6304 	addc	a,r6
   9EB9 FE                 6305 	mov	r6,a
   9EBA 8D 82              6306 	mov	dpl,r5
   9EBC 8E 83              6307 	mov	dph,r6
   9EBE 8F F0              6308 	mov	b,r7
   9EC0 74 22              6309 	mov	a,#0x22
   9EC2 12 3D 7D           6310 	lcall	__gptrput
   9EC5 A3                 6311 	inc	dptr
   9EC6 74 3D              6312 	mov	a,#0x3D
   9EC8 12 3D 7D           6313 	lcall	__gptrput
                           6314 ;	main.c:697: PRINTF("Created a connection with the server ");
   9ECB 74 BB              6315 	mov	a,#__str_23
   9ECD C0 E0              6316 	push	acc
   9ECF 74 79              6317 	mov	a,#(__str_23 >> 8)
   9ED1 C0 E0              6318 	push	acc
   9ED3 74 80              6319 	mov	a,#0x80
   9ED5 C0 E0              6320 	push	acc
   9ED7 78 6C              6321 	mov	r0,#_printf
   9ED9 79 49              6322 	mov	r1,#(_printf >> 8)
   9EDB 7A 00              6323 	mov	r2,#(_printf >> 16)
   9EDD 12 06 D5           6324 	lcall	__sdcc_banked_call
   9EE0 15 81              6325 	dec	sp
   9EE2 15 81              6326 	dec	sp
   9EE4 15 81              6327 	dec	sp
                           6328 ;	main.c:698: PRINT6ADDR(&client_conn->ripaddr);
   9EE6 90 01 26           6329 	mov	dptr,#_client_conn
   9EE9 E0                 6330 	movx	a,@dptr
   9EEA FD                 6331 	mov	r5,a
   9EEB A3                 6332 	inc	dptr
   9EEC E0                 6333 	movx	a,@dptr
   9EED FE                 6334 	mov	r6,a
   9EEE A3                 6335 	inc	dptr
   9EEF E0                 6336 	movx	a,@dptr
   9EF0 FF                 6337 	mov	r7,a
   9EF1 8D 82              6338 	mov	dpl,r5
   9EF3 8E 83              6339 	mov	dph,r6
   9EF5 8F F0              6340 	mov	b,r7
   9EF7 78 6C              6341 	mov	r0,#_uip_debug_ipaddr_print
   9EF9 79 BA              6342 	mov	r1,#(_uip_debug_ipaddr_print >> 8)
   9EFB 7A 05              6343 	mov	r2,#(_uip_debug_ipaddr_print >> 16)
   9EFD 12 06 D5           6344 	lcall	__sdcc_banked_call
                           6345 ;	main.c:699: PRINTF(" local/remote port %u/%u\n",
   9F00 90 01 26           6346 	mov	dptr,#_client_conn
   9F03 E0                 6347 	movx	a,@dptr
   9F04 FD                 6348 	mov	r5,a
   9F05 A3                 6349 	inc	dptr
   9F06 E0                 6350 	movx	a,@dptr
   9F07 FE                 6351 	mov	r6,a
   9F08 A3                 6352 	inc	dptr
   9F09 E0                 6353 	movx	a,@dptr
   9F0A FC                 6354 	mov	r4,a
   9F0B 74 12              6355 	mov	a,#0x12
   9F0D 2D                 6356 	add	a,r5
   9F0E FA                 6357 	mov	r2,a
   9F0F E4                 6358 	clr	a
   9F10 3E                 6359 	addc	a,r6
   9F11 FB                 6360 	mov	r3,a
   9F12 8C 07              6361 	mov	ar7,r4
   9F14 8A 82              6362 	mov	dpl,r2
   9F16 8B 83              6363 	mov	dph,r3
   9F18 8F F0              6364 	mov	b,r7
   9F1A 12 4B C9           6365 	lcall	__gptrget
   9F1D FA                 6366 	mov	r2,a
   9F1E A3                 6367 	inc	dptr
   9F1F 12 4B C9           6368 	lcall	__gptrget
   9F22 FB                 6369 	mov	r3,a
   9F23 EA                 6370 	mov	a,r2
   9F24 8B 02              6371 	mov	ar2,r3
   9F26 FB                 6372 	mov	r3,a
   9F27 74 10              6373 	mov	a,#0x10
   9F29 2D                 6374 	add	a,r5
   9F2A FD                 6375 	mov	r5,a
   9F2B E4                 6376 	clr	a
   9F2C 3E                 6377 	addc	a,r6
   9F2D FE                 6378 	mov	r6,a
   9F2E 8C 07              6379 	mov	ar7,r4
   9F30 8D 82              6380 	mov	dpl,r5
   9F32 8E 83              6381 	mov	dph,r6
   9F34 8F F0              6382 	mov	b,r7
   9F36 12 4B C9           6383 	lcall	__gptrget
   9F39 FD                 6384 	mov	r5,a
   9F3A A3                 6385 	inc	dptr
   9F3B 12 4B C9           6386 	lcall	__gptrget
   9F3E FE                 6387 	mov	r6,a
   9F3F ED                 6388 	mov	a,r5
   9F40 8E 05              6389 	mov	ar5,r6
   9F42 FE                 6390 	mov	r6,a
   9F43 C0 02              6391 	push	ar2
   9F45 C0 03              6392 	push	ar3
   9F47 C0 05              6393 	push	ar5
   9F49 C0 06              6394 	push	ar6
   9F4B 74 E1              6395 	mov	a,#__str_24
   9F4D C0 E0              6396 	push	acc
   9F4F 74 79              6397 	mov	a,#(__str_24 >> 8)
   9F51 C0 E0              6398 	push	acc
   9F53 74 80              6399 	mov	a,#0x80
   9F55 C0 E0              6400 	push	acc
   9F57 78 6C              6401 	mov	r0,#_printf
   9F59 79 49              6402 	mov	r1,#(_printf >> 8)
   9F5B 7A 00              6403 	mov	r2,#(_printf >> 16)
   9F5D 12 06 D5           6404 	lcall	__sdcc_banked_call
   9F60 E5 81              6405 	mov	a,sp
   9F62 24 F9              6406 	add	a,#0xf9
   9F64 F5 81              6407 	mov	sp,a
                           6408 ;	main.c:702: etimer_set(&et, SEND_INTERVAL);
   9F66 E4                 6409 	clr	a
   9F67 C0 E0              6410 	push	acc
   9F69 74 0A              6411 	mov	a,#0x0A
   9F6B C0 E0              6412 	push	acc
   9F6D 90 01 39           6413 	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
   9F70 75 F0 00           6414 	mov	b,#0x00
   9F73 78 AC              6415 	mov	r0,#_etimer_set
   9F75 79 9B              6416 	mov	r1,#(_etimer_set >> 8)
   9F77 7A 04              6417 	mov	r2,#(_etimer_set >> 16)
   9F79 12 06 D5           6418 	lcall	__sdcc_banked_call
   9F7C 15 81              6419 	dec	sp
   9F7E 15 81              6420 	dec	sp
                           6421 ;	main.c:704: while(1) {
   9F80                    6422 00148$:
                           6423 ;	main.c:705: PROCESS_YIELD();
   9F80 7C 00              6424 	mov	r4,#0x00
   9F82 A8 81              6425 	mov	r0,sp
   9F84 18                 6426 	dec	r0
   9F85 18                 6427 	dec	r0
   9F86 86 82              6428 	mov	dpl,@r0
   9F88 08                 6429 	inc	r0
   9F89 86 83              6430 	mov	dph,@r0
   9F8B 08                 6431 	inc	r0
   9F8C 86 F0              6432 	mov	b,@r0
   9F8E 74 C1              6433 	mov	a,#0xC1
   9F90 12 3D 7D           6434 	lcall	__gptrput
   9F93 A3                 6435 	inc	dptr
   9F94 74 02              6436 	mov	a,#0x02
   9F96 12 3D 7D           6437 	lcall	__gptrput
   9F99                    6438 00127$:
   9F99 EC                 6439 	mov	a,r4
   9F9A 70 06              6440 	jnz	00131$
   9F9C 75 82 01           6441 	mov	dpl,#0x01
   9F9F 02 A1 33           6442 	ljmp	00151$
   9FA2                    6443 00131$:
                           6444 ;	main.c:706: if(etimer_expired(&et)) {
   9FA2 90 01 39           6445 	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
   9FA5 75 F0 00           6446 	mov	b,#0x00
   9FA8 78 9B              6447 	mov	r0,#_etimer_expired
   9FAA 79 9C              6448 	mov	r1,#(_etimer_expired >> 8)
   9FAC 7A 04              6449 	mov	r2,#(_etimer_expired >> 16)
   9FAE 12 06 D5           6450 	lcall	__sdcc_banked_call
   9FB1 E5 82              6451 	mov	a,dpl
   9FB3 85 83 F0           6452 	mov	b,dph
   9FB6 45 F0              6453 	orl	a,b
   9FB8 70 03              6454 	jnz	00192$
   9FBA 02 A0 FC           6455 	ljmp	00144$
   9FBD                    6456 00192$:
                           6457 ;	main.c:707: if (!auth_success) {
   9FBD 90 1D 99           6458 	mov	dptr,#_auth_success
   9FC0 E0                 6459 	movx	a,@dptr
   9FC1 FF                 6460 	mov	r7,a
   9FC2 60 03              6461 	jz	00193$
   9FC4 02 A0 44           6462 	ljmp	00141$
   9FC7                    6463 00193$:
                           6464 ;	main.c:708: etimer_restart(&et);
   9FC7 90 01 39           6465 	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
   9FCA 75 F0 00           6466 	mov	b,#0x00
   9FCD 78 1C              6467 	mov	r0,#_etimer_restart
   9FCF 79 9C              6468 	mov	r1,#(_etimer_restart >> 8)
   9FD1 7A 04              6469 	mov	r2,#(_etimer_restart >> 16)
   9FD3 12 06 D5           6470 	lcall	__sdcc_banked_call
                           6471 ;	main.c:709: PRINTF("Send auth message\n");
   9FD6 74 FB              6472 	mov	a,#__str_25
   9FD8 C0 E0              6473 	push	acc
   9FDA 74 79              6474 	mov	a,#(__str_25 >> 8)
   9FDC C0 E0              6475 	push	acc
   9FDE 74 80              6476 	mov	a,#0x80
   9FE0 C0 E0              6477 	push	acc
   9FE2 78 6C              6478 	mov	r0,#_printf
   9FE4 79 49              6479 	mov	r1,#(_printf >> 8)
   9FE6 7A 00              6480 	mov	r2,#(_printf >> 16)
   9FE8 12 06 D5           6481 	lcall	__sdcc_banked_call
   9FEB 15 81              6482 	dec	sp
   9FED 15 81              6483 	dec	sp
   9FEF 15 81              6484 	dec	sp
                           6485 ;	main.c:710: len = create_security_client_hello_msg(output_buf);
   9FF1 90 00 04           6486 	mov	dptr,#_output_buf
   9FF4 75 F0 00           6487 	mov	b,#0x00
   9FF7 78 CA              6488 	mov	r0,#_create_security_client_hello_msg
   9FF9 79 A3              6489 	mov	r1,#(_create_security_client_hello_msg >> 8)
   9FFB 7A 04              6490 	mov	r2,#(_create_security_client_hello_msg >> 16)
   9FFD 12 06 D5           6491 	lcall	__sdcc_banked_call
   A000 AE 82              6492 	mov	r6,dpl
   A002 AF 83              6493 	mov	r7,dph
                           6494 ;	main.c:711: if (len){
   A004 EE                 6495 	mov	a,r6
   A005 4F                 6496 	orl	a,r7
   A006 70 03              6497 	jnz	00194$
   A008 02 A0 FC           6498 	ljmp	00144$
   A00B                    6499 00194$:
                           6500 ;	main.c:712: debug_print_msg(output_buf, len);
   A00B C0 07              6501 	push	ar7
   A00D C0 06              6502 	push	ar6
   A00F C0 06              6503 	push	ar6
   A011 C0 07              6504 	push	ar7
   A013 90 00 04           6505 	mov	dptr,#_output_buf
   A016 75 F0 00           6506 	mov	b,#0x00
   A019 78 00              6507 	mov	r0,#_debug_print_msg
   A01B 79 80              6508 	mov	r1,#(_debug_print_msg >> 8)
   A01D 7A 02              6509 	mov	r2,#(_debug_print_msg >> 16)
   A01F 12 06 D5           6510 	lcall	__sdcc_banked_call
   A022 15 81              6511 	dec	sp
   A024 15 81              6512 	dec	sp
   A026 D0 06              6513 	pop	ar6
   A028 D0 07              6514 	pop	ar7
                           6515 ;	main.c:713: send_msg_to_gateway(output_buf, len);
   A02A C0 06              6516 	push	ar6
   A02C C0 07              6517 	push	ar7
   A02E 90 00 04           6518 	mov	dptr,#_output_buf
   A031 75 F0 00           6519 	mov	b,#0x00
   A034 78 13              6520 	mov	r0,#_send_msg_to_gateway
   A036 79 81              6521 	mov	r1,#(_send_msg_to_gateway >> 8)
   A038 7A 02              6522 	mov	r2,#(_send_msg_to_gateway >> 16)
   A03A 12 06 D5           6523 	lcall	__sdcc_banked_call
   A03D 15 81              6524 	dec	sp
   A03F 15 81              6525 	dec	sp
   A041 02 A0 FC           6526 	ljmp	00144$
   A044                    6527 00141$:
                           6528 ;	main.c:715: } else if (!reg_success) {
   A044 90 1D 9A           6529 	mov	dptr,#_reg_success
   A047 E0                 6530 	movx	a,@dptr
   A048 FD                 6531 	mov	r5,a
   A049 60 03              6532 	jz	00195$
   A04B 02 A0 ED           6533 	ljmp	00138$
   A04E                    6534 00195$:
                           6535 ;	main.c:717: etimer_restart(&et);
   A04E 90 01 39           6536 	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
   A051 75 F0 00           6537 	mov	b,#0x00
   A054 78 1C              6538 	mov	r0,#_etimer_restart
   A056 79 9C              6539 	mov	r1,#(_etimer_restart >> 8)
   A058 7A 04              6540 	mov	r2,#(_etimer_restart >> 16)
   A05A 12 06 D5           6541 	lcall	__sdcc_banked_call
                           6542 ;	main.c:719: len = create_new_device_msg(output_buf + sizeof(security_header_t), 
   A05D E4                 6543 	clr	a
   A05E C0 E0              6544 	push	acc
   A060 74 1F              6545 	mov	a,#0x1F
   A062 C0 E0              6546 	push	acc
   A064 74 01              6547 	mov	a,#0x01
   A066 C0 E0              6548 	push	acc
   A068 90 00 07           6549 	mov	dptr,#(_output_buf + 0x0003)
   A06B 75 F0 00           6550 	mov	b,#0x00
   A06E 78 F3              6551 	mov	r0,#_create_new_device_msg
   A070 79 E7              6552 	mov	r1,#(_create_new_device_msg >> 8)
   A072 7A 03              6553 	mov	r2,#(_create_new_device_msg >> 16)
   A074 12 06 D5           6554 	lcall	__sdcc_banked_call
   A077 AC 82              6555 	mov	r4,dpl
   A079 AD 83              6556 	mov	r5,dph
   A07B 15 81              6557 	dec	sp
   A07D 15 81              6558 	dec	sp
   A07F 15 81              6559 	dec	sp
   A081 8C 06              6560 	mov	ar6,r4
   A083 8D 07              6561 	mov	ar7,r5
                           6562 ;	main.c:721: len = create_security_data_msg(output_buf, output_buf + sizeof(security_header_t), len);
   A085 C0 06              6563 	push	ar6
   A087 C0 07              6564 	push	ar7
   A089 74 07              6565 	mov	a,#(_output_buf + 0x0003)
   A08B C0 E0              6566 	push	acc
   A08D 74 00              6567 	mov	a,#((_output_buf + 0x0003) >> 8)
   A08F C0 E0              6568 	push	acc
   A091 E4                 6569 	clr	a
   A092 C0 E0              6570 	push	acc
   A094 90 00 04           6571 	mov	dptr,#_output_buf
   A097 75 F0 00           6572 	mov	b,#0x00
   A09A 78 9B              6573 	mov	r0,#_create_security_data_msg
   A09C 79 A6              6574 	mov	r1,#(_create_security_data_msg >> 8)
   A09E 7A 04              6575 	mov	r2,#(_create_security_data_msg >> 16)
   A0A0 12 06 D5           6576 	lcall	__sdcc_banked_call
   A0A3 AC 82              6577 	mov	r4,dpl
   A0A5 AD 83              6578 	mov	r5,dph
   A0A7 E5 81              6579 	mov	a,sp
   A0A9 24 FB              6580 	add	a,#0xfb
   A0AB F5 81              6581 	mov	sp,a
   A0AD 8C 06              6582 	mov	ar6,r4
   A0AF 8D 07              6583 	mov	ar7,r5
                           6584 ;	main.c:722: if (len) {
   A0B1 EE                 6585 	mov	a,r6
   A0B2 4F                 6586 	orl	a,r7
   A0B3 60 47              6587 	jz	00144$
                           6588 ;	main.c:723: debug_print_msg(output_buf, len);
   A0B5 C0 07              6589 	push	ar7
   A0B7 C0 06              6590 	push	ar6
   A0B9 C0 06              6591 	push	ar6
   A0BB C0 07              6592 	push	ar7
   A0BD 90 00 04           6593 	mov	dptr,#_output_buf
   A0C0 75 F0 00           6594 	mov	b,#0x00
   A0C3 78 00              6595 	mov	r0,#_debug_print_msg
   A0C5 79 80              6596 	mov	r1,#(_debug_print_msg >> 8)
   A0C7 7A 02              6597 	mov	r2,#(_debug_print_msg >> 16)
   A0C9 12 06 D5           6598 	lcall	__sdcc_banked_call
   A0CC 15 81              6599 	dec	sp
   A0CE 15 81              6600 	dec	sp
   A0D0 D0 06              6601 	pop	ar6
   A0D2 D0 07              6602 	pop	ar7
                           6603 ;	main.c:724: send_msg_to_gateway(output_buf, len);
   A0D4 C0 06              6604 	push	ar6
   A0D6 C0 07              6605 	push	ar7
   A0D8 90 00 04           6606 	mov	dptr,#_output_buf
   A0DB 75 F0 00           6607 	mov	b,#0x00
   A0DE 78 13              6608 	mov	r0,#_send_msg_to_gateway
   A0E0 79 81              6609 	mov	r1,#(_send_msg_to_gateway >> 8)
   A0E2 7A 02              6610 	mov	r2,#(_send_msg_to_gateway >> 16)
   A0E4 12 06 D5           6611 	lcall	__sdcc_banked_call
   A0E7 15 81              6612 	dec	sp
   A0E9 15 81              6613 	dec	sp
   A0EB 80 0F              6614 	sjmp	00144$
   A0ED                    6615 00138$:
                           6616 ;	main.c:727: etimer_restart(&et);
   A0ED 90 01 39           6617 	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
   A0F0 75 F0 00           6618 	mov	b,#0x00
   A0F3 78 1C              6619 	mov	r0,#_etimer_restart
   A0F5 79 9C              6620 	mov	r1,#(_etimer_restart >> 8)
   A0F7 7A 04              6621 	mov	r2,#(_etimer_restart >> 16)
   A0F9 12 06 D5           6622 	lcall	__sdcc_banked_call
   A0FC                    6623 00144$:
                           6624 ;	main.c:731: if(ev == tcpip_event) {
   A0FC 90 02 32           6625 	mov	dptr,#_tcpip_event
   A0FF E0                 6626 	movx	a,@dptr
   A100 FF                 6627 	mov	r7,a
   A101 E5 81              6628 	mov	a,sp
   A103 24 FA              6629 	add	a,#0xfa
   A105 F8                 6630 	mov	r0,a
   A106 E6                 6631 	mov	a,@r0
   A107 B5 07 02           6632 	cjne	a,ar7,00197$
   A10A 80 03              6633 	sjmp	00198$
   A10C                    6634 00197$:
   A10C 02 9F 80           6635 	ljmp	00148$
   A10F                    6636 00198$:
                           6637 ;	main.c:732: message_handler();
   A10F 78 77              6638 	mov	r0,#_message_handler
   A111 79 95              6639 	mov	r1,#(_message_handler >> 8)
   A113 7A 02              6640 	mov	r2,#(_message_handler >> 16)
   A115 12 06 D5           6641 	lcall	__sdcc_banked_call
   A118 02 9F 80           6642 	ljmp	00148$
                           6643 ;	main.c:736: PROCESS_END();
   A11B                    6644 00150$:
   A11B A8 81              6645 	mov	r0,sp
   A11D 18                 6646 	dec	r0
   A11E 18                 6647 	dec	r0
   A11F 86 82              6648 	mov	dpl,@r0
   A121 08                 6649 	inc	r0
   A122 86 83              6650 	mov	dph,@r0
   A124 08                 6651 	inc	r0
   A125 86 F0              6652 	mov	b,@r0
   A127 E4                 6653 	clr	a
   A128 12 3D 7D           6654 	lcall	__gptrput
   A12B A3                 6655 	inc	dptr
   A12C E4                 6656 	clr	a
   A12D 12 3D 7D           6657 	lcall	__gptrput
   A130 75 82 03           6658 	mov	dpl,#0x03
   A133                    6659 00151$:
   A133 15 81              6660 	dec	sp
   A135 15 81              6661 	dec	sp
   A137 15 81              6662 	dec	sp
   A139 02 06 E7           6663 	ljmp	__sdcc_banked_ret
                           6664 	.area CSEG    (CODE)
                           6665 	.area CONST   (CODE)
   7850                    6666 _autostart_processes:
   7850 9C 1D 00           6667 	.byte _coconut_sensor_process,(_coconut_sensor_process >> 8),#0x00
                           6668 ; generic printIvalPtr
   7853 00 00 00           6669 	.byte #0x00,#0x00,#0x00
   7856                    6670 __str_0:
   7856 4D 65 73 73 61 67  6671 	.ascii "Message len:%d, content:"
        65 20 6C 65 6E 3A
        25 64 2C 20 63 6F
        6E 74 65 6E 74 3A
   786E 00                 6672 	.db 0x00
   786F                    6673 __str_1:
   786F 25 78 20           6674 	.ascii "%x "
   7872 00                 6675 	.db 0x00
   7873                    6676 __str_2:
   7873 0A                 6677 	.db 0x0A
   7874 00                 6678 	.db 0x00
   7875                    6679 __str_3:
   7875 72 65 67 69 73 74  6680 	.ascii "register response:%s"
        65 72 20 72 65 73
        70 6F 6E 73 65 3A
        25 73
   7889 0A                 6681 	.db 0x0A
   788A 00                 6682 	.db 0x00
   788B                    6683 __str_4:
   788B 72 65 67 69 73 74  6684 	.ascii "register response ret code:%d"
        65 72 20 72 65 73
        70 6F 6E 73 65 20
        72 65 74 20 63 6F
        64 65 3A 25 64
   78A8 0A                 6685 	.db 0x0A
   78A9 00                 6686 	.db 0x00
   78AA                    6687 __str_5:
   78AA 5B 25 64 5D        6688 	.ascii "[%d]"
   78AE 00                 6689 	.db 0x00
   78AF                    6690 __str_6:
   78AF 5B                 6691 	.ascii "["
   78B0 00                 6692 	.db 0x00
   78B1                    6693 __str_7:
   78B1 5B 25 73 2C 5B     6694 	.ascii "[%s,["
   78B6 00                 6695 	.db 0x00
   78B7                    6696 __str_8:
   78B7 5B 25 64 2C 20 25  6697 	.ascii "[%d, %d],"
        64 5D 2C
   78C0 00                 6698 	.db 0x00
   78C1                    6699 __str_9:
   78C1 5B 25 64 2C 20 25  6700 	.ascii "[%d, %f],"
        66 5D 2C
   78CA 00                 6701 	.db 0x00
   78CB                    6702 __str_10:
   78CB 5B 25 64 2C 20 25  6703 	.ascii "[%d, %s],"
        73 5D 2C
   78D4 00                 6704 	.db 0x00
   78D5                    6705 __str_11:
   78D5 5D 5D 2C           6706 	.ascii "]],"
   78D8 00                 6707 	.db 0x00
   78D9                    6708 __str_12:
   78D9 5D                 6709 	.ascii "]"
   78DA 00                 6710 	.db 0x00
   78DB                    6711 __str_13:
   78DB 53 65 63 75 72 69  6712 	.ascii "Security Error:%d"
        74 79 20 45 72 72
        6F 72 3A 25 64
   78EC 00                 6713 	.db 0x00
   78ED                    6714 __str_14:
   78ED 44 65 63 72 79 70  6715 	.ascii "Decrypt Error"
        74 20 45 72 72 6F
        72
   78FA 00                 6716 	.db 0x00
   78FB                    6717 __str_15:
   78FB 49 74 20 69 73 20  6718 	.ascii "It is not for me"
        6E 6F 74 20 66 6F
        72 20 6D 65
   790B 0A                 6719 	.db 0x0A
   790C 00                 6720 	.db 0x00
   790D                    6721 __str_16:
   790D 43 6C 69 65 6E 74  6722 	.ascii "Client IPv6 addresses: "
        20 49 50 76 36 20
        61 64 64 72 65 73
        73 65 73 3A 20
   7924 00                 6723 	.db 0x00
   7925                    6724 __str_17:
   7925 43 6F 63 6F 6E 75  6725 	.ascii "Coconut process started"
        74 20 70 72 6F 63
        65 73 73 20 73 74
        61 72 74 65 64
   793C 0A                 6726 	.db 0x0A
   793D 00                 6727 	.db 0x00
   793E                    6728 __str_18:
   793E 43 72 79 70 74 6F  6729 	.ascii "Crypto init fail"
        20 69 6E 69 74 20
        66 61 69 6C
   794E 0A                 6730 	.db 0x0A
   794F 00                 6731 	.db 0x00
   7950                    6732 __str_19:
   7950 43 72 79 70 74 6F  6733 	.ascii "Crypto init Done"
        20 69 6E 69 74 20
        44 6F 6E 65
   7960 0A                 6734 	.db 0x0A
   7961 00                 6735 	.db 0x00
   7962                    6736 __str_20:
   7962 44 65 76 69 63 65  6737 	.ascii "Device init fail"
        20 69 6E 69 74 20
        66 61 69 6C
   7972 0A                 6738 	.db 0x0A
   7973 00                 6739 	.db 0x00
   7974                    6740 __str_21:
   7974 44 65 76 69 63 65  6741 	.ascii "Device create done"
        20 63 72 65 61 74
        65 20 64 6F 6E 65
   7986 0A                 6742 	.db 0x0A
   7987 00                 6743 	.db 0x00
   7988                    6744 __str_22:
   7988 4E 6F 20 55 44 50  6745 	.ascii "No UDP connection available, exiting the process!"
        20 63 6F 6E 6E 65
        63 74 69 6F 6E 20
        61 76 61 69 6C 61
        62 6C 65 2C 20 65
        78 69 74 69 6E 67
        20 74 68 65 20 70
        72 6F 63 65 73 73
        21
   79B9 0A                 6746 	.db 0x0A
   79BA 00                 6747 	.db 0x00
   79BB                    6748 __str_23:
   79BB 43 72 65 61 74 65  6749 	.ascii "Created a connection with the server "
        64 20 61 20 63 6F
        6E 6E 65 63 74 69
        6F 6E 20 77 69 74
        68 20 74 68 65 20
        73 65 72 76 65 72
        20
   79E0 00                 6750 	.db 0x00
   79E1                    6751 __str_24:
   79E1 20 6C 6F 63 61 6C  6752 	.ascii " local/remote port %u/%u"
        2F 72 65 6D 6F 74
        65 20 70 6F 72 74
        20 25 75 2F 25 75
   79F9 0A                 6753 	.db 0x0A
   79FA 00                 6754 	.db 0x00
   79FB                    6755 __str_25:
   79FB 53 65 6E 64 20 61  6756 	.ascii "Send auth message"
        75 74 68 20 6D 65
        73 73 61 67 65
   7A0C 0A                 6757 	.db 0x0A
   7A0D 00                 6758 	.db 0x00
                           6759 	.area XINIT   (CODE)
   7EC6                    6760 __xinit__auth_success:
   7EC6 00                 6761 	.db #0x00	; 0
   7EC7                    6762 __xinit__reg_success:
   7EC7 00                 6763 	.db #0x00	; 0
   7EC8                    6764 __xinit__get_global_addr_success:
   7EC8 00                 6765 	.db #0x00	; 0
   7EC9                    6766 __xinit__coconut_sensor_process:
                           6767 ; generic printIvalPtr
   7EC9 00 00 00           6768 	.byte #0x00,#0x00,#0x00
   7ECC BB 9C 02           6769 	.byte _process_thread_coconut_sensor_process,(_process_thread_coconut_sensor_process >> 8),(_process_thread_coconut_sensor_process >> 16)
   7ECF 00 00              6770 	.byte #0x00,#0x00	; 0
   7ED1 00                 6771 	.db #0x00	; 0
   7ED2 00                 6772 	.db #0x00	; 0
                           6773 	.area CABS    (ABS,CODE)
