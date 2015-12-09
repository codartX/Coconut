;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Wed Dec  2 18:10:58 2015
;--------------------------------------------------------
	.module uip6
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _remove_ext_hdr
	.globl _rpl_verify_header
	.globl _rpl_update_header_empty
	.globl _uip_rpl_input
	.globl _uip_ds6_select_src
	.globl _uip_ds6_maddr_lookup
	.globl _uip_ds6_addr_lookup
	.globl _uip_ds6_is_addr_onlink
	.globl _uip_ds6_init
	.globl _uip_nd6_na_input
	.globl _uip_nd6_ns_input
	.globl _uip_icmp6_error_output
	.globl _uip_icmp6_echo_request_input
	.globl _tcpip_uipcall
	.globl _memset
	.globl _memcmp
	.globl _memmove
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
	.globl _uip_ext_opt_offset
	.globl _uip_ext_len
	.globl _uip_ext_bitmap
	.globl _uip_udp_conns
	.globl _uip_udp_conn
	.globl _uip_conn
	.globl _uip_flags
	.globl _uip_slen
	.globl _uip_len
	.globl _uip_sappdata
	.globl _uip_appdata
	.globl _uip_aligned_buf
	.globl _uip_next_hdr
	.globl _uip_lladdr
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
	.globl _uip_chksum
	.globl _uip_ipchksum
	.globl _uip_icmp6chksum
	.globl _uip_udpchksum
	.globl _uip_init
	.globl _uip_udp_new
	.globl _uip_process
	.globl _uip_htons
	.globl _uip_htonl
	.globl _uip_send
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
_uip_lladdr::
	.ds 8
_uip_next_hdr::
	.ds 3
_uip_aligned_buf::
	.ds 336
_uip_appdata::
	.ds 3
_uip_sappdata::
	.ds 3
_uip_len::
	.ds 2
_uip_slen::
	.ds 2
_uip_flags::
	.ds 1
_uip_conn::
	.ds 3
_c:
	.ds 1
_lastport:
	.ds 2
_uip_udp_conn::
	.ds 3
_uip_udp_conns::
	.ds 270
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_uip_ext_bitmap::
	.ds 1
_uip_ext_len::
	.ds 1
_uip_ext_opt_offset::
	.ds 1
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
;Allocation info for local variables in function 'chksum'
;------------------------------------------------------------
;data                      Allocated to stack - sp -12
;len                       Allocated to stack - sp -14
;sum                       Allocated to stack - sp -6
;t                         Allocated to registers r3 r7 
;dataptr                   Allocated to registers r7 r6 r3 
;last_byte                 Allocated to stack - sp -4
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:302: chksum(uint16_t sum, const uint8_t *data, uint16_t len)
;	-----------------------------------------
;	 function chksum
;	-----------------------------------------
_chksum:
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
	mov	a,sp
	add	a,#0x05
;	../../../contiki-sensinode//core/net/uip6.c:308: dataptr = data;
	mov	sp,a
	add	a,#0xf4
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar3,@r0
;	../../../contiki-sensinode//core/net/uip6.c:309: last_byte = data + len - 1;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r4,a
	mov	ar5,r3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r2
	add	a,#0xFF
	mov	@r0,a
	mov	a,r4
	addc	a,#0xFF
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	../../../contiki-sensinode//core/net/uip6.c:311: while(dataptr < last_byte) {   /* At least two more bytes */
	mov	ar2,r7
	mov	ar4,r6
	mov	ar5,r3
00103$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00105$
;	../../../contiki-sensinode//core/net/uip6.c:312: t = (dataptr[0] << 8) + dataptr[1];
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r0,sp
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	a,#0x01
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
;	../../../contiki-sensinode//core/net/uip6.c:313: sum += t;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/uip6.c:314: if(sum < t) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00102$
;	../../../contiki-sensinode//core/net/uip6.c:315: sum++;      /* carry */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00125$
	inc	r0
	inc	@r0
00125$:
00102$:
;	../../../contiki-sensinode//core/net/uip6.c:317: dataptr += 2;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	ljmp	00103$
00105$:
;	../../../contiki-sensinode//core/net/uip6.c:320: if(dataptr == last_byte) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00127$
	sjmp	00109$
00127$:
;	../../../contiki-sensinode//core/net/uip6.c:321: t = (dataptr[0] << 8) + 0;
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar7,r6
;	../../../contiki-sensinode//core/net/uip6.c:322: sum += t;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/uip6.c:323: if(sum < t) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00109$
;	../../../contiki-sensinode//core/net/uip6.c:324: sum++;      /* carry */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00129$
	inc	r0
	inc	@r0
00129$:
00109$:
;	../../../contiki-sensinode//core/net/uip6.c:329: return sum;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_chksum'
;------------------------------------------------------------
;len                       Allocated to stack - sp -4
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:333: uip_chksum(uint16_t *data, uint16_t len)
;	-----------------------------------------
;	 function uip_chksum
;	-----------------------------------------
_uip_chksum:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/uip6.c:335: return uip_htons(chksum(0, (uint8_t *)data, len));
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ipchksum'
;------------------------------------------------------------
;sum                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:340: uip_ipchksum(void)
;	-----------------------------------------
;	 function uip_ipchksum
;	-----------------------------------------
_uip_ipchksum:
;	../../../contiki-sensinode//core/net/uip6.c:344: sum = chksum(0, &uip_buf[UIP_LLH_LEN], UIP_IPH_LEN);
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_aligned_buf
	push	acc
	mov	a,#(_uip_aligned_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#0x0000
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:346: return (sum == 0) ? 0xffff : uip_htons(sum);
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00107$
00107$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00103$
	mov	r4,#0xFF
	mov	r5,#0xFF
	sjmp	00104$
00103$:
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
00104$:
	mov	dpl,r4
	mov	dph,r5
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'upper_layer_chksum'
;------------------------------------------------------------
;proto                     Allocated to registers r7 
;upper_layer_len           Allocated to stack - sp -1
;sum                       Allocated to registers r7 r6 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:351: upper_layer_chksum(uint8_t proto)
;	-----------------------------------------
;	 function upper_layer_chksum
;	-----------------------------------------
_upper_layer_chksum:
	inc	sp
	inc	sp
	mov	r7,dpl
