;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Wed Dec  9 12:52:27 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _autostart_processes
	.globl _device_fs_init
	.globl _crypto_init
	.globl _create_security_data_msg
	.globl _create_security_client_hello_msg
	.globl _decrypt_data_by_master_key
	.globl _get_network_shared_key
	.globl _set_network_shared_key
	.globl _decrypt_data_by_network_shared_key
	.globl _create_new_device_msg
	.globl _device_find_object
	.globl _object_remove_subscriber
	.globl _object_add_subscriber
	.globl _object_instance_find_resource
	.globl _set_resource_value
	.globl _get_resource_value
	.globl _subscriber_value_compare_type_init
	.globl _subscriber_report_type_init
	.globl _subscriber_alloc
	.globl _subscribers_mem_pool_init
	.globl _uip_debug_ipaddr_print
	.globl _create_device
	.globl _cJSON_GetArrayItem
	.globl _cJSON_GetArraySize
	.globl _cJSON_Parse
	.globl _sprintf
	.globl _printf
	.globl _uip_udp_packet_sendto
	.globl _uip_ds6_set_addr_iid
	.globl _uip_ds6_get_global
	.globl _uip_ds6_addr_add
	.globl _udp_new
	.globl _etimer_expired
	.globl _etimer_restart
	.globl _etimer_set
	.globl _process_post
	.globl _strlen
	.globl _memcmp
	.globl _strcpy
	.globl _memcpy
	.globl _ACTIVE
	.globl _TX_BYTE
	.globl _RX_BYTE
	.globl _ERR
	.globl _FE
	.globl _SLAVE
	.globl _RE
	.globl _MODE
	.globl _T3OVFIF
	.globl _T3CH0IF
	.globl _T3CH1IF
	.globl _T4OVFIF
	.globl _T4CH0IF
	.globl _T4CH1IF
	.globl _OVFIM
	.globl _B_0
	.globl _B_1
	.globl _B_2
	.globl _B_3
	.globl _B_4
	.globl _B_5
	.globl _B_6
	.globl _B_7
	.globl _P2IF
	.globl _UTX0IF
	.globl _UTX1IF
	.globl _P1IF
	.globl _WDTIF
	.globl _ACC_0
	.globl _ACC_1
	.globl _ACC_2
	.globl _ACC_3
	.globl _ACC_4
	.globl _ACC_5
	.globl _ACC_6
	.globl _ACC_7
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _DMAIF
	.globl _T1IF
	.globl _T2IF
	.globl _T3IF
	.globl _T4IF
	.globl _P0IF
	.globl _STIF
	.globl _DMAIE
	.globl _T1IE
	.globl _T2IE
	.globl _T3IE
	.globl _T4IE
	.globl _P0IE
	.globl _RFERRIE
	.globl _ADCIE
	.globl _URX0IE
	.globl _URX1IE
	.globl _ENCIE
	.globl _STIE
	.globl _EA
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _ENCIF_0
	.globl _ENCIF_1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _IT0
	.globl _RFERRIF
	.globl _IT1
	.globl _URX0IF
	.globl _ADCIF
	.globl _URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _WDCTL
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _U0GCR
	.globl _U0UCR
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _U0CSR
	.globl _TIMIF
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _T2MSEL
	.globl _T2IRQM
	.globl _T2MOVF2
	.globl _T2MOVF1
	.globl _T2MOVF0
	.globl _T2M1
	.globl _T2M0
	.globl _T2IRQF
	.globl _T2EVTCFG
	.globl _T2CTRL
	.globl _T1STAT
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _CLKCONSTA
	.globl _CLKCONCMD
	.globl _SLEEPSTA
	.globl _SLEEPCMD
	.globl _STLOAD
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _RFERRF
	.globl _RFIRQF0
	.globl _RFST
	.globl _RFD
	.globl _RFIRQF1
	.globl _PSBANK
	.globl _FMAP
	.globl _MEMCTR
	.globl __XPAGE
	.globl _MPAGE
	.globl _PMUX
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _APCFG
	.globl _PERCFG
	.globl _P0INP
	.globl _P2IEN
	.globl _P1IEN
	.globl _P0IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _B
	.globl _IRCON2
	.globl _ACC
	.globl _PSW
	.globl _IRCON
	.globl _IP1
	.globl _IEN1
	.globl _IP0
	.globl _IEN0
	.globl _P2
	.globl _S1CON
	.globl _IEN2
	.globl _S0CON
	.globl _DPS
	.globl _P1
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _coconut_sensor_process
	.globl _get_global_addr_success
	.globl _reg_success
	.globl _auth_success
	.globl _output_buf
	.globl _X_IEEE_ADDR
	.globl _X_INFOPAGE
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_APCFG
	.globl _X_PERCFG
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIRQF0
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl _X_MEMCTR
	.globl _X_CLKCONCMD
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl _X_T2MSEL
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl _X_RFERRF
	.globl _X_SLEEPCMD
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl _X_T1STAT
	.globl _X_PMUX
	.globl _X_STLOAD
	.globl _X_P2IEN
	.globl _X_P0IEN
	.globl _X_T2IRQM
	.globl _X_T2MOVF2
	.globl _X_T2MOVF1
	.globl _X_T2MOVF0
	.globl _X_T2M1
	.globl _X_T2M0
	.globl _X_T2IRQF
	.globl _X_P2
	.globl _X_PSBANK
	.globl _X_FMAP
	.globl _X_CLKCONSTA
	.globl _X_SLEEPSTA
	.globl _X_T2EVTCFG
	.globl _X_ST2
	.globl _X_ST1
	.globl _X_ST0
	.globl _X_T2CTRL
	.globl _X__XPAGE
	.globl _X_MPAGE
	.globl _X_RFIRQF1
	.globl _X_P1
	.globl _X_P0INP
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl _X_U0CSR
	.globl _X_P0
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBCTRL
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _CSPT
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _CSPSTAT
	.globl _CSPCTRL
	.globl _CSPPROG23
	.globl _CSPPROG22
	.globl _CSPPROG21
	.globl _CSPPROG20
	.globl _CSPPROG19
	.globl _CSPPROG18
	.globl _CSPPROG17
	.globl _CSPPROG16
	.globl _CSPPROG15
	.globl _CSPPROG14
	.globl _CSPPROG13
	.globl _CSPPROG12
	.globl _CSPPROG11
	.globl _CSPPROG10
	.globl _CSPPROG9
	.globl _CSPPROG8
	.globl _CSPPROG7
	.globl _CSPPROG6
	.globl _CSPPROG5
	.globl _CSPPROG4
	.globl _CSPPROG3
	.globl _CSPPROG2
	.globl _CSPPROG1
	.globl _CSPPROG0
	.globl _RFC_OBS_CTRL2
	.globl _RFC_OBS_CTRL1
	.globl _RFC_OBS_CTRL0
	.globl _TXFILTCFG
	.globl _PTEST1
	.globl _PTEST0
	.globl _ATEST
	.globl _DACTEST2
	.globl _DACTEST1
	.globl _DACTEST0
	.globl _MDMTEST1
	.globl _MDMTEST0
	.globl _ADCTEST2
	.globl _ADCTEST1
	.globl _ADCTEST0
	.globl _AGCCTRL3
	.globl _AGCCTRL2
	.globl _AGCCTRL1
	.globl _AGCCTRL0
	.globl _FSCAL3
	.globl _FSCAL2
	.globl _FSCAL1
	.globl _FSCAL0
	.globl _FSCTRL
	.globl _RXCTRL
	.globl _FREQEST
	.globl _MDMCTRL1
	.globl _MDMCTRL0
	.globl _RFRND
	.globl _RFERRM
	.globl _RFIRQM1
	.globl _RFIRQM0
	.globl _TXLAST_PTR
	.globl _TXFIRST_PTR
	.globl _RXP1_PTR
	.globl _RXLAST_PTR
	.globl _RXFIRST_PTR
	.globl _TXFIFOCNT
	.globl _RXFIFOCNT
	.globl _RXFIRST
	.globl _RSSISTAT
	.globl _RSSI
	.globl _CCACTRL1
	.globl _CCACTRL0
	.globl _FSMCTRL
	.globl _FIFOPCTRL
	.globl _FSMSTAT1
	.globl _FSMSTAT0
	.globl _TXCTRL
	.globl _TXPOWER
	.globl _FREQCTRL
	.globl _FREQTUNE
	.globl _RXMASKCLR
	.globl _RXMASKSET
	.globl _RXENABLE
	.globl _FRMCTRL1
	.globl _FRMCTRL0
	.globl _SRCEXTEN2
	.globl _SRCEXTEN1
	.globl _SRCEXTEN0
	.globl _SRCSHORTEN2
	.globl _SRCSHORTEN1
	.globl _SRCSHORTEN0
	.globl _SRCMATCH
	.globl _FRMFILT1
	.globl _FRMFILT0
	.globl _SHORT_ADDR1
	.globl _SHORT_ADDR0
	.globl _PAN_ID1
	.globl _PAN_ID0
	.globl _EXT_ADDR7
	.globl _EXT_ADDR6
	.globl _EXT_ADDR5
	.globl _EXT_ADDR4
	.globl _EXT_ADDR3
	.globl _EXT_ADDR2
	.globl _EXT_ADDR1
	.globl _EXT_ADDR0
	.globl _SRCSHORTPENDEN2
	.globl _SRCSHORTPENDEN1
	.globl _SRCSHORTPENDEN0
	.globl _SRCEXTPENDEN2
	.globl _SRCEXTPENDEN1
	.globl _SRCEXTPENDEN0
	.globl _SRCRESINDEX
	.globl _SRCRESMASK2
	.globl _SRCRESMASK1
	.globl _SRCRESMASK0
	.globl _SRC_ADDR_TABLE
	.globl _TXFIFO
	.globl _RXFIFO
	.globl _RFCORE_RAM
	.globl _CMPCTL
	.globl _OPAMPS
	.globl _OPAMPC
	.globl _STCV2
	.globl _STCV1
	.globl _STCV0
	.globl _STCS
	.globl _STCC
	.globl _T1CC4H
	.globl _T1CC4L
	.globl _T1CC3H
	.globl _T1CC3L
	.globl _XX_T1CC2H
	.globl _XX_T1CC2L
	.globl _XX_T1CC1H
	.globl _XX_T1CC1L
	.globl _XX_T1CC0H
	.globl _XX_T1CC0L
	.globl _T1CCTL4
	.globl _T1CCTL3
	.globl _XX_T1CCTL2
	.globl _XX_T1CCTL1
	.globl _XX_T1CCTL0
	.globl _CLD
	.globl _IRCTL
	.globl _CHIPINFO1
	.globl _CHIPINFO0
	.globl _FWDATA
	.globl _FADDRH
	.globl _FADDRL
	.globl _FCTL
	.globl _IVCTRL
	.globl _BATTMON
	.globl _SRCRC
	.globl _DBGDATA
	.globl _TESTREG0
	.globl _CHIPID
	.globl _CHVER
	.globl _OBSSEL5
	.globl _OBSSEL4
	.globl _OBSSEL3
	.globl _OBSSEL2
	.globl _OBSSEL1
	.globl _OBSSEL0
	.globl _I2CIO
	.globl _I2CWC
	.globl _I2CADDR
	.globl _I2CDATA
	.globl _I2CSTAT
	.globl _I2CCFG
	.globl _OPAMPMC
	.globl _MONMUX
	.globl _send_msg
	.globl _send_msg_to_gateway
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_P1	=	0x0090
_DPS	=	0x0092
_S0CON	=	0x0098
_IEN2	=	0x009a
_S1CON	=	0x009b
_P2	=	0x00a0
_IEN0	=	0x00a8
_IP0	=	0x00a9
_IEN1	=	0x00b8
_IP1	=	0x00b9
_IRCON	=	0x00c0
_PSW	=	0x00d0
_ACC	=	0x00e0
_IRCON2	=	0x00e8
_B	=	0x00f0
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P0IEN	=	0x00ab
_P1IEN	=	0x008d
_P2IEN	=	0x00ac
_P0INP	=	0x008f
_PERCFG	=	0x00f1
_APCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
_PMUX	=	0x00ae
_MPAGE	=	0x0093
__XPAGE	=	0x0093
_MEMCTR	=	0x00c7
_FMAP	=	0x009f
_PSBANK	=	0x009f
_RFIRQF1	=	0x0091
_RFD	=	0x00d9
_RFST	=	0x00e1
_RFIRQF0	=	0x00e9
_RFERRF	=	0x00bf
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_STLOAD	=	0x00ad
_SLEEPCMD	=	0x00be
_SLEEPSTA	=	0x009d
_CLKCONCMD	=	0x00c6
_CLKCONSTA	=	0x009e
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_T1STAT	=	0x00af
_T2CTRL	=	0x0094
_T2EVTCFG	=	0x009c
_T2IRQF	=	0x00a1
_T2M0	=	0x00a2
_T2M1	=	0x00a3
_T2MOVF0	=	0x00a4
_T2MOVF1	=	0x00a5
_T2MOVF2	=	0x00a6
_T2IRQM	=	0x00a7
_T2MSEL	=	0x00c3
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_TIMIF	=	0x00d8
_U0CSR	=	0x0086
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_WDCTL	=	0x00c9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_URX1IF	=	0x008f
_ADCIF	=	0x008d
_URX0IF	=	0x008b
_IT1	=	0x008a
_RFERRIF	=	0x0089
_IT0	=	0x0088
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_ENCIF_1	=	0x0099
_ENCIF_0	=	0x0098
_P2_7	=	0x00a7
_P2_6	=	0x00a6
_P2_5	=	0x00a5
_P2_4	=	0x00a4
_P2_3	=	0x00a3
_P2_2	=	0x00a2
_P2_1	=	0x00a1
_P2_0	=	0x00a0
_EA	=	0x00af
_STIE	=	0x00ad
_ENCIE	=	0x00ac
_URX1IE	=	0x00ab
_URX0IE	=	0x00aa
_ADCIE	=	0x00a9
_RFERRIE	=	0x00a8
_P0IE	=	0x00bd
_T4IE	=	0x00bc
_T3IE	=	0x00bb
_T2IE	=	0x00ba
_T1IE	=	0x00b9
_DMAIE	=	0x00b8
_STIF	=	0x00c7
_P0IF	=	0x00c5
_T4IF	=	0x00c4
_T3IF	=	0x00c3
_T2IF	=	0x00c2
_T1IF	=	0x00c1
_DMAIF	=	0x00c0
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ACC_7	=	0x00e7
_ACC_6	=	0x00e6
_ACC_5	=	0x00e5
_ACC_4	=	0x00e4
_ACC_3	=	0x00e3
_ACC_2	=	0x00e2
_ACC_1	=	0x00e1
_ACC_0	=	0x00e0
_WDTIF	=	0x00ec
_P1IF	=	0x00eb
_UTX1IF	=	0x00ea
_UTX0IF	=	0x00e9
_P2IF	=	0x00e8
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
_B_4	=	0x00f4
_B_3	=	0x00f3
_B_2	=	0x00f2
_B_1	=	0x00f1
_B_0	=	0x00f0
_OVFIM	=	0x00de
_T4CH1IF	=	0x00dd
_T4CH0IF	=	0x00dc
_T4OVFIF	=	0x00db
_T3CH1IF	=	0x00da
_T3CH0IF	=	0x00d9
_T3OVFIF	=	0x00d8
_MODE	=	0x00ff
_RE	=	0x00fe
_SLAVE	=	0x00fd
_FE	=	0x00fc
_ERR	=	0x00fb
_RX_BYTE	=	0x00fa
_TX_BYTE	=	0x00f9
_ACTIVE	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MONMUX	=	0x61a6
_OPAMPMC	=	0x61a6
_I2CCFG	=	0x6230
_I2CSTAT	=	0x6231
_I2CDATA	=	0x6232
_I2CADDR	=	0x6233
_I2CWC	=	0x6234
_I2CIO	=	0x6235
_OBSSEL0	=	0x6243
_OBSSEL1	=	0x6244
_OBSSEL2	=	0x6245
_OBSSEL3	=	0x6246
_OBSSEL4	=	0x6247
_OBSSEL5	=	0x6248
_CHVER	=	0x6249
_CHIPID	=	0x624a
_TESTREG0	=	0x624b
_DBGDATA	=	0x6260
_SRCRC	=	0x6262
_BATTMON	=	0x6264
_IVCTRL	=	0x6265
_FCTL	=	0x6270
_FADDRL	=	0x6271
_FADDRH	=	0x6272
_FWDATA	=	0x6273
_CHIPINFO0	=	0x6276
_CHIPINFO1	=	0x6277
_IRCTL	=	0x6281
_CLD	=	0x6290
_XX_T1CCTL0	=	0x62a0
_XX_T1CCTL1	=	0x62a1
_XX_T1CCTL2	=	0x62a2
_T1CCTL3	=	0x62a3
_T1CCTL4	=	0x62a4
_XX_T1CC0L	=	0x62a6
_XX_T1CC0H	=	0x62a7
_XX_T1CC1L	=	0x62a8
_XX_T1CC1H	=	0x62a9
_XX_T1CC2L	=	0x62aa
_XX_T1CC2H	=	0x62ab
_T1CC3L	=	0x62ac
_T1CC3H	=	0x62ad
_T1CC4L	=	0x62ae
_T1CC4H	=	0x62af
_STCC	=	0x62b0
_STCS	=	0x62b1
_STCV0	=	0x62b2
_STCV1	=	0x62b3
_STCV2	=	0x62b4
_OPAMPC	=	0x62c0
_OPAMPS	=	0x62c1
_CMPCTL	=	0x62d0
_RFCORE_RAM	=	0x6000
_RXFIFO	=	0x6000
_TXFIFO	=	0x6080
_SRC_ADDR_TABLE	=	0x6100
_SRCRESMASK0	=	0x6160
_SRCRESMASK1	=	0x6161
_SRCRESMASK2	=	0x6162
_SRCRESINDEX	=	0x6163
_SRCEXTPENDEN0	=	0x6164
_SRCEXTPENDEN1	=	0x6165
_SRCEXTPENDEN2	=	0x6166
_SRCSHORTPENDEN0	=	0x6167
_SRCSHORTPENDEN1	=	0x6168
_SRCSHORTPENDEN2	=	0x6169
_EXT_ADDR0	=	0x616a
_EXT_ADDR1	=	0x616b
_EXT_ADDR2	=	0x616c
_EXT_ADDR3	=	0x616d
_EXT_ADDR4	=	0x616e
_EXT_ADDR5	=	0x616f
_EXT_ADDR6	=	0x6170
_EXT_ADDR7	=	0x6171
_PAN_ID0	=	0x6172
_PAN_ID1	=	0x6173
_SHORT_ADDR0	=	0x6174
_SHORT_ADDR1	=	0x6175
_FRMFILT0	=	0x6180
_FRMFILT1	=	0x6181
_SRCMATCH	=	0x6182
_SRCSHORTEN0	=	0x6183
_SRCSHORTEN1	=	0x6184
_SRCSHORTEN2	=	0x6185
_SRCEXTEN0	=	0x6186
_SRCEXTEN1	=	0x6187
_SRCEXTEN2	=	0x6188
_FRMCTRL0	=	0x6189
_FRMCTRL1	=	0x618a
_RXENABLE	=	0x618b
_RXMASKSET	=	0x618c
_RXMASKCLR	=	0x618d
_FREQTUNE	=	0x618e
_FREQCTRL	=	0x618f
_TXPOWER	=	0x6190
_TXCTRL	=	0x6191
_FSMSTAT0	=	0x6192
_FSMSTAT1	=	0x6193
_FIFOPCTRL	=	0x6194
_FSMCTRL	=	0x6195
_CCACTRL0	=	0x6196
_CCACTRL1	=	0x6197
_RSSI	=	0x6198
_RSSISTAT	=	0x6199
_RXFIRST	=	0x619a
_RXFIFOCNT	=	0x619b
_TXFIFOCNT	=	0x619c
_RXFIRST_PTR	=	0x619d
_RXLAST_PTR	=	0x619e
_RXP1_PTR	=	0x619f
_TXFIRST_PTR	=	0x61a1
_TXLAST_PTR	=	0x61a2
_RFIRQM0	=	0x61a3
_RFIRQM1	=	0x61a4
_RFERRM	=	0x61a5
_RFRND	=	0x61a7
_MDMCTRL0	=	0x61a8
_MDMCTRL1	=	0x61a9
_FREQEST	=	0x61aa
_RXCTRL	=	0x61ab
_FSCTRL	=	0x61ac
_FSCAL0	=	0x61ad
_FSCAL1	=	0x61ae
_FSCAL2	=	0x61af
_FSCAL3	=	0x61b0
_AGCCTRL0	=	0x61b1
_AGCCTRL1	=	0x61b2
_AGCCTRL2	=	0x61b3
_AGCCTRL3	=	0x61b4
_ADCTEST0	=	0x61b5
_ADCTEST1	=	0x61b6
_ADCTEST2	=	0x61b7
_MDMTEST0	=	0x61b8
_MDMTEST1	=	0x61b9
_DACTEST0	=	0x61ba
_DACTEST1	=	0x61bb
_DACTEST2	=	0x61bc
_ATEST	=	0x61bd
_PTEST0	=	0x61be
_PTEST1	=	0x61bf
_TXFILTCFG	=	0x61fa
_RFC_OBS_CTRL0	=	0x61eb
_RFC_OBS_CTRL1	=	0x61ec
_RFC_OBS_CTRL2	=	0x61ed
_CSPPROG0	=	0x61c0
_CSPPROG1	=	0x61c1
_CSPPROG2	=	0x61c2
_CSPPROG3	=	0x61c3
_CSPPROG4	=	0x61c4
_CSPPROG5	=	0x61c5
_CSPPROG6	=	0x61c6
_CSPPROG7	=	0x61c7
_CSPPROG8	=	0x61c8
_CSPPROG9	=	0x61c9
_CSPPROG10	=	0x61ca
_CSPPROG11	=	0x61cb
_CSPPROG12	=	0x61cc
_CSPPROG13	=	0x61cd
_CSPPROG14	=	0x61ce
_CSPPROG15	=	0x61cf
_CSPPROG16	=	0x61d0
_CSPPROG17	=	0x61d1
_CSPPROG18	=	0x61d2
_CSPPROG19	=	0x61d3
_CSPPROG20	=	0x61d4
_CSPPROG21	=	0x61d5
_CSPPROG22	=	0x61d6
_CSPPROG23	=	0x61d7
_CSPCTRL	=	0x61e0
_CSPSTAT	=	0x61e1
_CSPX	=	0x61e2
_CSPY	=	0x61e3
_CSPZ	=	0x61e4
_CSPT	=	0x61e5
_USBADDR	=	0x6200
_USBPOW	=	0x6201
_USBIIF	=	0x6202
_USBOIF	=	0x6204
_USBCIF	=	0x6206
_USBIIE	=	0x6207
_USBOIE	=	0x6209
_USBCIE	=	0x620b
_USBFRML	=	0x620c
_USBFRMH	=	0x620d
_USBINDEX	=	0x620e
_USBCTRL	=	0x620f
_USBMAXI	=	0x6210
_USBCS0	=	0x6211
_USBCSIL	=	0x6211
_USBCSIH	=	0x6212
_USBMAXO	=	0x6213
_USBCSOL	=	0x6214
_USBCSOH	=	0x6215
_USBCNT0	=	0x6216
_USBCNTL	=	0x6216
_USBCNTH	=	0x6217
_USBF0	=	0x6220
_USBF1	=	0x6222
_USBF2	=	0x6224
_USBF3	=	0x6226
_USBF4	=	0x6228
_USBF5	=	0x622a
_X_P0	=	0x7080
_X_U0CSR	=	0x7086
_X_P0IFG	=	0x7089
_X_P1IFG	=	0x708a
_X_P2IFG	=	0x708b
_X_PICTL	=	0x708c
_X_P1IEN	=	0x708d
_X_P0INP	=	0x708f
_X_P1	=	0x7090
_X_RFIRQF1	=	0x7091
_X_MPAGE	=	0x7093
_X__XPAGE	=	0x7093
_X_T2CTRL	=	0x7094
_X_ST0	=	0x7095
_X_ST1	=	0x7096
_X_ST2	=	0x7097
_X_T2EVTCFG	=	0x709c
_X_SLEEPSTA	=	0x709d
_X_CLKCONSTA	=	0x709e
_X_FMAP	=	0x709f
_X_PSBANK	=	0x709f
_X_P2	=	0x70a0
_X_T2IRQF	=	0x70a1
_X_T2M0	=	0x70a2
_X_T2M1	=	0x70a3
_X_T2MOVF0	=	0x70a4
_X_T2MOVF1	=	0x70a5
_X_T2MOVF2	=	0x70a6
_X_T2IRQM	=	0x70a7
_X_P0IEN	=	0x70ab
_X_P2IEN	=	0x70ac
_X_STLOAD	=	0x70ad
_X_PMUX	=	0x70ae
_X_T1STAT	=	0x70af
_X_ENCDI	=	0x70b1
_X_ENCDO	=	0x70b2
_X_ENCCS	=	0x70b3
_X_ADCCON1	=	0x70b4
_X_ADCCON2	=	0x70b5
_X_ADCCON3	=	0x70b6
_X_ADCL	=	0x70ba
_X_ADCH	=	0x70bb
_X_RNDL	=	0x70bc
_X_RNDH	=	0x70bd
_X_SLEEPCMD	=	0x70be
_X_RFERRF	=	0x70bf
_X_U0DBUF	=	0x70c1
_X_U0BAUD	=	0x70c2
_X_T2MSEL	=	0x70c3
_X_U0UCR	=	0x70c4
_X_U0GCR	=	0x70c5
_X_CLKCONCMD	=	0x70c6
_X_MEMCTR	=	0x70c7
_X_WDCTL	=	0x70c9
_X_T3CNT	=	0x70ca
_X_T3CTL	=	0x70cb
_X_T3CCTL0	=	0x70cc
_X_T3CC0	=	0x70cd
_X_T3CCTL1	=	0x70ce
_X_T3CC1	=	0x70cf
_X_DMAIRQ	=	0x70d1
_X_DMA1CFGL	=	0x70d2
_X_DMA1CFGH	=	0x70d3
_X_DMA0CFGL	=	0x70d4
_X_DMA0CFGH	=	0x70d5
_X_DMAARM	=	0x70d6
_X_DMAREQ	=	0x70d7
_X_TIMIF	=	0x70d8
_X_RFD	=	0x70d9
_X_T1CC0L	=	0x70da
_X_T1CC0H	=	0x70db
_X_T1CC1L	=	0x70dc
_X_T1CC1H	=	0x70dd
_X_T1CC2L	=	0x70de
_X_T1CC2H	=	0x70df
_X_RFST	=	0x70e1
_X_T1CNTL	=	0x70e2
_X_T1CNTH	=	0x70e3
_X_T1CTL	=	0x70e4
_X_T1CCTL0	=	0x70e5
_X_T1CCTL1	=	0x70e6
_X_T1CCTL2	=	0x70e7
_X_RFIRQF0	=	0x70e9
_X_T4CNT	=	0x70ea
_X_T4CTL	=	0x70eb
_X_T4CCTL0	=	0x70ec
_X_T4CC0	=	0x70ed
_X_T4CCTL1	=	0x70ee
_X_T4CC1	=	0x70ef
_X_PERCFG	=	0x70f1
_X_APCFG	=	0x70f2
_X_P0SEL	=	0x70f3
_X_P1SEL	=	0x70f4
_X_P2SEL	=	0x70f5
_X_P1INP	=	0x70f6
_X_P2INP	=	0x70f7
_X_U1CSR	=	0x70f8
_X_U1DBUF	=	0x70f9
_X_U1BAUD	=	0x70fa
_X_U1UCR	=	0x70fb
_X_U1GCR	=	0x70fc
_X_P0DIR	=	0x70fd
_X_P1DIR	=	0x70fe
_X_P2DIR	=	0x70ff
_X_INFOPAGE	=	0x7800
_X_IEEE_ADDR	=	0x780c
_output_buf::
	.ds 290