;	../../../contiki-sensinode//core/net/uip6.c:365: upper_layer_len = (((uint16_t)(UIP_IP_BUF->len[0]) << 8) + UIP_IP_BUF->len[1] - uip_ext_len);
	mov	r5,#_uip_aligned_buf
	mov	r6,#(_uip_aligned_buf >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r5
	subb	a,r3
	mov	r5,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	../../../contiki-sensinode//core/net/uip6.c:372: sum = upper_layer_len + proto;
	mov	r6,#0x00
	mov	r0,sp
	dec	r0
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
;	../../../contiki-sensinode//core/net/uip6.c:374: sum = chksum(sum, (uint8_t *)&UIP_IP_BUF->srcipaddr, 2 * sizeof(uip_ipaddr_t));
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar3
	mov	dpl,r7
	mov	dph,r6
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar7,r4
	mov	ar6,r5
;	../../../contiki-sensinode//core/net/uip6.c:377: sum = chksum(sum, &uip_buf[UIP_IPH_LEN + UIP_LLH_LEN + uip_ext_len],
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r5
	add	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	r3,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar4
	push	ar3
	mov	dpl,r7
	mov	dph,r6
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	ar7,r4
	mov	ar6,r5
;	../../../contiki-sensinode//core/net/uip6.c:380: return (sum == 0) ? 0xffff : uip_htons(sum);
	mov	a,r7
	orl	a,r6
	cjne	a,#0x01,00107$
00107$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00103$
	mov	r4,#0xFF
	mov	r5,#0xFF
	sjmp	00104$
00103$:
	mov	dpl,r7
	mov	dph,r6
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
00104$:
	mov	dpl,r4
	mov	dph,r5
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_icmp6chksum'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:384: uip_icmp6chksum(void)
;	-----------------------------------------
;	 function uip_icmp6chksum
;	-----------------------------------------
_uip_icmp6chksum:
;	../../../contiki-sensinode//core/net/uip6.c:386: return upper_layer_chksum(UIP_PROTO_ICMP6);
	mov	dpl,#0x3A
	mov	r0,#_upper_layer_chksum
	mov	r1,#(_upper_layer_chksum >> 8)
	mov	r2,#(_upper_layer_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_udpchksum'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:400: uip_udpchksum(void)
;	-----------------------------------------
;	 function uip_udpchksum
;	-----------------------------------------
_uip_udpchksum:
;	../../../contiki-sensinode//core/net/uip6.c:402: return upper_layer_chksum(UIP_PROTO_UDP);
	mov	dpl,#0x11
	mov	r0,#_upper_layer_chksum
	mov	r1,#(_upper_layer_chksum >> 8)
	mov	r2,#(_upper_layer_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_init'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:408: uip_init(void)
;	-----------------------------------------
;	 function uip_init
;	-----------------------------------------
_uip_init:
;	../../../contiki-sensinode//core/net/uip6.c:411: uip_ds6_init();
	mov	r0,#_uip_ds6_init
	mov	r1,#(_uip_ds6_init >> 8)
	mov	r2,#(_uip_ds6_init >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:423: lastport = 1024;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x04
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:427: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00101$:
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00111$
00111$:
	jnc	00105$
;	../../../contiki-sensinode//core/net/uip6.c:428: uip_udp_conns[c].lport = 0;
	mov	a,r7
	mov	b,#0x1B
	mul	ab
	add	a,#_uip_udp_conns
	mov	r5,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x10
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:427: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	mov	a,r7
	inc	a
	movx	@dptr,a
	sjmp	00101$
00105$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_ext_hdr'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:505: remove_ext_hdr(void)
;	-----------------------------------------
;	 function remove_ext_hdr
;	-----------------------------------------
_remove_ext_hdr:
;	../../../contiki-sensinode//core/net/uip6.c:508: if(uip_ext_len > 0) {
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	jnz	00111$
	ljmp	00105$
00111$:
;	../../../contiki-sensinode//core/net/uip6.c:511: if(uip_len < UIP_IPH_LEN + uip_ext_len) {
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00102$
;	../../../contiki-sensinode//core/net/uip6.c:513: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
;	../../../contiki-sensinode//core/net/uip6.c:514: uip_len = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_len
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:515: return;
	ljmp	00105$
00102$:
;	../../../contiki-sensinode//core/net/uip6.c:518: uip_len - UIP_IPH_LEN - uip_ext_len);
	mov	a,r3
	add	a,#0xD8
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
;	../../../contiki-sensinode//core/net/uip6.c:517: memmove(((uint8_t *)UIP_TCP_BUF), (uint8_t *)UIP_TCP_BUF + uip_ext_len,
	mov	a,r7
	add	a,#(_uip_aligned_buf + 0x0028)
	mov	r7,a
	clr	a
	addc	a,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	r6,a
	mov	r5,#0x00
	push	ar3
	push	ar4
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	b,#0x00
	mov	r0,#_memmove
	mov	r1,#(_memmove >> 8)
	mov	r2,#(_memmove >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:520: uip_len -= uip_ext_len;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dptr,#_uip_len
	mov	a,r5
	clr	c
	subb	a,r7
	movx	@dptr,a
	mov	a,r6
	subb	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:523: UIP_IP_BUF->len[0] = (uip_len - UIP_IPH_LEN) >> 8;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#0xD8
	mov	a,r5
	addc	a,#0xFF
	mov	r3,a
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:524: UIP_IP_BUF->len[1] = (uip_len - UIP_IPH_LEN) & 0xff;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,r4
	add	a,#0xD8
	mov	r4,a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:525: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
	clr	a
	movx	@dptr,a
00105$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_udp_new'
;------------------------------------------------------------
;rport                     Allocated to stack - sp -13
;ripaddr                   Allocated to stack - sp -8
;conn                      Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:531: uip_udp_new(const uip_ipaddr_t *ripaddr, uint16_t rport)
;	-----------------------------------------
;	 function uip_udp_new
;	-----------------------------------------
_uip_udp_new:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:536: again:
00101$:
;	../../../contiki-sensinode//core/net/uip6.c:537: ++lastport;
	mov	dptr,#_lastport
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:539: if(lastport >= 32000) {
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	subb	a,#0x7D
	jc	00103$
;	../../../contiki-sensinode//core/net/uip6.c:540: lastport = 4096;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x10
	movx	@dptr,a
00103$:
;	../../../contiki-sensinode//core/net/uip6.c:543: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00117$:
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00144$
00144$:
	jnc	00120$
;	../../../contiki-sensinode//core/net/uip6.c:544: if(uip_udp_conns[c].lport == uip_htons(lastport)) {
	mov	a,r4
	mov	b,#0x1B
	mul	ab
	add	a,#_uip_udp_conns
	mov	r3,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x10
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	push	ar4
	push	ar3
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,r3
	cjne	a,ar6,00146$
	mov	a,r4
	cjne	a,ar7,00146$
	sjmp	00101$
00146$:
;	../../../contiki-sensinode//core/net/uip6.c:543: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00117$
00120$:
;	../../../contiki-sensinode//core/net/uip6.c:549: conn = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../../../contiki-sensinode//core/net/uip6.c:550: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00108$:
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00147$
00147$:
	jnc	00111$
;	../../../contiki-sensinode//core/net/uip6.c:551: if(uip_udp_conns[c].lport == 0) {
	mov	a,r7
	mov	b,#0x1B
	mul	ab
	add	a,#_uip_udp_conns
	mov	r5,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x10
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00110$
;	../../../contiki-sensinode//core/net/uip6.c:552: conn = &uip_udp_conns[c];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	../../../contiki-sensinode//core/net/uip6.c:553: break;
	sjmp	00111$
00110$:
;	../../../contiki-sensinode//core/net/uip6.c:550: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	mov	a,r7
	inc	a
	movx	@dptr,a
	sjmp	00108$
00111$:
;	../../../contiki-sensinode//core/net/uip6.c:557: if(conn == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	../../../contiki-sensinode//core/net/uip6.c:558: return 0;
	jnz	00113$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00121$
00113$:
;	../../../contiki-sensinode//core/net/uip6.c:561: conn->lport = UIP_HTONS(lastport);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x10
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
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar7,r3
	mov	r2,#0x00
	mov	ar3,r4
	mov	r4,#0x00
	mov	a,r3
	orl	ar2,a
	mov	a,r4
	orl	ar7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/uip6.c:562: conn->rport = rport;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
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
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/uip6.c:563: if(ripaddr == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00115$
;	../../../contiki-sensinode//core/net/uip6.c:564: memset(&conn->ripaddr, 0, sizeof(uip_ipaddr_t));
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	sjmp	00116$
00115$:
;	../../../contiki-sensinode//core/net/uip6.c:566: uip_ipaddr_copy(&conn->ripaddr, ripaddr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00116$:
;	../../../contiki-sensinode//core/net/uip6.c:568: conn->ttl = uip_ds6_if.cur_hop_limit;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#(_uip_ds6_if + 0x0004)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/uip6.c:570: return conn;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00121$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ext_hdr_options_process'
;------------------------------------------------------------
;sloc0                     Allocated to stack - sp -5
;sloc1                     Allocated to stack - sp -5
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:831: ext_hdr_options_process(void)
;	-----------------------------------------
;	 function ext_hdr_options_process
;	-----------------------------------------
_ext_hdr_options_process:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:838: uip_ext_opt_offset = 2;
	mov	dptr,#_uip_ext_opt_offset
	mov	a,#0x02
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:839: while(uip_ext_opt_offset < ((UIP_EXT_BUF->len << 3) + 8)) {
00115$:
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	a,r3
	add	a,#_uip_aligned_buf
	mov	r3,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	a
	rr	a
	anl	a,#0xF8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xF8
	xch	a,r4
	xrl	a,r4
	mov	r3,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r2,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00142$
	ljmp	00117$
00142$:
;	../../../contiki-sensinode//core/net/uip6.c:840: switch(UIP_EXT_HDR_OPT_BUF->type) {
	mov	a,#0x28
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_uip_aligned_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jz	00101$
	cjne	r4,#0x01,00144$
	sjmp	00102$
00144$:
	cjne	r4,#0x63,00145$
	sjmp	00103$
00145$:
	ljmp	00106$
;	../../../contiki-sensinode//core/net/uip6.c:846: case UIP_EXT_HDR_OPT_PAD1:
00101$:
;	../../../contiki-sensinode//core/net/uip6.c:848: uip_ext_opt_offset += 1;
	mov	dptr,#_uip_ext_opt_offset
	mov	a,r2
	inc	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:849: break;
	ljmp	00115$
;	../../../contiki-sensinode//core/net/uip6.c:850: case UIP_EXT_HDR_OPT_PADN:
00102$:
;	../../../contiki-sensinode//core/net/uip6.c:852: uip_ext_opt_offset += UIP_EXT_HDR_OPT_PADN_BUF->opt_len + 2;
	mov	a,#0x28
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_uip_aligned_buf
	mov	r3,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	add	a,#0x02
	mov	dptr,#_uip_ext_opt_offset
	add	a,r2
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:853: break;
	ljmp	00115$
;	../../../contiki-sensinode//core/net/uip6.c:855: case UIP_EXT_HDR_OPT_RPL:
00103$:
;	../../../contiki-sensinode//core/net/uip6.c:857: if(rpl_verify_header(uip_ext_opt_offset)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	r0,#_rpl_verify_header
	mov	r1,#(_rpl_verify_header >> 8)
	mov	r2,#(_rpl_verify_header >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00105$
;	../../../contiki-sensinode//core/net/uip6.c:859: return 1;
	mov	dpl,#0x01
	ljmp	00118$
00105$:
;	../../../contiki-sensinode//core/net/uip6.c:861: uip_ext_opt_offset += (UIP_EXT_HDR_OPT_RPL_BUF->opt_len) + 2;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x28
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	add	a,r7
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	a,r3
	add	a,#_uip_aligned_buf
	mov	r3,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	add	a,#0x02
	mov	dptr,#_uip_ext_opt_offset
	add	a,r2
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:862: return 0;
	mov	dpl,#0x00
	ljmp	00118$
;	../../../contiki-sensinode//core/net/uip6.c:864: default:
00106$:
;	../../../contiki-sensinode//core/net/uip6.c:879: switch(UIP_EXT_HDR_OPT_BUF->type & 0xC0) {
	mov	a,#0x28
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_uip_aligned_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0xC0
	cjne	r4,#0x00,00147$
	ljmp	00113$
00147$:
	cjne	r4,#0x40,00148$
	sjmp	00108$
00148$:
	cjne	r4,#0x80,00149$
	sjmp	00112$
00149$:
;	../../../contiki-sensinode//core/net/uip6.c:882: case 0x40:
	cjne	r4,#0xC0,00113$
	sjmp	00109$
00108$:
;	../../../contiki-sensinode//core/net/uip6.c:883: return 1;
	mov	dpl,#0x01
	ljmp	00118$
;	../../../contiki-sensinode//core/net/uip6.c:884: case 0xC0:
00109$:
;	../../../contiki-sensinode//core/net/uip6.c:885: if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0xFF,00112$
;	../../../contiki-sensinode//core/net/uip6.c:886: return 1;
	mov	dpl,#0x01
	ljmp	00118$
;	../../../contiki-sensinode//core/net/uip6.c:888: case 0x80:
00112$:
;	../../../contiki-sensinode//core/net/uip6.c:890: (uint32_t)UIP_IPH_LEN + uip_ext_len + uip_ext_opt_offset);
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x28
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	clr	a
	addc	a,r2
	inc	r0
	mov	@r0,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
;	../../../contiki-sensinode//core/net/uip6.c:889: uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_OPTION,
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x02
	push	acc
	mov	dpl,#0x04
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:891: return 2;
	mov	dpl,#0x02
;	../../../contiki-sensinode//core/net/uip6.c:892: }
	sjmp	00118$
00113$:
;	../../../contiki-sensinode//core/net/uip6.c:894: uip_ext_opt_offset += UIP_EXT_HDR_OPT_BUF->len + 2;
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r7,a
	mov	r3,a
	mov	r4,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	add	a,#0x02
	mov	dptr,#_uip_ext_opt_offset
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:896: }
	ljmp	00115$
00117$:
;	../../../contiki-sensinode//core/net/uip6.c:898: return 0;
	mov	dpl,#0x00
00118$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_process'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:904: uip_process(uint8_t flag)
;	-----------------------------------------
;	 function uip_process
;	-----------------------------------------
_uip_process:
	mov	r7,dpl
;	../../../contiki-sensinode//core/net/uip6.c:910: if(flag == UIP_UDP_SEND_CONN) {
	cjne	r7,#0x04,00453$
	ljmp	00248$
00453$:
;	../../../contiki-sensinode//core/net/uip6.c:914: uip_sappdata = uip_appdata = &uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x003c)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x003c) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x003c)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x003c) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1048: if(flag == UIP_UDP_TIMER) {
	cjne	r7,#0x05,00110$
;	../../../contiki-sensinode//core/net/uip6.c:1049: if(uip_udp_conn->lport != 0) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
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
	orl	a,r5
	jnz	00456$
	ljmp	00255$
00456$:
;	../../../contiki-sensinode//core/net/uip6.c:1050: uip_conn = NULL;
	mov	dptr,#_uip_conn
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1051: uip_sappdata = uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//core/net/uip6.c:1052: uip_len = uip_slen = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_slen
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_len
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1053: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1054: UIP_UDP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1055: goto udp_send;
	ljmp	00248$
;	../../../contiki-sensinode//core/net/uip6.c:1057: goto drop;
00110$:
;	../../../contiki-sensinode//core/net/uip6.c:1069: if((UIP_IP_BUF->vtc & 0xf0) != 0x60)  { /* IP version and header length. */
	mov	dptr,#_uip_aligned_buf
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0xF0
	cjne	r7,#0x60,00457$
	sjmp	00458$
00457$:
	ljmp	00255$
00458$:
;	../../../contiki-sensinode//core/net/uip6.c:1084: if((UIP_IP_BUF->len[0] << 8) + UIP_IP_BUF->len[1] <= uip_len) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00459$
	ljmp	00255$
00459$:
;	../../../contiki-sensinode//core/net/uip6.c:1085: uip_len = (UIP_IP_BUF->len[0] << 8) + UIP_IP_BUF->len[1] + UIP_IPH_LEN;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,#0x28
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_len
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1108: if(uip_is_addr_mcast(&UIP_IP_BUF->srcipaddr)){
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00460$
	ljmp	00255$
00460$:
;	../../../contiki-sensinode//core/net/uip6.c:1120: uip_next_hdr = &UIP_IP_BUF->proto;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_uip_next_hdr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1121: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
;	../../../contiki-sensinode//core/net/uip6.c:1122: uip_ext_bitmap = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_ext_bitmap
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1123: if(*uip_next_hdr == UIP_PROTO_HBHO) {
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	jnz	00123$
;	../../../contiki-sensinode//core/net/uip6.c:1125: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_HBHO;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x01
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1127: switch(ext_hdr_options_process()) {
	mov	r0,#_ext_hdr_options_process
	mov	r1,#(_ext_hdr_options_process >> 8)
	mov	r2,#(_ext_hdr_options_process >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	cjne	r7,#0x00,00462$
	sjmp	00118$
00462$:
	cjne	r7,#0x01,00463$
	ljmp	00255$
00463$:
	cjne	r7,#0x02,00464$
	ljmp	00254$
00464$:
;	../../../contiki-sensinode//core/net/uip6.c:1128: case 0:
	sjmp	00123$
00118$:
;	../../../contiki-sensinode//core/net/uip6.c:1130: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1131: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1142: }
00123$:
;	../../../contiki-sensinode//core/net/uip6.c:1147: if(!uip_ds6_is_my_addr(&UIP_IP_BUF->destipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_addr_lookup
	mov	r1,#(_uip_ds6_addr_lookup >> 8)
	mov	r2,#(_uip_ds6_addr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00465$
	ljmp	00209$
00465$:
;	../../../contiki-sensinode//core/net/uip6.c:1148: !uip_ds6_is_my_maddr(&UIP_IP_BUF->destipaddr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_maddr_lookup
	mov	r1,#(_uip_ds6_maddr_lookup >> 8)
	mov	r2,#(_uip_ds6_maddr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00466$
	ljmp	00209$
00466$:
;	../../../contiki-sensinode//core/net/uip6.c:1149: if(!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00467$
	ljmp	00151$
00467$:
;	../../../contiki-sensinode//core/net/uip6.c:1150: !uip_is_addr_link_local(&UIP_IP_BUF->destipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00156$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x19
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00470$
	ljmp	00151$
00470$:
00156$:
;	../../../contiki-sensinode//core/net/uip6.c:1151: !uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00164$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00473$
	ljmp	00151$
00473$:
00164$:
;	../../../contiki-sensinode//core/net/uip6.c:1152: !uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00474$
	ljmp	00173$
00474$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00475$
	ljmp	00173$
00475$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00173$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00173$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00173$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00173$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00173$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00481$
	ljmp	00151$
00481$:
00173$:
;	../../../contiki-sensinode//core/net/uip6.c:1153: !uip_is_addr_loopback(&UIP_IP_BUF->destipaddr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00482$
	ljmp	00150$
00482$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00483$
	ljmp	00150$
00483$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00150$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00150$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00150$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x22
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00150$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x24
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00150$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00150$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x27
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00490$
	ljmp	00151$
00490$:
00150$:
;	../../../contiki-sensinode//core/net/uip6.c:1157: if(uip_len > UIP_LINK_MTU) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	a,#0x05
	subb	a,r7
	jnc	00125$
;	../../../contiki-sensinode//core/net/uip6.c:1158: uip_icmp6_error_output(ICMP6_PACKET_TOO_BIG, 0, UIP_LINK_MTU);
	clr	a
	push	acc
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1160: goto send;
	ljmp	00254$
00125$:
;	../../../contiki-sensinode//core/net/uip6.c:1163: if(UIP_IP_BUF->ttl <= 1) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x01
	jc	00127$
;	../../../contiki-sensinode//core/net/uip6.c:1164: uip_icmp6_error_output(ICMP6_TIME_EXCEEDED,
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x03
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1167: goto send;
	ljmp	00254$
00127$:
;	../../../contiki-sensinode//core/net/uip6.c:1171: rpl_update_header_empty();
	mov	r0,#_rpl_update_header_empty
	mov	r1,#(_rpl_update_header_empty >> 8)
	mov	r2,#(_rpl_update_header_empty >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1174: UIP_IP_BUF->ttl = UIP_IP_BUF->ttl - 1;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	dec	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1179: goto send;
	ljmp	00254$
00151$:
;	../../../contiki-sensinode//core/net/uip6.c:1181: if((uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00493$
	sjmp	00494$
00493$:
	ljmp	00255$
00494$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00495$
	sjmp	00496$
00495$:
	ljmp	00255$
00496$:
;	../../../contiki-sensinode//core/net/uip6.c:1182: (!uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00497$
	ljmp	00147$
00497$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00498$
	ljmp	00147$
00498$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00147$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00147$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00147$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00147$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00147$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00504$
	ljmp	00255$
00504$:
00147$:
;	../../../contiki-sensinode//core/net/uip6.c:1183: (!uip_is_addr_loopback(&UIP_IP_BUF->destipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00505$
	ljmp	00148$
00505$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00506$
	ljmp	00148$
00506$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00148$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00148$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00148$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x22
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00148$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x24
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00148$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00148$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x27
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00513$
	ljmp	00255$
00513$:
00148$:
;	../../../contiki-sensinode//core/net/uip6.c:1184: (!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00514$
	ljmp	00255$
00514$:
;	../../../contiki-sensinode//core/net/uip6.c:1185: (!uip_ds6_is_addr_onlink((&UIP_IP_BUF->destipaddr)))) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_is_addr_onlink
	mov	r1,#(_uip_ds6_is_addr_onlink >> 8)
	mov	r2,#(_uip_ds6_is_addr_onlink >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	00515$
	ljmp	00255$
00515$:
;	../../../contiki-sensinode//core/net/uip6.c:1187: uip_icmp6_error_output(ICMP6_DST_UNREACH,
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x01
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1189: goto send;
	ljmp	00254$
;	../../../contiki-sensinode//core/net/uip6.c:1213: while(1) {
00209$:
;	../../../contiki-sensinode//core/net/uip6.c:1214: switch(*uip_next_hdr){
	mov	dptr,#_uip_next_hdr
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
	lcall	__gptrget
	mov	r7,a
	jz	00179$
	cjne	r7,#0x11,00517$
	ljmp	00227$
00517$:
	cjne	r7,#0x2B,00518$
	ljmp	00198$
00518$:
	cjne	r7,#0x2C,00519$
	ljmp	00255$
00519$:
	cjne	r7,#0x3A,00520$
	ljmp	00212$
00520$:
	cjne	r7,#0x3B,00521$
	ljmp	00255$
00521$:
	cjne	r7,#0x3C,00522$
	sjmp	00187$
00522$:
	ljmp	00211$
;	../../../contiki-sensinode//core/net/uip6.c:1228: case UIP_PROTO_HBHO:
00179$:
;	../../../contiki-sensinode//core/net/uip6.c:1233: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_HBHO) {
	mov	dptr,#_uip_ext_bitmap
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00523$
	ljmp	00211$
00523$:
;	../../../contiki-sensinode//core/net/uip6.c:1236: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_HBHO;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1239: switch(ext_hdr_options_process()) {
	mov	r0,#_ext_hdr_options_process
	mov	r1,#(_ext_hdr_options_process >> 8)
	mov	r2,#(_ext_hdr_options_process >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	cjne	r7,#0x00,00524$
	sjmp	00183$
00524$:
	cjne	r7,#0x01,00525$
	ljmp	00255$
00525$:
	cjne	r7,#0x02,00526$
	ljmp	00254$
00526$:
;	../../../contiki-sensinode//core/net/uip6.c:1240: case 0:
	sjmp	00209$
00183$:
;	../../../contiki-sensinode//core/net/uip6.c:1242: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1243: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1244: break;
	ljmp	00209$
;	../../../contiki-sensinode//core/net/uip6.c:1254: case UIP_PROTO_DESTO:
00187$:
;	../../../contiki-sensinode//core/net/uip6.c:1258: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_DESTO1) {
	mov	dptr,#_uip_ext_bitmap
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00192$
;	../../../contiki-sensinode//core/net/uip6.c:1259: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_DESTO2) {
	mov	a,r7
	jnb	acc.6,00528$
	ljmp	00211$
00528$:
;	../../../contiki-sensinode//core/net/uip6.c:1262: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_DESTO2;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
	sjmp	00193$
00192$:
;	../../../contiki-sensinode//core/net/uip6.c:1265: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_DESTO1;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
00193$:
;	../../../contiki-sensinode//core/net/uip6.c:1268: switch(ext_hdr_options_process()) {
	mov	r0,#_ext_hdr_options_process
	mov	r1,#(_ext_hdr_options_process >> 8)
	mov	r2,#(_ext_hdr_options_process >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	cjne	r7,#0x00,00529$
	sjmp	00194$
00529$:
	cjne	r7,#0x01,00530$
	ljmp	00255$
00530$:
	cjne	r7,#0x02,00531$
	ljmp	00254$
00531$:
	ljmp	00209$
;	../../../contiki-sensinode//core/net/uip6.c:1269: case 0:
00194$:
;	../../../contiki-sensinode//core/net/uip6.c:1271: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1272: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1273: break;
	ljmp	00209$
;	../../../contiki-sensinode//core/net/uip6.c:1283: case UIP_PROTO_ROUTING:
00198$:
;	../../../contiki-sensinode//core/net/uip6.c:1286: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_ROUTING) {
	mov	dptr,#_uip_ext_bitmap
	movx	a,@dptr
	mov	r7,a
	jnb	acc.2,00532$
	ljmp	00211$
00532$:
;	../../../contiki-sensinode//core/net/uip6.c:1289: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_ROUTING;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x04
	orl	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1301: if(UIP_ROUTING_BUF->seg_left > 0) {
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	a,r3
	add	a,#_uip_aligned_buf
	mov	r3,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jz	00203$
;	../../../contiki-sensinode//core/net/uip6.c:1302: uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_HEADER, UIP_IPH_LEN + uip_ext_len + 2);
	mov	a,#0x2A
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	ar1,r3
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	clr	a
	push	acc
	mov	dpl,#0x04
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1305: goto send;
	ljmp	00254$
00203$:
;	../../../contiki-sensinode//core/net/uip6.c:1307: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1308: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1309: break;
	ljmp	00209$
;	../../../contiki-sensinode//core/net/uip6.c:1341: bad_hdr:
00211$:
;	../../../contiki-sensinode//core/net/uip6.c:1346: uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_NEXTHEADER, (uint32_t)(uip_next_hdr - (uint8_t *)UIP_IP_BUF));
	mov	dptr,#_uip_next_hdr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	clr	c
	subb	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	subb	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#0x01
	push	acc
	mov	dpl,#0x04
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1350: goto send;
	ljmp	00254$
;	../../../contiki-sensinode//core/net/uip6.c:1353: icmp6_input:
00212$:
;	../../../contiki-sensinode//core/net/uip6.c:1359: if(uip_icmp6chksum() != 0xffff) {
	mov	r0,#_uip_icmp6chksum
	mov	r1,#(_uip_icmp6chksum >> 8)
	mov	r2,#(_uip_icmp6chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,00534$
	cjne	r7,#0xFF,00534$
	sjmp	00535$
00534$:
	ljmp	00255$
00535$:
;	../../../contiki-sensinode//core/net/uip6.c:1382: switch(UIP_ICMP_BUF->type) {
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r7
	add	a,#_uip_aligned_buf
	mov	dpl,a
	mov	a,r6
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00536$
	sjmp	00220$
00536$:
	cjne	r7,#0x81,00537$
	sjmp	00221$
00537$:
	cjne	r7,#0x85,00538$
	sjmp	00217$
00538$:
	cjne	r7,#0x86,00539$
	sjmp	00218$
00539$:
	cjne	r7,#0x87,00540$
	sjmp	00215$
00540$:
	cjne	r7,#0x88,00541$
	sjmp	00216$
00541$:
;	../../../contiki-sensinode//core/net/uip6.c:1383: case ICMP6_NS:
	cjne	r7,#0x9B,00222$
	sjmp	00219$
00215$:
;	../../../contiki-sensinode//core/net/uip6.c:1384: uip_nd6_ns_input();
	mov	r0,#_uip_nd6_ns_input
	mov	r1,#(_uip_nd6_ns_input >> 8)
	mov	r2,#(_uip_nd6_ns_input >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1385: break;
;	../../../contiki-sensinode//core/net/uip6.c:1386: case ICMP6_NA:
	sjmp	00223$
00216$:
;	../../../contiki-sensinode//core/net/uip6.c:1387: uip_nd6_na_input();
	mov	r0,#_uip_nd6_na_input
	mov	r1,#(_uip_nd6_na_input >> 8)
	mov	r2,#(_uip_nd6_na_input >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1388: break;
;	../../../contiki-sensinode//core/net/uip6.c:1389: case ICMP6_RS:
	sjmp	00223$
00217$:
;	../../../contiki-sensinode//core/net/uip6.c:1394: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1396: break;
;	../../../contiki-sensinode//core/net/uip6.c:1397: case ICMP6_RA:
	sjmp	00223$
00218$:
;	../../../contiki-sensinode//core/net/uip6.c:1400: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1404: break;
;	../../../contiki-sensinode//core/net/uip6.c:1406: case ICMP6_RPL:
	sjmp	00223$
00219$:
;	../../../contiki-sensinode//core/net/uip6.c:1407: uip_rpl_input();
	mov	r0,#_uip_rpl_input
	mov	r1,#(_uip_rpl_input >> 8)
	mov	r2,#(_uip_rpl_input >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1408: break;
;	../../../contiki-sensinode//core/net/uip6.c:1410: case ICMP6_ECHO_REQUEST:
	sjmp	00223$
00220$:
;	../../../contiki-sensinode//core/net/uip6.c:1411: uip_icmp6_echo_request_input();
	mov	r0,#_uip_icmp6_echo_request_input
	mov	r1,#(_uip_icmp6_echo_request_input >> 8)
	mov	r2,#(_uip_icmp6_echo_request_input >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1412: break;
;	../../../contiki-sensinode//core/net/uip6.c:1413: case ICMP6_ECHO_REPLY:
	sjmp	00223$
00221$:
;	../../../contiki-sensinode//core/net/uip6.c:1417: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1418: break;
;	../../../contiki-sensinode//core/net/uip6.c:1419: default:
	sjmp	00223$
00222$:
;	../../../contiki-sensinode//core/net/uip6.c:1424: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1426: }
00223$:
;	../../../contiki-sensinode//core/net/uip6.c:1428: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00543$
	ljmp	00255$
00543$:
;	../../../contiki-sensinode//core/net/uip6.c:1429: goto send;
	ljmp	00254$
;	../../../contiki-sensinode//core/net/uip6.c:1438: udp_input:
00227$:
;	../../../contiki-sensinode//core/net/uip6.c:1440: remove_ext_hdr();
	mov	r0,#_remove_ext_hdr
	mov	r1,#(_remove_ext_hdr >> 8)
	mov	r2,#(_remove_ext_hdr >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1450: uip_len = uip_len - UIP_IPUDPH_LEN;
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1451: uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1457: if(UIP_UDP_BUF->udpchksum != 0 && uip_udpchksum() != 0xffff) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00229$
	mov	r0,#_uip_udpchksum
	mov	r1,#(_uip_udpchksum >> 8)
	mov	r2,#(_uip_udpchksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,00545$
	cjne	r7,#0xFF,00545$
	sjmp	00546$
00545$:
	ljmp	00255$
00546$:
;	../../../contiki-sensinode//core/net/uip6.c:1462: goto drop;
00229$:
;	../../../contiki-sensinode//core/net/uip6.c:1469: if(UIP_UDP_BUF->destport == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00547$
	ljmp	00255$
00547$:
;	../../../contiki-sensinode//core/net/uip6.c:1475: for(uip_udp_conn = &uip_udp_conns[0];
	mov	dptr,#_uip_udp_conn
	mov	a,#_uip_udp_conns
	movx	@dptr,a
	inc	dptr
	mov	a,#(_uip_udp_conns >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00256$:
;	../../../contiki-sensinode//core/net/uip6.c:1476: uip_udp_conn < &uip_udp_conns[UIP_UDP_CONNS];
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#(_uip_udp_conns + 0x010e)
	push	acc
	mov	a,#((_uip_udp_conns + 0x010e) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00548$
	ljmp	00255$
00548$:
;	../../../contiki-sensinode//core/net/uip6.c:1485: if(uip_udp_conn->lport != 0 &&
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00549$
	ljmp	00258$
00549$:
;	../../../contiki-sensinode//core/net/uip6.c:1486: UIP_UDP_BUF->destport == uip_udp_conn->lport &&
	mov	r1,#(_uip_aligned_buf + 0x0028)
	mov	r2,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r1
	mov	dph,r2
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	cjne	a,ar3,00550$
	mov	a,r2
	cjne	a,ar4,00550$
	sjmp	00551$
00550$:
	ljmp	00258$
00551$:
;	../../../contiki-sensinode//core/net/uip6.c:1487: (uip_udp_conn->rport == 0 ||
	mov	a,#0x12
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00246$
;	../../../contiki-sensinode//core/net/uip6.c:1488: UIP_UDP_BUF->srcport == uip_udp_conn->rport) &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	cjne	a,ar6,00553$
	mov	a,r5
	cjne	a,ar7,00553$
	sjmp	00554$
00553$:
	ljmp	00258$
00554$:
00246$:
;	../../../contiki-sensinode//core/net/uip6.c:1489: (uip_is_addr_unspecified(&uip_udp_conn->ripaddr) ||
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	00555$
	ljmp	00245$
00555$:
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	00556$
	ljmp	00245$
00556$:
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	00557$
	ljmp	00245$
00557$:
	mov	a,#0x06
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
	orl	a,r2
	jnz	00245$
	mov	a,#0x08
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
	orl	a,r2
	jnz	00245$
	mov	a,#0x0A
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
	orl	a,r2
	jnz	00245$
	mov	a,#0x0C
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
	orl	a,r2
	jnz	00245$
	mov	a,#0x0E
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
	orl	a,r5
	jz	00247$
00245$:
;	../../../contiki-sensinode//core/net/uip6.c:1490: uip_ipaddr_cmp(&UIP_IP_BUF->srcipaddr, &uip_udp_conn->ripaddr))) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
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
	jz	00247$
;	../../../contiki-sensinode//core/net/uip6.c:1491: goto udp_found;
00258$:
;	../../../contiki-sensinode//core/net/uip6.c:1477: ++uip_udp_conn) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	add	a,#0x1B
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00256$
;	../../../contiki-sensinode//core/net/uip6.c:1504: udp_found:
00247$:
;	../../../contiki-sensinode//core/net/uip6.c:1507: uip_conn = NULL;
	mov	dptr,#_uip_conn
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1508: uip_flags = UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x02
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1509: uip_sappdata = uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//core/net/uip6.c:1510: uip_slen = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_slen
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1511: UIP_UDP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/uip6.c:1513: udp_send:
00248$:
;	../../../contiki-sensinode//core/net/uip6.c:1516: if(uip_slen == 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00564$
	ljmp	00255$
00564$:
;	../../../contiki-sensinode//core/net/uip6.c:1519: uip_len = uip_slen + UIP_IPUDPH_LEN;
	mov	a,#0x30
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dptr,#_uip_len
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1523: UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,r6
	add	a,#0x08
	clr	a
	addc	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1524: UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,r4
	add	a,#0xD8
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1526: memcpy(&UIP_IP_BUF->ttl, &uip_udp_conn->ttl, sizeof(uip_udp_conn->ttl));
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x14
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1527: UIP_IP_BUF->proto = UIP_PROTO_UDP;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1529: UIP_UDP_BUF->udplen = UIP_HTONS(uip_slen + UIP_UDPH_LEN);
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar3,r4
	mov	r2,#0x00
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1530: UIP_UDP_BUF->udpchksum = 0;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1532: UIP_UDP_BUF->srcport  = uip_udp_conn->lport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x10
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1533: UIP_UDP_BUF->destport = uip_udp_conn->rport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#0x12
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1535: uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &uip_udp_conn->ripaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r2,#0x00
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/uip6.c:1536: uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_uip_ds6_select_src
	mov	r1,#(_uip_ds6_select_src >> 8)
	mov	r2,#(_uip_ds6_select_src >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../contiki-sensinode//core/net/uip6.c:1538: uip_appdata = &uip_buf[UIP_LLH_LEN + UIP_IPTCPH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x003c)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x003c) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1542: UIP_UDP_BUF->udpchksum = ~(uip_udpchksum());
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar7
	push	ar6
	mov	r0,#_uip_udpchksum
	mov	r1,#(_uip_udpchksum >> 8)
	mov	r2,#(_uip_udpchksum >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:1543: if(UIP_UDP_BUF->udpchksum == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00253$
;	../../../contiki-sensinode//core/net/uip6.c:1544: UIP_UDP_BUF->udpchksum = 0xffff;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2255: ip_send_nolen:
00253$:
;	../../../contiki-sensinode//core/net/uip6.c:2257: UIP_IP_BUF->vtc = 0x60;
	mov	dptr,#_uip_aligned_buf
	mov	a,#0x60
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2258: UIP_IP_BUF->tcflow = 0x00;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2259: UIP_IP_BUF->flow = 0x00;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2260: send:
00254$:
;	../../../contiki-sensinode//core/net/uip6.c:2266: uip_flags = 0;
	mov	dptr,#_uip_flags
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2267: return;
;	../../../contiki-sensinode//core/net/uip6.c:2269: drop:
	sjmp	00260$
00255$:
;	../../../contiki-sensinode//core/net/uip6.c:2270: uip_len = 0;
	mov	dptr,#_uip_len
;	../../../contiki-sensinode//core/net/uip6.c:2271: uip_ext_len = 0;
;	../../../contiki-sensinode//core/net/uip6.c:2272: uip_ext_bitmap = 0;
;	../../../contiki-sensinode//core/net/uip6.c:2273: uip_flags = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_ext_len
	movx	@dptr,a
	mov	dptr,#_uip_ext_bitmap
	movx	@dptr,a
	mov	dptr,#_uip_flags
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2274: return;
00260$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_htons'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:2278: uip_htons(uint16_t val)
;	-----------------------------------------
;	 function uip_htons
;	-----------------------------------------
_uip_htons:
	mov	r6,dpl
	mov	r7,dph
;	../../../contiki-sensinode//core/net/uip6.c:2280: return UIP_HTONS(val);
	mov	ar5,r6
	mov	r4,#0x00
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dpl,r4
	mov	dph,r5
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_htonl'
;------------------------------------------------------------
;val                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:2284: uip_htonl(uint32_t val)
;	-----------------------------------------
;	 function uip_htonl
;	-----------------------------------------
_uip_htonl:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../../../contiki-sensinode//core/net/uip6.c:2286: return UIP_HTONL(val);
	mov	ar2,r4
	mov	ar3,r5
	mov	ar1,r2
	mov	r0,#0x00
	mov	ar2,r3
	mov	r3,#0x00
	mov	a,r2
	orl	ar0,a
	mov	a,r3
	orl	ar1,a
	mov	ar2,r1
	mov	ar3,r0
	mov	r1,#0x00
	mov	r0,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	ar7,r4
	mov	r6,#0x00
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	orl	ar0,a
	mov	a,r7
	orl	ar1,a
	mov	a,r5
	orl	ar3,a
	mov	a,r4
	orl	ar2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r2
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_send'
;------------------------------------------------------------
;len                       Allocated to stack - sp -10
;data                      Allocated to stack - sp -5
;copylen                   Allocated to registers r6 r7 
;sloc0                     Allocated to stack - sp +0
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/uip6.c:2290: uip_send(const void *data, int len)
;	-----------------------------------------
;	 function uip_send
;	-----------------------------------------
_uip_send:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../../../contiki-sensinode//core/net/uip6.c:2294: copylen = MIN(len, UIP_BUFSIZE - UIP_LLH_LEN - UIP_TCPIP_HLEN -
	mov	dptr,#_uip_sappdata
	mov	r0,sp
	dec	r0
	dec	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r6,#(_uip_aligned_buf + 0x003c)
	mov	r7,#((_uip_aligned_buf + 0x003c) >> 8)
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	mov	a,#0x13
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,#0x01
	subb	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	sjmp	00108$
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar7,r5
	mov	r2,#(_uip_aligned_buf + 0x003c)
	mov	r5,#((_uip_aligned_buf + 0x003c) >> 8)
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,r4
	subb	a,r5
	mov	r5,a
	mov	a,#0x13
	clr	c
	subb	a,r2
	mov	r6,a
	mov	a,#0x01
	subb	a,r5
	mov	r7,a
00108$:
;	../../../contiki-sensinode//core/net/uip6.c:2296: if(copylen > 0) {
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	../../../contiki-sensinode//core/net/uip6.c:2297: uip_slen = copylen;
	mov	dptr,#_uip_slen
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/uip6.c:2298: if(data != uip_sappdata) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00105$
;	../../../contiki-sensinode//core/net/uip6.c:2299: memcpy(uip_sappdata, (data), uip_slen);
	push	ar6
	push	ar7
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00105$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__uip_ext_bitmap:
	.db #0x00	; 0
__xinit__uip_ext_len:
	.db #0x00	; 0
__xinit__uip_ext_opt_offset:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