_client_conn:
	.ds 3
_server_ipaddr:
	.ds 16
_process_thread_coconut_sensor_process_et_1_1:
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_auth_success::
	.ds 1
_reg_success::
	.ds 1
_get_global_addr_success::
	.ds 1
_coconut_sensor_process::
	.ds 10
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
	.area BANK1   (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'debug_print_msg'
;------------------------------------------------------------
;len                       Allocated to stack - sp -7
;msg                       Allocated to stack - sp -2
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	main.c:45: static void debug_print_msg(uint8_t *msg, uint16_t len)
;	-----------------------------------------
;	 function debug_print_msg
;	-----------------------------------------
_debug_print_msg:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	dpl
	push	dph
	push	b
;	main.c:49: PRINTF("Message len:%d, content:", len);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:50: for(i = 0; i < len; i++) {
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00104$
;	main.c:51: PRINTF("%x ", msg[i]);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r3
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	main.c:50: for(i = 0; i < len; i++) {
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00104$:
;	main.c:53: PRINTF("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_msg'
;------------------------------------------------------------
;len                       Allocated to stack - sp -6
;peer_ipaddr               Allocated to stack - sp -9
;data                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	main.c:56: void send_msg(uint8_t *data, uint16_t len, uip_ipaddr_t *peer_ipaddr)
;	-----------------------------------------
;	 function send_msg
;	-----------------------------------------
_send_msg:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:59: uip_udp_packet_sendto(client_conn, data, len,
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dptr,#_client_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x16
	push	acc
	mov	a,#0x2E
	push	acc
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	main.c:63: return;
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_msg_to_gateway'
;------------------------------------------------------------
;len                       Allocated to stack - sp -6
;data                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	main.c:66: void send_msg_to_gateway(uint8_t *data, uint16_t len)
;	-----------------------------------------
;	 function send_msg_to_gateway
;	-----------------------------------------
_send_msg_to_gateway:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:70: &server_ipaddr, UIP_HTONS(COCONUT_UDP_SERVER_PORT));
;	main.c:69: uip_udp_packet_sendto(client_conn, data, len,
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dptr,#_client_conn
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x16
	push	acc
	mov	a,#0x2E
	push	acc
	mov	a,#_server_ipaddr
	push	acc
	mov	a,#(_server_ipaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	main.c:73: return;
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'discover_request_handler'
;------------------------------------------------------------
;len                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:78: discover_request_handler()
;	-----------------------------------------
;	 function discover_request_handler
;	-----------------------------------------
_discover_request_handler:
;	main.c:82: len = create_new_device_msg(output_buf, MAX_PAYLOAD_LEN, TYPE_RESPONSE);
	mov	a,#0x01
	push	acc
	mov	a,#0x22
	push	acc
	mov	a,#0x01
	push	acc
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_create_new_device_msg
	mov	r1,#(_create_new_device_msg >> 8)
	mov	r2,#(_create_new_device_msg >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
;	main.c:83: if (len > 0) {
	mov	a,r6
	orl	a,r7
	jz	00103$
;	main.c:84: send_msg(output_buf, len, &UIP_IP_BUF->srcipaddr);
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	push	ar4
	push	ar5
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg
	mov	r1,#(_send_msg >> 8)
	mov	r2,#(_send_msg >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_response_handler'
;------------------------------------------------------------
;parameters                Allocated to registers r5 r6 r7 
;root                      Allocated to registers r5 r6 r7 
;sub                       Allocated to stack - sp -2
;------------------------------------------------------------
;	main.c:90: register_response_handler(uint8_t *parameters)
;	-----------------------------------------
;	 function register_response_handler
;	-----------------------------------------
_register_response_handler:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:94: PRINTF("register response:%s\n", parameters);
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:95: if (!parameters) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	main.c:96: return;
	ljmp	00108$
00102$:
;	main.c:99: root = cJSON_Parse(parameters);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Parse
	mov	r1,#(_cJSON_Parse >> 8)
	mov	r2,#(_cJSON_Parse >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:101: if (!root) {
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	main.c:102: return;
	ljmp	00108$
00104$:
;	main.c:105: sub = cJSON_GetArrayItem(root, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:106: PRINTF("register response ret code:%d\n", sub->valueint);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0E
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	main.c:107: if (sub && sub->valueint == RETCODE_SUCCESS) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jnz	00106$
;	main.c:108: reg_success = 1;
	mov	dptr,#_reg_success
	mov	a,#0x01
	movx	@dptr,a
00106$:
;	main.c:111: return;
00108$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'report_request_handler'
;------------------------------------------------------------
;parameters                Allocated to stack - sp -5
;device_id                 Allocated to registers 
;------------------------------------------------------------
;	main.c:116: report_request_handler(uint8_t *device_id, uint8_t *parameters)
;	-----------------------------------------
;	 function report_request_handler
;	-----------------------------------------
_report_request_handler:
;	main.c:118: return;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_objects_request_handler'
;------------------------------------------------------------
;parameters                Allocated to registers r5 r6 r7 
;root                      Allocated to stack - sp -28
;sub                       Allocated to registers r5 r6 r7 
;sub1                      Allocated to registers r2 r3 r4 
;sub2                      Allocated to stack - sp -25
;sub3                      Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -22
;j                         Allocated to stack - sp -20
;obj                       Allocated to stack - sp -18
;res                       Allocated to stack - sp -15
;value                     Allocated to stack - sp -12
;retcode                   Allocated to registers 
;sloc0                     Allocated to stack - sp -4
;sloc1                     Allocated to stack - sp +10
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	main.c:123: set_objects_request_handler(uint8_t *parameters)
;	-----------------------------------------
;	 function set_objects_request_handler
;	-----------------------------------------
_set_objects_request_handler:
	mov	a,sp
	add	a,#0x1D
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:132: if (!parameters) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	main.c:133: return;
	ljmp	00138$
00102$:
;	main.c:136: root = cJSON_Parse(parameters);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Parse
	mov	r1,#(_cJSON_Parse >> 8)
	mov	r2,#(_cJSON_Parse >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:138: if (!root) {
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00156$
;	main.c:139: return;
	ljmp	00138$
00156$:
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00134$:
;	main.c:142: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArraySize
	mov	r1,#(_cJSON_GetArraySize >> 8)
	mov	r2,#(_cJSON_GetArraySize >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00177$
	ljmp	00137$
00177$:
;	main.c:144: sub = cJSON_GetArrayItem(root, i);
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
;	main.c:145: if (!sub) {
	mov	a,r5
	orl	a,r6
	jnz	00106$
;	main.c:146: return;
	ljmp	00138$
00106$:
;	main.c:149: sub1 = cJSON_GetArrayItem(sub, 0);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:150: if (!sub1) {
	mov	a,r2
	orl	a,r3
	jnz	00108$
;	main.c:151: return;
	ljmp	00138$
00108$:
;	main.c:154: obj = device_find_object(sub1->valuestring);
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0B
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_device_find_object
	mov	r1,#(_device_find_object >> 8)
	mov	r2,#(_device_find_object >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:155: if(!obj) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00180$
	ljmp	00136$
00180$:
;	main.c:160: sub1 = cJSON_GetArrayItem(sub, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	main.c:161: if (!sub1) {
	mov	a,r2
	orl	a,r3
	jnz	00181$
	ljmp	00136$
00181$:
;	main.c:165: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00130$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_cJSON_GetArraySize
	mov	r1,#(_cJSON_GetArraySize >> 8)
	mov	r2,#(_cJSON_GetArraySize >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00182$
	ljmp	00136$
00182$:
;	main.c:166: sub2 = cJSON_GetArrayItem(sub1, j);
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:167: if (!sub2) {
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00183$
	ljmp	00132$
00183$:
;	main.c:171: sub3 = cJSON_GetArrayItem(sub2, 0);
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	main.c:172: if (!sub3) {
	mov	a,r5
	orl	a,r6
	jnz	00184$
	ljmp	00132$
00184$:
;	main.c:176: res = object_instance_find_resource(obj, sub3->valueint);
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x0E
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_object_instance_find_resource
	mov	r1,#(_object_instance_find_resource >> 8)
	mov	r2,#(_object_instance_find_resource >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	main.c:177: if (!res) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00185$
	ljmp	00132$
00185$:
;	main.c:181: sub3 = cJSON_GetArrayItem(sub2, 1);
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	main.c:182: if (!sub3) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jnz	00186$
	ljmp	00132$
00186$:
;	main.c:186: if (res->resource_type->type == Integer) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jnz	00128$
;	main.c:187: value.int_value = sub3->valueint;
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xF1
	mov	r1,a
	mov	a,#0x0E
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	dec	r1
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00129$
00128$:
;	main.c:188: } else if (res->resource_type->type == Float) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x01,00125$
;	main.c:189: value.float_value = sub3->valuefloat;
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xF1
	mov	r1,a
	mov	a,#0x10
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	inc	r0
	mov	a,@r0
	mov	@r1,a
	inc	r1
	inc	r0
	mov	a,@r0
	mov	@r1,a
	inc	r1
	inc	r0
	mov	a,@r0
	mov	@r1,a
	dec	r1
	dec	r1
	dec	r1
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00129$
00125$:
;	main.c:190: } else if (res->resource_type->type == String) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x02,00190$
	sjmp	00191$
00190$:
	ljmp	00132$
00191$:
;	main.c:191: strcpy(value.string_value, sub3->valuestring);
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x0B
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xF1
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,#_strcpy
	mov	r1,#(_strcpy >> 8)
	mov	r2,#(_strcpy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	main.c:204: return;
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:193: continue;
00129$:
;	main.c:196: set_resource_value(res, &value);
	mov	a,sp
	add	a,#0xF4
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set_resource_value
	mov	r1,#(_set_resource_value >> 8)
	mov	r2,#(_set_resource_value >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
00132$:
;	main.c:165: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00192$
	inc	r0
	inc	@r0
00192$:
	ljmp	00130$
00136$:
;	main.c:142: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00193$
	inc	r0
	inc	@r0
00193$:
	ljmp	00134$
00137$:
;	main.c:201: sprintf(output_buf, "[%d]", retcode);
	clr	a
	push	acc
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_output_buf
	push	acc
	mov	a,#(_output_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:202: send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_output_buf
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar6
	push	ar7
	push	ar5
	push	ar3
	push	ar4
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg
	mov	r1,#(_send_msg >> 8)
	mov	r2,#(_send_msg >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:204: return;
00138$:
	mov	a,sp
	add	a,#0xE3
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_resources_request_handler'
;------------------------------------------------------------
;parameters                Allocated to registers r5 r6 r7 
;root                      Allocated to stack - sp -33
;sub                       Allocated to stack - sp -30
;sub1                      Allocated to stack - sp -27
;sub2                      Allocated to registers r3 r4 r5 
;i                         Allocated to stack - sp -24
;j                         Allocated to registers r6 r7 
;obj                       Allocated to stack - sp -22
;res                       Allocated to registers r5 r4 r3 
;value                     Allocated to stack - sp -19
;ptr                       Allocated to stack - sp -11
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +4
;sloc2                     Allocated to stack - sp -8
;sloc3                     Allocated to stack - sp -6
;sloc4                     Allocated to stack - sp -3
;------------------------------------------------------------
;	main.c:210: get_resources_request_handler(uint8_t *parameters)
;	-----------------------------------------
;	 function get_resources_request_handler
;	-----------------------------------------
_get_resources_request_handler:
	mov	a,sp
	add	a,#0x22
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:217: uint8_t *ptr = output_buf;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,#_output_buf
	inc	r0
	mov	@r0,#(_output_buf >> 8)
	inc	r0
	mov	@r0,#0x00
;	main.c:219: if (!parameters) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	main.c:220: return;
	ljmp	00136$
00102$:
;	main.c:223: root = cJSON_Parse(parameters);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Parse
	mov	r1,#(_cJSON_Parse >> 8)
	mov	r2,#(_cJSON_Parse >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:225: if (!root) {
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	main.c:226: return;
	ljmp	00136$
00104$:
;	main.c:229: sprintf(ptr, "[");
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
;	main.c:230: ptr++;
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00173$
	inc	r0
	inc	@r0
00173$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	main.c:296: return;
;	main.c:230: ptr++;
00132$:
;	main.c:232: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArraySize
	mov	r1,#(_cJSON_GetArraySize >> 8)
	mov	r2,#(_cJSON_GetArraySize >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00174$
	ljmp	00135$
00174$:
;	main.c:234: sub = cJSON_GetArrayItem(root, i);
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	main.c:235: if (!sub) {
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	main.c:236: return;
	ljmp	00136$
00106$:
;	main.c:239: sub1 = cJSON_GetArrayItem(sub, 0);
	clr	a
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	main.c:240: if (!sub1) {
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
;	main.c:241: return;
	ljmp	00136$
00108$:
;	main.c:244: obj = device_find_object(sub1->valuestring);
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_device_find_object
	mov	r1,#(_device_find_object >> 8)
	mov	r2,#(_device_find_object >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	main.c:245: if(!obj) {
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00177$
	ljmp	00134$
00177$:
;	main.c:249: sprintf(ptr, "[%s,[", sub1->valuestring);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf7
;	main.c:250: ptr = ptr + strlen(ptr);
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	main.c:253: sub1 = cJSON_GetArrayItem(sub, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:254: if (!sub1) {
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00178$
	ljmp	00134$
00178$:
;	main.c:258: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
	mov	r6,#0x00
	mov	r7,#0x00
00128$:
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	mov	r0,#_cJSON_GetArraySize
	mov	r1,#(_cJSON_GetArraySize >> 8)
	mov	r2,#(_cJSON_GetArraySize >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00179$
	ljmp	00131$
00179$:
;	main.c:259: sub2 = cJSON_GetArrayItem(sub1, j);
	mov	ar4,r6
	mov	ar5,r7
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:260: if (!sub2) {
	mov	a,r3
	orl	a,r4
	jnz	00180$
	ljmp	00130$
00180$:
;	main.c:264: res = object_instance_find_resource(obj, sub2->valueint);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x0E
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar7
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_object_instance_find_resource
	mov	r1,#(_object_instance_find_resource >> 8)
	mov	r2,#(_object_instance_find_resource >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	ar5,r2
	mov	ar4,r6
	mov	ar3,r7
;	main.c:265: if (!res) {
	pop	ar7
	pop	ar6
	mov	a,r5
	orl	a,r4
	jnz	00181$
	ljmp	00130$
00181$:
;	main.c:269: if (get_resource_value(res, &value) == FAIL) {
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xEB
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	r0,#_get_resource_value
	mov	r1,#(_get_resource_value >> 8)
	mov	r2,#(_get_resource_value >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,r7
	pop	ar7
	pop	ar6
	jnz	00182$
	ljmp	00130$
00182$:
;	main.c:273: if (res->resource_type->type == Integer) {
	push	ar6
	push	ar7
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	pop	ar7
	pop	ar6
	mov	a,r5
	jz	00183$
	ljmp	00126$
00183$:
;	main.c:274: sprintf(ptr, "[%d, %d],", sub2->valueint, value.int_value);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xEB
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:275: ptr = ptr + strlen(ptr);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	ljmp	00130$
00126$:
;	main.c:276: } else if (res->resource_type->type == Float) {
	cjne	r5,#0x01,00184$
	sjmp	00185$
00184$:
	ljmp	00123$
00185$:
;	main.c:277: sprintf(ptr, "[%d, %f],", sub2->valueint, value.float_value);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xEB
	mov	r1,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar2
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar3
	push	ar4
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:278: ptr = ptr + strlen(ptr);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	ljmp	00130$
00123$:
;	main.c:279: } else if (res->resource_type->type == String) {
	cjne	r5,#0x02,00186$
	sjmp	00187$
00186$:
	ljmp	00130$
00187$:
;	main.c:280: sprintf(ptr, "[%d, %s],", sub2->valueint, value.string_value);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xEB
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:281: ptr = ptr + strlen(ptr);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	main.c:296: return;
	pop	ar7
	pop	ar6
;	main.c:283: continue;
00130$:
;	main.c:258: for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
	inc	r6
	cjne	r6,#0x00,00188$
	inc	r7
00188$:
	ljmp	00128$
00131$:
;	main.c:288: sprintf((ptr - 1), "]],");
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	add	a,#0xFF
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
;	main.c:289: ptr += 2;
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00134$:
;	main.c:232: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00189$
	inc	r0
	inc	@r0
00189$:
	ljmp	00132$
00135$:
;	main.c:292: sprintf((ptr - 1), "]");//discard last ','
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	add	a,#0xFF
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:294: send_msg(output_buf, ptr - output_buf, &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,#_output_buf
	mov	r3,a
	inc	r0
	mov	a,@r0
	subb	a,#(_output_buf >> 8)
	mov	r4,a
	push	ar6
	push	ar7
	push	ar5
	push	ar3
	push	ar4
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg
	mov	r1,#(_send_msg >> 8)
	mov	r2,#(_send_msg >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:296: return;
00136$:
	mov	a,sp
	add	a,#0xDE
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reload_request_handler'
;------------------------------------------------------------
;	main.c:325: reload_request_handler()
;	-----------------------------------------
;	 function reload_request_handler
;	-----------------------------------------
_reload_request_handler:
;	main.c:328: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'subscribe_request_handler'
;------------------------------------------------------------
;parameters                Allocated to stack - sp -30
;device_id                 Allocated to stack - sp -24
;root                      Allocated to stack - sp -21
;sub                       Allocated to registers r3 r4 r5 
;sub1                      Allocated to registers r3 r4 r5 
;sub3                      Allocated to registers r7 r6 r2 
;sub4                      Allocated to stack - sp -18
;i                         Allocated to stack - sp -15
;j                         Allocated to registers 
;obj                       Allocated to stack - sp -13
;res                       Allocated to stack - sp -10
;retcode                   Allocated to registers 
;subscriber                Allocated to stack - sp -7
;cond_value                Allocated to stack - sp -4
;op                        Allocated to stack - sp +0
;sloc0                     Allocated to stack - sp +13
;------------------------------------------------------------
;	main.c:332: subscribe_request_handler(uint8_t *device_id, uint8_t *parameters)
;	-----------------------------------------
;	 function subscribe_request_handler
;	-----------------------------------------
_subscribe_request_handler:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x16
;	main.c:343: if (!parameters) {
	mov	sp,a
	add	a,#0xe2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	main.c:344: return;
	ljmp	00141$
00102$:
;	main.c:347: root = cJSON_Parse(parameters);
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_cJSON_Parse
	mov	r1,#(_cJSON_Parse >> 8)
	mov	r2,#(_cJSON_Parse >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	main.c:349: if (!root) {
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00160$
;	main.c:350: return;
	ljmp	00141$
00160$:
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00137$:
;	main.c:353: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArraySize
	mov	r1,#(_cJSON_GetArraySize >> 8)
	mov	r2,#(_cJSON_GetArraySize >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	jc	00181$
	ljmp	00140$
00181$:
;	main.c:355: sub = cJSON_GetArrayItem(root, i);
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	dec	sp
;	main.c:356: if (!sub) {
	mov	a,r3
	orl	a,r4
	jnz	00106$
;	main.c:357: return;
	ljmp	00141$
00106$:
;	main.c:360: sub1 = cJSON_GetArrayItem(sub, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	dec	sp
;	main.c:361: if (!sub1) {
	mov	a,r3
	orl	a,r4
	jnz	00108$
;	main.c:362: return;
	ljmp	00141$
00108$:
;	main.c:365: obj = device_find_object(sub1->valuestring);
	mov	a,#0x0B
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_device_find_object
	mov	r1,#(_device_find_object >> 8)
	mov	r2,#(_device_find_object >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:366: if(!obj) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00184$
	ljmp	00139$
00184$:
;	main.c:370: res = object_instance_find_resource(obj, 5700);//sensor value 
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x44
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_object_instance_find_resource
	mov	r1,#(_object_instance_find_resource >> 8)
	mov	r2,#(_object_instance_find_resource >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r2,b
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar2
;	main.c:371: if (!res) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00185$
	ljmp	00139$
00185$:
;	main.c:375: sub3 = cJSON_GetArrayItem(sub1, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	dec	sp
	mov	ar7,r3
	mov	ar6,r4
	mov	ar2,r5
;	main.c:376: if (!sub3) {
	mov	a,r7
	orl	a,r6
	jnz	00186$
	ljmp	00139$
00186$:
;	main.c:381: sub4 = cJSON_GetArrayItem(sub3, 0);
	push	ar7
	push	ar6
	push	ar2
	clr	a
	push	acc
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
	dec	sp
	dec	sp
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	main.c:382: if (sub4) {
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00187$
	ljmp	00139$
00187$:
;	main.c:383: if (sub4->valueint == CONDITION_TYPE_VALUE_COMPARE) {
	push	ar7
	push	ar6
	push	ar2
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,#0x0E
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	cjne	r5,#0x01,00188$
	cjne	r4,#0x00,00188$
	sjmp	00189$
00188$:
	pop	ar2
	pop	ar6
	pop	ar7
	ljmp	00133$
00189$:
	pop	ar2
	pop	ar6
	pop	ar7
;	main.c:384: sub4 = cJSON_GetArrayItem(sub3, 1);
	push	ar7
	push	ar6
	push	ar2
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	dec	sp
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	main.c:385: if (sub4) {
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00190$
	ljmp	00139$
00190$:
;	main.c:386: op = sub4->valueint;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x0E
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r0,sp
	mov	@r0,ar3
;	main.c:387: sub4 = cJSON_GetArrayItem(sub3, 2);
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	dec	sp
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	main.c:388: if (sub4) {
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00191$
	ljmp	00122$
00191$:
;	main.c:389: if (res->resource_type->type == Integer) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	jnz	00119$
;	main.c:390: cond_value.int_value = sub4->valueint;
	mov	a,sp
	add	a,#0xFC
	mov	r1,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x0E
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r6,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar7
	inc	r1
	mov	@r1,ar6
	dec	r1
	dec	r1
	dec	r1
	sjmp	00122$
00119$:
;	main.c:391: } else if (res->resource_type->type == Float) {
	cjne	r5,#0x01,00193$
	sjmp	00194$
00193$:
	ljmp	00139$
00194$:
;	main.c:392: cond_value.float_value = sub4->valuefloat;
	mov	a,sp
	add	a,#0xFC
	mov	r1,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	inc	r1
	mov	@r1,ar4
	dec	r1
	dec	r1
	dec	r1
;	main.c:394: continue;
00122$:
;	main.c:398: subscriber = subscriber_alloc();
	mov	r0,#_subscriber_alloc
	mov	r1,#(_subscriber_alloc >> 8)
	mov	r2,#(_subscriber_alloc >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:399: if (subscriber) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00195$
	ljmp	00139$
00195$:
;	main.c:400: subscriber_value_compare_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id, op, &cond_value);
	mov	a,sp
	add	a,#0xFC
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_subscriber_value_compare_type_init
	mov	r1,#(_subscriber_value_compare_type_init >> 8)
	mov	r2,#(_subscriber_value_compare_type_init >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
;	main.c:401: object_add_subscriber(obj, subscriber);
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_object_add_subscriber
	mov	r1,#(_object_add_subscriber >> 8)
	mov	r2,#(_object_add_subscriber >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	00139$
00133$:
;	main.c:404: } else if (sub4->valueint == CONDITION_TYPE_REPORT) {
	mov	a,r5
	orl	a,r4
	jz	00196$
	ljmp	00139$
00196$:
;	main.c:405: subscriber = subscriber_alloc();
	mov	r0,#_subscriber_alloc
	mov	r1,#(_subscriber_alloc >> 8)
	mov	r2,#(_subscriber_alloc >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:406: if (subscriber) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00139$
;	main.c:407: subscriber_report_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_subscriber_report_type_init
	mov	r1,#(_subscriber_report_type_init >> 8)
	mov	r2,#(_subscriber_report_type_init >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
;	main.c:408: object_add_subscriber(obj, subscriber);
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_object_add_subscriber
	mov	r1,#(_object_add_subscriber >> 8)
	mov	r2,#(_object_add_subscriber >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:411: continue;
00139$:
;	main.c:353: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00198$
	inc	r0
	inc	@r0
00198$:
	ljmp	00137$
00140$:
;	main.c:417: sprintf(output_buf, "[%d]", retcode);
	clr	a
	push	acc
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_output_buf
	push	acc
	mov	a,#(_output_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:418: send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_output_buf
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar6
	push	ar7
	push	ar5
	push	ar3
	push	ar4
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg
	mov	r1,#(_send_msg >> 8)
	mov	r2,#(_send_msg >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:420: return;
00141$:
	mov	a,sp
	add	a,#0xE7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unsubscribe_request_handler'
;------------------------------------------------------------
;parameters                Allocated to registers r5 r6 r7 
;root                      Allocated to stack - sp -7
;sub                       Allocated to registers r5 r6 r7 
;sub1                      Allocated to registers r2 r3 r4 
;i                         Allocated to stack - sp -4
;j                         Allocated to registers 
;obj                       Allocated to stack - sp -2
;retcode                   Allocated to registers 
;------------------------------------------------------------
;	main.c:426: unsubscribe_request_handler(uint8_t *parameters)
;	-----------------------------------------
;	 function unsubscribe_request_handler
;	-----------------------------------------
_unsubscribe_request_handler:
	mov	a,sp
	add	a,#0x08
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:433: if (!parameters) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	main.c:434: return;
	ljmp	00117$
00102$:
;	main.c:437: root = cJSON_Parse(parameters);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Parse
	mov	r1,#(_cJSON_Parse >> 8)
	mov	r2,#(_cJSON_Parse >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:439: if (!root) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00126$
;	main.c:440: return;
	ljmp	00117$
00126$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00113$:
;	main.c:443: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArraySize
	mov	r1,#(_cJSON_GetArraySize >> 8)
	mov	r2,#(_cJSON_GetArraySize >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00137$
	ljmp	00116$
00137$:
;	main.c:445: sub = cJSON_GetArrayItem(root, i);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
;	main.c:446: if (!sub) {
	mov	a,r5
	orl	a,r6
	jnz	00106$
;	main.c:447: return;
	ljmp	00117$
00106$:
;	main.c:450: sub1 = cJSON_GetArrayItem(sub, 0);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:451: if (!sub1) {
	mov	a,r2
	orl	a,r3
	jnz	00108$
;	main.c:452: return;
	ljmp	00117$
00108$:
;	main.c:455: obj = device_find_object(sub1->valuestring);
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0B
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_device_find_object
	mov	r1,#(_device_find_object >> 8)
	mov	r2,#(_device_find_object >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:456: if(!obj) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00115$
;	main.c:461: sub1 = cJSON_GetArrayItem(sub, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_GetArrayItem
	mov	r1,#(_cJSON_GetArrayItem >> 8)
	mov	r2,#(_cJSON_GetArrayItem >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	main.c:462: if (!sub1) {
	mov	a,r2
	orl	a,r3
	jz	00115$
;	main.c:466: object_remove_subscriber(obj, &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_object_remove_subscriber
	mov	r1,#(_object_remove_subscriber >> 8)
	mov	r2,#(_object_remove_subscriber >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00115$:
;	main.c:443: for (;i < cJSON_GetArraySize(root); i++) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00142$
	inc	r0
	inc	@r0
00142$:
	ljmp	00113$
00116$:
;	main.c:471: sprintf(output_buf, "[%d]", retcode);
	clr	a
	push	acc
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_output_buf
	push	acc
	mov	a,#(_output_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:473: send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_output_buf
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar6
	push	ar7
	push	ar5
	push	ar3
	push	ar4
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg
	mov	r1,#(_send_msg >> 8)
	mov	r2,#(_send_msg >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:475: return;
00117$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'message_handler'
;------------------------------------------------------------
;data                      Allocated to stack - sp -11
;parameters                Allocated to stack - sp -8
;method                    Allocated to registers r7 
;len                       Allocated to registers r6 r7 
;len1                      Allocated to registers r4 r5 
;i                         Allocated to registers r2 r3 
;security_header           Allocated to registers 
;shared_key                Allocated to stack - sp -8
;sloc0                     Allocated to stack - sp -5
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	main.c:480: message_handler(void)
;	-----------------------------------------
;	 function message_handler
;	-----------------------------------------
_message_handler:
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	main.c:488: if(uip_newdata()) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00187$
	ljmp	00143$
00187$:
;	main.c:489: len = uip_datalen();
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	main.c:490: memcpy(output_buf, uip_appdata, len);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:500: security_header = (security_header_t *)output_buf;
;	main.c:501: if (security_header->content_type == SECURITY_SERVER_HELLO) {
	mov	r3,#_output_buf
	mov	r4,#(_output_buf >> 8)
	mov	r5,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	rr	a
	rr	a
	anl	a,#0x07
	mov	r3,a
	cjne	r3,#0x01,00188$
	sjmp	00189$
00188$:
	ljmp	00139$
00189$:
;	main.c:502: data = output_buf + sizeof(security_server_hello_msg_t);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,#(_output_buf + 0x0003)
	inc	r0
	mov	@r0,#((_output_buf + 0x0003) >> 8)
	inc	r0
	mov	@r0,#0x00
;	main.c:510: len1 = decrypt_data_by_master_key(data, security_header->len, data);
	mov	dptr,#(_output_buf + 0x0001)
	mov	b,#0x00
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar5
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_decrypt_data_by_master_key
	mov	r1,#(_decrypt_data_by_master_key >> 8)
	mov	r2,#(_decrypt_data_by_master_key >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:518: if (len1) {
	mov	a,r4
	orl	a,r5
	jz	00104$
;	main.c:519: if (set_network_shared_key(data, security_header->key_version)) {
	mov	r7,#_output_buf
	mov	r6,#(_output_buf >> 8)
	mov	r5,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	swap	a
	rr	a
	anl	a,#0x07
	mov	r3,a
	mov	r2,#0x00
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_set_network_shared_key
	mov	r1,#(_set_network_shared_key >> 8)
	mov	r2,#(_set_network_shared_key >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	dec	sp
	dec	sp
	mov	a,r3
	jz	00104$
;	main.c:520: auth_success = 1;
	mov	dptr,#_auth_success
	mov	a,#0x01
	movx	@dptr,a
00104$:
;	main.c:524: return;
	ljmp	00143$
00139$:
;	main.c:525: } else if(security_header->content_type == SECURITY_ERROR) {
	push	ar6
	push	ar7
	mov	r2,#_output_buf
	mov	r3,#(_output_buf >> 8)
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	rr	a
	rr	a
	anl	a,#0x07
	mov	r2,a
	cjne	r2,#0x03,00192$
	sjmp	00193$
00192$:
	pop	ar7
	pop	ar6
	ljmp	00136$
00193$:
	pop	ar7
	pop	ar6
;	main.c:526: i = *((uint16_t *)(security_header + sizeof(security_header_t)));
	mov	dptr,#(_output_buf + 0x0009)
	mov	b,#0x00
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	main.c:527: PRINTF("Security Error:%d", i);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
;	main.c:528: if (i == SECURITY_ERROR_INVALID_KEY_VERSION || i == SECURITY_ERROR_DECRYPT_ERROR) {
	cjne	r2,#0x01,00194$
	cjne	r3,#0x00,00194$
	sjmp	00107$
00194$:
	cjne	r2,#0x02,00108$
	cjne	r3,#0x00,00108$
00107$:
;	main.c:529: shared_key = get_network_shared_key();
	mov	r0,#_get_network_shared_key
	mov	r1,#(_get_network_shared_key >> 8)
	mov	r2,#(_get_network_shared_key >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf8
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	mov	a,sp
	add	a,#0xf8
;	main.c:530: if (shared_key) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
;	main.c:531: shared_key->used = false;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
00108$:
;	main.c:534: auth_success = 0;
	mov	dptr,#_auth_success
	clr	a
	movx	@dptr,a
;	main.c:535: return;
	ljmp	00143$
00136$:
;	main.c:536: } else if (security_header->content_type == SECURITY_DATA) {
	push	ar6
	push	ar7
	mov	r2,#_output_buf
	mov	r3,#(_output_buf >> 8)
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	rr	a
	rr	a
	anl	a,#0x07
	mov	r2,a
	cjne	r2,#0x02,00198$
	sjmp	00199$
00198$:
	pop	ar7
	pop	ar6
	ljmp	00143$
00199$:
	pop	ar7
	pop	ar6
;	main.c:537: data = output_buf + sizeof(security_header_t);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,#(_output_buf + 0x0003)
	inc	r0
	mov	@r0,#((_output_buf + 0x0003) >> 8)
	inc	r0
	mov	@r0,#0x00
;	main.c:538: len1 = decrypt_data_by_network_shared_key(data, len - sizeof(security_header_t), data);
	mov	a,r6
	add	a,#0xFD
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_decrypt_data_by_network_shared_key
	mov	r1,#(_decrypt_data_by_network_shared_key >> 8)
	mov	r2,#(_decrypt_data_by_network_shared_key >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar4,r6
	mov	ar5,r7
;	main.c:539: if (!len1) {
	mov	a,r4
	orl	a,r5
	jnz	00111$
;	main.c:540: PRINTF("Decrypt Error");
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:541: return;
	ljmp	00143$
00111$:
;	main.c:549: if (len1 >= sizeof(msg_header_t)) {
	clr	c
	mov	a,r4
	subb	a,#0x0C
	mov	a,r5
	subb	a,#0x00
	jnc	00201$
	ljmp	00143$
00201$:
;	main.c:550: if (memcmp(get_msg_device_id(data), g_device.device_id, DEV_ID_SIZE) == 0) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#_g_device
	push	acc
	mov	a,#(_g_device >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00202$
	ljmp	00129$
00202$:
;	main.c:551: if (get_msg_type(data) == TYPE_REQUEST) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	anl	a,#0xFC
	jz	00203$
	ljmp	00126$
00203$:
;	main.c:553: method = get_msg_method(data);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r7,a
;	main.c:554: switch(method){
	cjne	r7,#0x00,00204$
	sjmp	00112$
00204$:
	cjne	r7,#0x02,00205$
	ljmp	00115$
00205$:
	cjne	r7,#0x03,00206$
	sjmp	00114$
00206$:
	cjne	r7,#0x04,00207$
	sjmp	00113$
00207$:
	cjne	r7,#0x06,00208$
	ljmp	00116$
00208$:
	cjne	r7,#0x0C,00209$
	ljmp	00117$
00209$:
	cjne	r7,#0x0D,00210$
	ljmp	00118$
00210$:
	ljmp	00119$
;	main.c:555: case METHOD_NEW_DEVICE:
00112$:
;	main.c:556: discover_request_handler();
	mov	r0,#_discover_request_handler
	mov	r1,#(_discover_request_handler >> 8)
	mov	r2,#(_discover_request_handler >> 16)
	lcall	__sdcc_banked_call
;	main.c:557: break;
	ljmp	00143$
;	main.c:558: case METHOD_REPORT:
00113$:
;	main.c:559: report_request_handler(get_msg_device_id(data), get_msg_parameters(data));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar2
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_report_request_handler
	mov	r1,#(_report_request_handler >> 8)
	mov	r2,#(_report_request_handler >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:560: break;
	ljmp	00143$
;	main.c:561: case METHOD_SET_RESOURCES:
00114$:
;	main.c:562: set_objects_request_handler(get_msg_parameters(data));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_set_objects_request_handler
	mov	r1,#(_set_objects_request_handler >> 8)
	mov	r2,#(_set_objects_request_handler >> 16)
	lcall	__sdcc_banked_call
;	main.c:563: break;
	ljmp	00143$
;	main.c:564: case METHOD_GET_RESOURCES:
00115$:
;	main.c:565: get_resources_request_handler(get_msg_parameters(data));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_get_resources_request_handler
	mov	r1,#(_get_resources_request_handler >> 8)
	mov	r2,#(_get_resources_request_handler >> 16)
	lcall	__sdcc_banked_call
;	main.c:566: break;
	ljmp	00143$
;	main.c:578: case METHOD_RELOAD:
00116$:
;	main.c:579: reload_request_handler();
	mov	r0,#_reload_request_handler
	mov	r1,#(_reload_request_handler >> 8)
	mov	r2,#(_reload_request_handler >> 16)
	lcall	__sdcc_banked_call
;	main.c:580: break;
	ljmp	00143$
;	main.c:581: case METHOD_SUBSCRIBE:
00117$:
;	main.c:582: subscribe_request_handler(get_msg_device_id(data), get_msg_parameters(data));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_subscribe_request_handler
	mov	r1,#(_subscribe_request_handler >> 8)
	mov	r2,#(_subscribe_request_handler >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:583: break;
	ljmp	00143$
;	main.c:584: case METHOD_UNSUBSCRIBE:
00118$:
;	main.c:585: unsubscribe_request_handler(get_msg_parameters(data));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_unsubscribe_request_handler
	mov	r1,#(_unsubscribe_request_handler >> 8)
	mov	r2,#(_unsubscribe_request_handler >> 16)
	lcall	__sdcc_banked_call
;	main.c:586: break;
;	main.c:587: default:
	sjmp	00143$
00119$:
;	main.c:588: return;
;	main.c:589: }
	sjmp	00143$
00126$:
;	main.c:591: method = get_msg_method(data);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	r7,a
;	main.c:592: switch(method){
	cjne	r7,#0x00,00211$
	sjmp	00121$
00211$:
;	main.c:593: case METHOD_NEW_DEVICE:
	cjne	r7,#0x01,00123$
	sjmp	00143$
00121$:
;	main.c:594: register_response_handler(get_msg_parameters(data));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_register_response_handler
	mov	r1,#(_register_response_handler >> 8)
	mov	r2,#(_register_response_handler >> 16)
	lcall	__sdcc_banked_call
;	main.c:595: break;
;	main.c:598: default:
	sjmp	00143$
00123$:
;	main.c:599: return;
;	main.c:600: }
	sjmp	00143$
00129$:
;	main.c:603: PRINTF("It is not for me\n");
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00143$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_local_addresses'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;state                     Allocated to registers r2 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	main.c:611: print_local_addresses(void)
;	-----------------------------------------
;	 function print_local_addresses
;	-----------------------------------------
_print_local_addresses:
	inc	sp
	inc	sp
;	main.c:616: PRINTF("Client IPv6 addresses: ");
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:617: for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00107$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	subb	a,#0x00
	jc	00124$
	ljmp	00111$
00124$:
;	main.c:618: state = uip_ds6_if.addr_list[i].state;
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r7,a
	mov	a,#0x11
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r2,a
;	main.c:619: if(uip_ds6_if.addr_list[i].isused &&
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	pop	ar7
	pop	ar6
	jz	00109$
;	main.c:620: (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
	mov	a,r2
	jz	00103$
	cjne	r2,#0x01,00109$
00103$:
;	main.c:621: PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
	push	ar6
	push	ar7
	mov	a,r4
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r6,a
	mov	a,r5
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	mov	ar3,r7
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r3
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	mov	r0,#_uip_debug_ipaddr_print
	mov	r1,#(_uip_debug_ipaddr_print >> 8)
	mov	r2,#(_uip_debug_ipaddr_print >> 16)
	lcall	__sdcc_banked_call
;	main.c:622: PRINTF("\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:624: if (state == ADDR_TENTATIVE) {
	pop	ar7
	pop	ar6
	mov	a,r2
	jnz	00109$
;	main.c:625: uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
	mov	a,r4
	add	a,#(_uip_ds6_if + 0x0012)
	mov	r2,a
	mov	a,r5
	addc	a,#((_uip_ds6_if + 0x0012) >> 8)
	mov	r3,a
	mov	a,#0x11
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
00109$:
;	main.c:617: for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
	mov	a,#0x1C
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r0,sp
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r6
	cjne	r6,#0x00,00131$
	inc	r7
00131$:
	ljmp	00107$
00111$:
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_server_address'
;------------------------------------------------------------
;g_addr                    Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -1
;------------------------------------------------------------
;	main.c:632: set_server_address(void)
;	-----------------------------------------
;	 function set_server_address
;	-----------------------------------------
_set_server_address:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	main.c:636: g_addr = uip_ds6_get_global(ADDR_PREFERRED);
	mov	dpl,#0x01
	mov	r0,#_uip_ds6_get_global
	mov	r1,#(_uip_ds6_get_global >> 8)
	mov	r2,#(_uip_ds6_get_global >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	main.c:637: if (!g_addr) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00113$
	ljmp	00106$
00113$:
;	main.c:638: uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
	mov	dptr,#_server_ipaddr
	mov	a,#0xAA
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0002)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0004)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0006)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0008)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000a)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000c)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000e)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	main.c:639: uip_ds6_set_addr_iid(&server_ipaddr, &uip_lladdr);
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_server_ipaddr
	mov	b,#0x00
	mov	r0,#_uip_ds6_set_addr_iid
	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:640: uip_ds6_addr_add(&server_ipaddr, 0, ADDR_AUTOCONF);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dptr,#_server_ipaddr
	mov	b,#0x00
	mov	r0,#_uip_ds6_addr_add
	mov	r1,#(_uip_ds6_addr_add >> 8)
	mov	r2,#(_uip_ds6_addr_add >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:641: g_addr = uip_ds6_get_global(ADDR_PREFERRED);
	mov	dpl,#0x01
	mov	r0,#_uip_ds6_get_global
	mov	r1,#(_uip_ds6_get_global >> 8)
	mov	r2,#(_uip_ds6_get_global >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	main.c:644: uip_ip6addr(&server_ipaddr, g_addr->ipaddr.u16[0], g_addr->ipaddr.u16[1], g_addr->ipaddr.u16[2],
00106$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	ar7,r2
	mov	r4,#0x00
	mov	ar2,r3
	mov	r3,#0x00
	mov	a,r2
	orl	ar4,a
	mov	a,r3
	orl	ar7,a
	mov	dptr,#_server_ipaddr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dptr,#(_server_ipaddr + 0x0002)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,sp
	dec	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r1
	mov	@r1,#0x00
	mov	r0,sp
	mov	ar2,@r0
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dptr,#(_server_ipaddr + 0x0004)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	ar7,r5
	mov	r4,#0x00
	mov	ar5,r6
	mov	r6,#0x00
	mov	a,r5
	orl	ar4,a
	mov	a,r6
	orl	ar7,a
	mov	dptr,#(_server_ipaddr + 0x0006)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0008)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000a)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000c)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000e)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_coconut_sensor_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -6
;data                      Allocated to stack - sp -9
;process_pt                Allocated to stack - sp -2
;len                       Allocated to registers r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;sloc0                     Allocated to stack - sp +4
;et                        Allocated with name '_process_thread_coconut_sensor_process_et_1_1'
;------------------------------------------------------------
;	main.c:651: PROCESS_THREAD(coconut_sensor_process, ev, data)
;	-----------------------------------------
;	 function process_thread_coconut_sensor_process
;	-----------------------------------------
_process_thread_coconut_sensor_process:
	push	dpl
	push	dph
	push	b
;	main.c:656: PROCESS_BEGIN();
	mov	r4,#0x01
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00183$
	cjne	r3,#0x00,00183$
	sjmp	00109$
00183$:
	cjne	r2,#0x92,00184$
	cjne	r3,#0x02,00184$
	sjmp	00102$
00184$:
	cjne	r2,#0xC1,00185$
	cjne	r3,#0x02,00185$
	ljmp	00127$
00185$:
	ljmp	00150$
;	main.c:658: PROCESS_PAUSE();
00109$:
	mov	dptr,#_process_current
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x85
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_process_post
	mov	r1,#(_process_post >> 8)
	mov	r2,#(_process_post >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x92
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
00102$:
	mov	a,r4
	jz	00103$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x85,00187$
	sjmp	00107$
00187$:
00103$:
	mov	dpl,#0x01
	ljmp	00151$
00107$:
;	main.c:660: set_server_address();
	mov	r0,#_set_server_address
	mov	r1,#(_set_server_address >> 8)
	mov	r2,#(_set_server_address >> 16)
	lcall	__sdcc_banked_call
;	main.c:662: PRINTF("Coconut process started\n");
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:664: print_local_addresses();
	mov	r0,#_print_local_addresses
	mov	r1,#(_print_local_addresses >> 8)
	mov	r2,#(_print_local_addresses >> 16)
	lcall	__sdcc_banked_call
;	main.c:666: subscribers_mem_pool_init(); 
	mov	r0,#_subscribers_mem_pool_init
	mov	r1,#(_subscribers_mem_pool_init >> 8)
	mov	r2,#(_subscribers_mem_pool_init >> 16)
	lcall	__sdcc_banked_call
;	main.c:672: device_fs_init(); 
	mov	r0,#_device_fs_init
	mov	r1,#(_device_fs_init >> 8)
	mov	r2,#(_device_fs_init >> 16)
	lcall	__sdcc_banked_call
;	main.c:674: if (!crypto_init()) {
	mov	r0,#_crypto_init
	mov	r1,#(_crypto_init >> 8)
	mov	r2,#(_crypto_init >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jnz	00116$
;	main.c:675: PRINTF("Crypto init fail\n");
	mov	a,#__str_18
	push	acc
	mov	a,#(__str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:676: PROCESS_EXIT();
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00151$
00116$:
;	main.c:679: PRINTF("Crypto init Done\n");
	mov	a,#__str_19
	push	acc
	mov	a,#(__str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:682: if (!create_device()) {
	mov	r0,#_create_device
	mov	r1,#(_create_device >> 8)
	mov	r2,#(_create_device >> 16)
	lcall	__sdcc_banked_call
	jc	00121$
;	main.c:683: PRINTF("Device init fail\n");
	mov	a,#__str_20
	push	acc
	mov	a,#(__str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:684: PROCESS_EXIT();
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00151$
00121$:
;	main.c:687: PRINTF("Device create done\n");
	mov	a,#__str_21
	push	acc
	mov	a,#(__str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:690: client_conn = udp_new(NULL, UIP_HTONS(COCONUT_UDP_SERVER_PORT), NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,#0x2E
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_udp_new
	mov	r1,#(_udp_new >> 8)
	mov	r2,#(_udp_new >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#_client_conn
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	main.c:691: if(client_conn == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00126$
;	main.c:692: PRINTF("No UDP connection available, exiting the process!\n");
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:693: PROCESS_EXIT();
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00151$
00126$:
;	main.c:695: udp_bind(client_conn, UIP_HTONS(COCONUT_UDP_CLIENT_PORT));
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x22
	lcall	__gptrput
	inc	dptr
	mov	a,#0x3D
	lcall	__gptrput
;	main.c:697: PRINTF("Created a connection with the server ");
	mov	a,#__str_23
	push	acc
	mov	a,#(__str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:698: PRINT6ADDR(&client_conn->ripaddr);
	mov	dptr,#_client_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_debug_ipaddr_print
	mov	r1,#(_uip_debug_ipaddr_print >> 8)
	mov	r2,#(_uip_debug_ipaddr_print >> 16)
	lcall	__sdcc_banked_call
;	main.c:699: PRINTF(" local/remote port %u/%u\n",
	mov	dptr,#_client_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x12
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar7,r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r2
	mov	ar2,r3
	mov	r3,a
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r5
	mov	ar5,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	mov	a,#__str_24
	push	acc
	mov	a,#(__str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	main.c:702: etimer_set(&et, SEND_INTERVAL);
	clr	a
	push	acc
	mov	a,#0x0A
	push	acc
	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
	mov	b,#0x00
	mov	r0,#_etimer_set
	mov	r1,#(_etimer_set >> 8)
	mov	r2,#(_etimer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	main.c:704: while(1) {
00148$:
;	main.c:705: PROCESS_YIELD();
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0xC1
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
00127$:
	mov	a,r4
	jnz	00131$
	mov	dpl,#0x01
	ljmp	00151$
00131$:
;	main.c:706: if(etimer_expired(&et)) {
	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
	mov	b,#0x00
	mov	r0,#_etimer_expired
	mov	r1,#(_etimer_expired >> 8)
	mov	r2,#(_etimer_expired >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00192$
	ljmp	00144$
00192$:
;	main.c:707: if (!auth_success) {
	mov	dptr,#_auth_success
	movx	a,@dptr
	mov	r7,a
	jz	00193$
	ljmp	00141$
00193$:
;	main.c:708: etimer_restart(&et);
	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
	mov	b,#0x00
	mov	r0,#_etimer_restart
	mov	r1,#(_etimer_restart >> 8)
	mov	r2,#(_etimer_restart >> 16)
	lcall	__sdcc_banked_call
;	main.c:709: PRINTF("Send auth message\n");
	mov	a,#__str_25
	push	acc
	mov	a,#(__str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,#_printf
	mov	r1,#(_printf >> 8)
	mov	r2,#(_printf >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	main.c:710: len = create_security_client_hello_msg(output_buf);
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_create_security_client_hello_msg
	mov	r1,#(_create_security_client_hello_msg >> 8)
	mov	r2,#(_create_security_client_hello_msg >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
;	main.c:711: if (len){
	mov	a,r6
	orl	a,r7
	jnz	00194$
	ljmp	00144$
00194$:
;	main.c:712: debug_print_msg(output_buf, len);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_debug_print_msg
	mov	r1,#(_debug_print_msg >> 8)
	mov	r2,#(_debug_print_msg >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:713: send_msg_to_gateway(output_buf, len);
	push	ar6
	push	ar7
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg_to_gateway
	mov	r1,#(_send_msg_to_gateway >> 8)
	mov	r2,#(_send_msg_to_gateway >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	00144$
00141$:
;	main.c:715: } else if (!reg_success) {
	mov	dptr,#_reg_success
	movx	a,@dptr
	mov	r5,a
	jz	00195$
	ljmp	00138$
00195$:
;	main.c:717: etimer_restart(&et);
	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
	mov	b,#0x00
	mov	r0,#_etimer_restart
	mov	r1,#(_etimer_restart >> 8)
	mov	r2,#(_etimer_restart >> 16)
	lcall	__sdcc_banked_call
;	main.c:719: len = create_new_device_msg(output_buf + sizeof(security_header_t), 
	clr	a
	push	acc
	mov	a,#0x1F
	push	acc
	mov	a,#0x01
	push	acc
	mov	dptr,#(_output_buf + 0x0003)
	mov	b,#0x00
	mov	r0,#_create_new_device_msg
	mov	r1,#(_create_new_device_msg >> 8)
	mov	r2,#(_create_new_device_msg >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	mov	ar6,r4
	mov	ar7,r5
;	main.c:721: len = create_security_data_msg(output_buf, output_buf + sizeof(security_header_t), len);
	push	ar6
	push	ar7
	mov	a,#(_output_buf + 0x0003)
	push	acc
	mov	a,#((_output_buf + 0x0003) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_create_security_data_msg
	mov	r1,#(_create_security_data_msg >> 8)
	mov	r2,#(_create_security_data_msg >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar6,r4
	mov	ar7,r5
;	main.c:722: if (len) {
	mov	a,r6
	orl	a,r7
	jz	00144$
;	main.c:723: debug_print_msg(output_buf, len);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_debug_print_msg
	mov	r1,#(_debug_print_msg >> 8)
	mov	r2,#(_debug_print_msg >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:724: send_msg_to_gateway(output_buf, len);
	push	ar6
	push	ar7
	mov	dptr,#_output_buf
	mov	b,#0x00
	mov	r0,#_send_msg_to_gateway
	mov	r1,#(_send_msg_to_gateway >> 8)
	mov	r2,#(_send_msg_to_gateway >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	sjmp	00144$
00138$:
;	main.c:727: etimer_restart(&et);
	mov	dptr,#_process_thread_coconut_sensor_process_et_1_1
	mov	b,#0x00
	mov	r0,#_etimer_restart
	mov	r1,#(_etimer_restart >> 8)
	mov	r2,#(_etimer_restart >> 16)
	lcall	__sdcc_banked_call
00144$:
;	main.c:731: if(ev == tcpip_event) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	cjne	a,ar7,00197$
	sjmp	00198$
00197$:
	ljmp	00148$
00198$:
;	main.c:732: message_handler();
	mov	r0,#_message_handler
	mov	r1,#(_message_handler >> 8)
	mov	r2,#(_message_handler >> 16)
	lcall	__sdcc_banked_call
	ljmp	00148$
;	main.c:736: PROCESS_END();
00150$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x03
00151$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_autostart_processes:
	.byte _coconut_sensor_process,(_coconut_sensor_process >> 8),#0x00
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__str_0:
	.ascii "Message len:%d, content:"
	.db 0x00
__str_1:
	.ascii "%x "
	.db 0x00
__str_2:
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "register response:%s"
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "register response ret code:%d"
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "[%d]"
	.db 0x00
__str_6:
	.ascii "["
	.db 0x00
__str_7:
	.ascii "[%s,["
	.db 0x00
__str_8:
	.ascii "[%d, %d],"
	.db 0x00
__str_9:
	.ascii "[%d, %f],"
	.db 0x00
__str_10:
	.ascii "[%d, %s],"
	.db 0x00
__str_11:
	.ascii "]],"
	.db 0x00
__str_12:
	.ascii "]"
	.db 0x00
__str_13:
	.ascii "Security Error:%d"
	.db 0x00
__str_14:
	.ascii "Decrypt Error"
	.db 0x00
__str_15:
	.ascii "It is not for me"
	.db 0x0A
	.db 0x00
__str_16:
	.ascii "Client IPv6 addresses: "
	.db 0x00
__str_17:
	.ascii "Coconut process started"
	.db 0x0A
	.db 0x00
__str_18:
	.ascii "Crypto init fail"
	.db 0x0A
	.db 0x00
__str_19:
	.ascii "Crypto init Done"
	.db 0x0A
	.db 0x00
__str_20:
	.ascii "Device init fail"
	.db 0x0A
	.db 0x00
__str_21:
	.ascii "Device create done"
	.db 0x0A
	.db 0x00
__str_22:
	.ascii "No UDP connection available, exiting the process!"
	.db 0x0A
	.db 0x00
__str_23:
	.ascii "Created a connection with the server "
	.db 0x00
__str_24:
	.ascii " local/remote port %u/%u"
	.db 0x0A
	.db 0x00
__str_25:
	.ascii "Send auth message"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__auth_success:
	.db #0x00	; 0
__xinit__reg_success:
	.db #0x00	; 0
__xinit__get_global_addr_success:
	.db #0x00	; 0
__xinit__coconut_sensor_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_coconut_sensor_process,(_process_thread_coconut_sensor_process >> 8),(_process_thread_coconut_sensor_process >> 16)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
