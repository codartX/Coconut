;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Wed Dec  2 18:11:01 2015
;--------------------------------------------------------
	.module sicslowpan
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sicslowpan_driver
	.globl _llprefix
	.globl _unc_mxconf
	.globl _unc_ctxconf
	.globl _unc_llconf
	.globl _sicslowpan_init
	.globl _dummy
	.globl _neighbor_info_packet_received
	.globl _neighbor_info_packet_sent
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_set_attr
	.globl _packetbuf_set_datalen
	.globl _packetbuf_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _uip_ds6_set_addr_iid
	.globl _tcpip_set_outputfunc
	.globl _tcpip_input
	.globl _timer_expired
	.globl _timer_set
	.globl _watchdog_periodic
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
	.globl _frag_sender
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
	.globl _rime_sniffer_add
	.globl _rime_sniffer_remove
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
_rime_ptr:
	.ds 3
_rime_hdr_len:
	.ds 1
_rime_payload_len:
	.ds 1
_uncomp_hdr_len:
	.ds 1
_last_tx_status:
	.ds 2
_sicslowpan_len:
	.ds 2
_sicslowpan_aligned_buf:
	.ds 336
_processed_ip_in_len:
	.ds 2
_my_tag:
	.ds 2
_reass_tag:
	.ds 2
_frag_sender::
	.ds 8
_reass_timer:
	.ds 4
_addr_contexts:
	.ds 10
_context:
	.ds 3
_hc06_ptr:
	.ds 3
_output_dest_1_1:
	.ds 8
_output_processed_ip_out_len_1_1:
	.ds 2
_input_frag_tag_1_1:
	.ds 2
_input_first_fragment_1_1:
	.ds 1
_input_last_fragment_1_1:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_callback:
	.ds 3
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
;Allocation info for local variables in function 'rime_sniffer_add'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:269: rime_sniffer_add(struct rime_sniffer *s)
;	-----------------------------------------
;	 function rime_sniffer_add
;	-----------------------------------------
_rime_sniffer_add:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_callback
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:271: callback = s;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rime_sniffer_remove'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:275: rime_sniffer_remove(struct rime_sniffer *s)
;	-----------------------------------------
;	 function rime_sniffer_remove
;	-----------------------------------------
_rime_sniffer_remove:
;	../../../contiki-sensinode//core/net/sicslowpan.c:277: callback = NULL;
	mov	dptr,#_callback
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_packet_attrs'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:281: set_packet_attrs()
;	-----------------------------------------
;	 function set_packet_attrs
;	-----------------------------------------
_set_packet_attrs:
;	../../../contiki-sensinode//core/net/sicslowpan.c:283: int c = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:285: packetbuf_set_attr(PACKETBUF_ATTR_NETWORK_ID, UIP_IP_BUF->proto);
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,#0x02
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:288: if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x11,00111$
;	../../../contiki-sensinode//core/net/sicslowpan.c:289: c = UIP_UDP_BUF->srcport;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
;	../../../contiki-sensinode//core/net/sicslowpan.c:290: if(UIP_UDP_BUF->destport < c) {
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jc	00127$
	ljmp	00112$
00127$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:291: c = UIP_UDP_BUF->destport;
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	sjmp	00112$
00111$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:293: } else if(UIP_IP_BUF->proto == UIP_PROTO_TCP) {
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x06,00108$
;	../../../contiki-sensinode//core/net/sicslowpan.c:294: c = UIP_TCP_BUF->srcport;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
;	../../../contiki-sensinode//core/net/sicslowpan.c:295: if(UIP_TCP_BUF->destport < c) {
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00112$
;	../../../contiki-sensinode//core/net/sicslowpan.c:296: c = UIP_TCP_BUF->destport;
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	sjmp	00112$
00108$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:298: } else if(UIP_IP_BUF->proto == UIP_PROTO_ICMP6) {
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x3A,00112$
;	../../../contiki-sensinode//core/net/sicslowpan.c:299: c = UIP_ICMP_BUF->type << 8 | UIP_ICMP_BUF->icode;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	mov	ar6,r5
	mov	ar7,r4
00112$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:302: packetbuf_set_attr(PACKETBUF_ATTR_CHANNEL, c);
	push	ar6
	push	ar7
	mov	dpl,#0x01
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:362: dummy()
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	../../../contiki-sensinode//core/net/sicslowpan.c:364: return;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addr_context_lookup_by_prefix'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -7
;i                         Allocated to registers r3 r4 
;sloc0                     Allocated to stack - sp -4
;sloc1                     Allocated to stack - sp +0
;sloc2                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:373: addr_context_lookup_by_prefix(uip_ipaddr_t *ipaddr)
;	-----------------------------------------
;	 function addr_context_lookup_by_prefix
;	-----------------------------------------
_addr_context_lookup_by_prefix:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:378: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00104$:
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00118$
	ljmp	00107$
00118$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:379: if((addr_contexts[i].used == 1) &&
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#_addr_contexts
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_addr_contexts >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
	sjmp	00120$
00119$:
	ljmp	00106$
00120$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:380: uip_ipaddr_prefixcmp(&addr_contexts[i].prefix, ipaddr, 64)) {
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,#_addr_contexts
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#(_addr_contexts >> 8)
	mov	r7,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r6,#0x00
	push	ar4
	push	ar3
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf8
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
	mov	dph,r7
	mov	b,r6
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar4
	pop	ar3
	mov	a,r6
	orl	a,r7
	jnz	00106$
;	../../../contiki-sensinode//core/net/sicslowpan.c:381: return &addr_contexts[i];
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#_addr_contexts
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,#(_addr_contexts >> 8)
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	sjmp	00108$
00106$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:378: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	inc	r3
	cjne	r3,#0x00,00122$
	inc	r4
00122$:
	ljmp	00104$
00107$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:385: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00108$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addr_context_lookup_by_number'
;------------------------------------------------------------
;number                    Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:390: addr_context_lookup_by_number(uint8_t number)
;	-----------------------------------------
;	 function addr_context_lookup_by_number
;	-----------------------------------------
_addr_context_lookup_by_number:
	mov	r7,dpl
;	../../../contiki-sensinode//core/net/sicslowpan.c:395: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
00104$:
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	../../../contiki-sensinode//core/net/sicslowpan.c:396: if((addr_contexts[i].used == 1) &&
	mov	a,r3
	add	a,#_addr_contexts
	mov	dpl,a
	mov	a,r4
	addc	a,#(_addr_contexts >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00106$
;	../../../contiki-sensinode//core/net/sicslowpan.c:397: addr_contexts[i].number == number) {
	mov	a,r3
	add	a,#_addr_contexts
	mov	r1,a
	mov	a,r4
	addc	a,#(_addr_contexts >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	cjne	a,ar7,00106$
;	../../../contiki-sensinode//core/net/sicslowpan.c:398: return &addr_contexts[i];
	mov	ar0,r2
	mov	r2,#0x00
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	sjmp	00108$
00106$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:395: for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
	mov	a,#0x0A
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00107$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:402: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00108$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compress_addr_64'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -12
;lladdr                    Allocated to stack - sp -15
;bitpos                    Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -5
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:406: compress_addr_64(uint8_t bitpos, uip_ipaddr_t *ipaddr, uip_lladdr_t *lladdr)
;	-----------------------------------------
;	 function compress_addr_64
;	-----------------------------------------
_compress_addr_64:
	push	dpl
	mov	a,sp
	add	a,#0x06
;	../../../contiki-sensinode//core/net/sicslowpan.c:408: if(uip_is_addr_mac_addr_based(ipaddr, lladdr)) {
	mov	sp,a
	add	a,#0xf4
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	xrl	ar7,#0x02
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	cjne	a,ar7,00146$
	sjmp	00147$
00146$:
	ljmp	00109$
00147$:
	mov	a,#0x09
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00148$
	sjmp	00149$
00148$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00149$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0A
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00150$
	sjmp	00151$
00150$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00151$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0B
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00152$
	sjmp	00153$
00152$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00153$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0C
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00154$
	sjmp	00155$
00154$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00155$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0D
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00156$
	sjmp	00157$
00156$:
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00109$
00157$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0E
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00158$
	sjmp	00159$
00158$:
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00109$
00159$:
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x0F
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00160$
	sjmp	00161$
00160$:
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00109$
00161$:
	pop	ar6
	pop	ar5
	pop	ar4
;	../../../contiki-sensinode//core/net/sicslowpan.c:409: return 3 << bitpos; /* 0-bits */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x03
	sjmp	00164$
00162$:
	add	a,acc
00164$:
	djnz	b,00162$
	mov	r7,a
	mov	dpl,a
	ljmp	00118$
00109$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:410: } else if(sicslowpan_is_iid_16_bit_compressable(ipaddr)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x08
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r3
	jz	00165$
	ljmp	00102$
00165$:
	mov	a,#0x0A
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	jz	00166$
	ljmp	00102$
00166$:
	mov	a,#0x0B
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFF,00167$
	sjmp	00168$
00167$:
	ljmp	00102$
00168$:
	mov	a,#0x0C
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFE,00102$
	mov	a,#0x0D
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	jnz	00102$
;	../../../contiki-sensinode//core/net/sicslowpan.c:412: memcpy(hc06_ptr, &ipaddr->u16[7], 2);
	mov	a,#0x0E
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:413: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:414: return 2 << bitpos; /* 16-bits */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x02
	sjmp	00174$
00172$:
	add	a,acc
00174$:
	djnz	b,00172$
	mov	r7,a
	mov	dpl,a
	sjmp	00118$
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:417: memcpy(hc06_ptr, &ipaddr->u16[4], 8);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:418: hc06_ptr += 8;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x08
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:419: return 1 << bitpos; /* 64-bits */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x01
	sjmp	00177$
00175$:
	add	a,acc
00177$:
	djnz	b,00175$
	mov	r7,a
	mov	dpl,a
00118$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uncompress_addr'
;------------------------------------------------------------
;prefix                    Allocated to stack - sp -12
;pref_post_count           Allocated to stack - sp -13
;lladdr                    Allocated to stack - sp -16
;ipaddr                    Allocated to stack - sp -6
;prefcount                 Allocated to stack - sp -3
;postcount                 Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:431: uncompress_addr(uip_ipaddr_t *ipaddr, uint8_t const prefix[],
;	-----------------------------------------
;	 function uncompress_addr
;	-----------------------------------------
_uncompress_addr:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
;	../../../contiki-sensinode//core/net/sicslowpan.c:434: uint8_t prefcount = pref_post_count >> 4;
	mov	sp,a
	add	a,#0xf3
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r0
	swap	a
	anl	a,#0x0F
	mov	@r1,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:435: uint8_t postcount = pref_post_count & 0x0f;
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x0F
	anl	a,@r0
	mov	@r1,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:437: prefcount = prefcount == 15 ? 16 : prefcount;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x0F,00115$
	mov	r2,#0x10
	sjmp	00116$
00115$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
00116$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
;	../../../contiki-sensinode//core/net/sicslowpan.c:438: postcount = postcount == 15 ? 16 : postcount;
	mov	r0,sp
	dec	r0
	dec	r0
	cjne	@r0,#0x0F,00117$
	mov	r2,#0x10
	sjmp	00118$
00117$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
00118$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
;	../../../contiki-sensinode//core/net/sicslowpan.c:442: if(prefcount > 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00102$
;	../../../contiki-sensinode//core/net/sicslowpan.c:443: memcpy(ipaddr, prefix, prefcount);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,sp
	dec	r0
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
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:458: uip_ds6_set_addr_iid(ipaddr, lladdr);
;	../../../contiki-sensinode//core/net/sicslowpan.c:443: memcpy(ipaddr, prefix, prefcount);
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:445: if(prefcount + postcount < 16) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	mov	r7,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,r5
	add	a,r4
	mov	r2,a
	mov	a,r6
	addc	a,r7
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	../../../contiki-sensinode//core/net/sicslowpan.c:446: memset(&ipaddr->u8[prefcount], 0, 16 - (prefcount + postcount));
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	a,#0x10
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar4
	push	ar7
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00104$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:448: if(postcount > 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	jnz	00141$
	ljmp	00111$
00141$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:449: memcpy(&ipaddr->u8[16 - postcount], hc06_ptr, postcount);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	r1,sp
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	clr	c
	subb	a,@r0
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:450: if(postcount == 2 && prefcount < 11) {
	mov	r0,sp
	dec	r0
	dec	r0
	cjne	@r0,#0x02,00106$
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x0B,00144$
00144$:
	jnc	00106$
;	../../../contiki-sensinode//core/net/sicslowpan.c:452: ipaddr->u8[11] = 0xff;
	mov	a,sp
	add	a,#0xfa
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
	mov	a,#0xFF
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:453: ipaddr->u8[12] = 0xfe;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
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
	mov	a,#0xFE
	lcall	__gptrput
00106$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:455: hc06_ptr += postcount;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_hc06_ptr
	mov	a,@r0
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00113$
00111$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:456: } else if (prefcount > 0) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00113$
;	../../../contiki-sensinode//core/net/sicslowpan.c:458: uip_ds6_set_addr_iid(ipaddr, lladdr);
	mov	a,sp
	add	a,#0xf0
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
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_uip_ds6_set_addr_iid
	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00113$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compress_hdr_hc06'
;------------------------------------------------------------
;rime_destaddr             Allocated to stack - sp -13
;tmp                       Allocated to registers r4 
;iphc0                     Allocated to stack - sp -10
;iphc1                     Allocated to stack - sp -9
;sloc0                     Allocated to stack - sp -8
;sloc1                     Allocated to stack - sp -7
;sloc2                     Allocated to stack - sp -4
;sloc3                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:501: compress_hdr_hc06(rimeaddr_t *rime_destaddr)
;	-----------------------------------------
;	 function compress_hdr_hc06
;	-----------------------------------------
_compress_hdr_hc06:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0B
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:515: hc06_ptr = rime_ptr + 2;
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:523: iphc0 = SICSLOWPAN_DISPATCH_IPHC;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#0x60
;	../../../contiki-sensinode//core/net/sicslowpan.c:524: iphc1 = 0;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:525: RIME_IPHC_BUF[2] = 0; /* might not be used - but needs to be cleared */
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:537: if(addr_context_lookup_by_prefix(&UIP_IP_BUF->destipaddr) != NULL ||
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,r3
	orl	a,r4
	jnz	00101$
;	../../../contiki-sensinode//core/net/sicslowpan.c:538: addr_context_lookup_by_prefix(&UIP_IP_BUF->srcipaddr) != NULL) {
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,r3
	orl	a,r4
	jz	00102$
00101$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:541: iphc1 |= SICSLOWPAN_IPHC_CID;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,#0x80
;	../../../contiki-sensinode//core/net/sicslowpan.c:542: hc06_ptr++;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:553: tmp = (UIP_IP_BUF->vtc << 4) | (UIP_IP_BUF->tcflow >> 4);
	mov	dptr,#_uip_aligned_buf
	movx	a,@dptr
	mov	r5,a
	swap	a
	anl	a,#0xF0
	mov	r4,a
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	orl	ar4,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:554: tmp = ((tmp & 0x03) << 6) | (tmp >> 2);
	mov	a,#0x03
	anl	a,r4
	rr	a
	rr	a
	anl	a,#0xC0
	mov	r3,a
	mov	a,r4
	rr	a
	rr	a
	anl	a,#0x3F
	orl	ar3,a
	mov	ar4,r3
;	../../../contiki-sensinode//core/net/sicslowpan.c:556: if(((UIP_IP_BUF->tcflow & 0x0F) == 0) &&
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	anl	a,#0x0F
	jz	00316$
	sjmp	00113$
00316$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:557: (UIP_IP_BUF->flow == 0)) {
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00113$
;	../../../contiki-sensinode//core/net/sicslowpan.c:559: iphc0 |= SICSLOWPAN_IPHC_FL_C;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#0x70
;	../../../contiki-sensinode//core/net/sicslowpan.c:560: if(((UIP_IP_BUF->vtc & 0x0F) == 0) &&
	mov	a,r5
	anl	a,#0x0F
	jz	00319$
	sjmp	00105$
00319$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:561: ((UIP_IP_BUF->tcflow & 0xF0) == 0)) {
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xF0
	jz	00321$
	sjmp	00105$
00321$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:563: iphc0 |= SICSLOWPAN_IPHC_TC_C;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#0x78
	ljmp	00114$
00105$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:566: *hc06_ptr = tmp;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:567: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00114$
00113$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:571: if(((UIP_IP_BUF->vtc & 0x0F) == 0) &&
	mov	a,r5
	anl	a,#0x0F
	jz	00323$
	ljmp	00109$
00323$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:572: ((UIP_IP_BUF->tcflow & 0xF0) == 0)) {
	mov	r3,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	dpl,r3
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	anl	a,#0xF0
	jz	00325$
	ljmp	00109$
00325$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:574: iphc0 |= SICSLOWPAN_IPHC_TC_C;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#0x68
;	../../../contiki-sensinode//core/net/sicslowpan.c:575: *hc06_ptr = (tmp & 0xc0) |
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xC0
	anl	a,r4
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:576: (UIP_IP_BUF->tcflow & 0x0F);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0F
	anl	a,r7
	xch	a,r0
	mov	a,sp
	add	a,#0xf8
	xch	a,r0
	orl	a,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:577: memcpy(hc06_ptr + 1, &UIP_IP_BUF->flow, 2);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x01
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r5
	mov	a,#0x02
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:578: hc06_ptr += 3;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x03
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00114$
00109$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:581: memcpy(hc06_ptr, &UIP_IP_BUF->vtc, 4);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_aligned_buf
	push	acc
	mov	a,#(_uip_aligned_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	../../../contiki-sensinode//core/net/sicslowpan.c:583: *hc06_ptr = tmp;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:584: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00114$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:592: if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00117$
;	../../../contiki-sensinode//core/net/sicslowpan.c:593: iphc0 |= SICSLOWPAN_IPHC_NH_C;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	orl	a,#0x04
	mov	@r0,a
00117$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:601: if ((iphc0 & SICSLOWPAN_IPHC_NH_C) == 0) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	jb	acc.2,00119$
;	../../../contiki-sensinode//core/net/sicslowpan.c:602: *hc06_ptr = UIP_IP_BUF->proto;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:603: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00119$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:613: switch(UIP_IP_BUF->ttl) {
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00329$
	sjmp	00120$
00329$:
	cjne	r7,#0x40,00330$
	sjmp	00121$
00330$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:614: case 1:
	cjne	r7,#0xFF,00123$
	sjmp	00122$
00120$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:615: iphc0 |= SICSLOWPAN_IPHC_TTL_1;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:616: break;
;	../../../contiki-sensinode//core/net/sicslowpan.c:617: case 64:
	sjmp	00124$
00121$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:618: iphc0 |= SICSLOWPAN_IPHC_TTL_64;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:619: break;
;	../../../contiki-sensinode//core/net/sicslowpan.c:620: case 255:
	sjmp	00124$
00122$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:621: iphc0 |= SICSLOWPAN_IPHC_TTL_255;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	orl	a,#0x03
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:622: break;
;	../../../contiki-sensinode//core/net/sicslowpan.c:623: default:
	sjmp	00124$
00123$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:624: *hc06_ptr = UIP_IP_BUF->ttl;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r2,#_uip_aligned_buf
	mov	r3,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:625: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:627: }
00124$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:630: if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jz	00332$
	ljmp	00136$
00332$:
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0A
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jz	00333$
	ljmp	00136$
00333$:
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0E
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x10
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x12
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jnz	00136$
;	../../../contiki-sensinode//core/net/sicslowpan.c:632: iphc1 |= SICSLOWPAN_IPHC_SAC;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0x40
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:633: iphc1 |= SICSLOWPAN_IPHC_SAM_00;
	ljmp	00137$
00136$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:634: } else if((context = addr_context_lookup_by_prefix(&UIP_IP_BUF->srcipaddr))
	mov	r5,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r7
	mov	b,r4
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	mov	dptr,#_context
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jnz	00340$
	ljmp	00133$
00340$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:639: iphc1 |= SICSLOWPAN_IPHC_CID | SICSLOWPAN_IPHC_SAC;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0xC0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:640: RIME_IPHC_BUF[2] |= context->number << 4;
	mov	dptr,#_rime_hdr_len
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	r4
	cjne	r4,#0x00,00341$
	inc	r5
00341$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	swap	a
	anl	a,#0xF0
	orl	ar6,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:644: &UIP_IP_BUF->srcipaddr, &uip_lladdr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:643: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_SAM_BIT,
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,#0x04
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	ljmp	00137$
00133$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:646: } else if(uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr) &&
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
	cjne	r7,#0xFE,00342$
	sjmp	00343$
00342$:
	ljmp	00126$
00343$:
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
	cjne	r7,#0x80,00344$
	sjmp	00345$
00344$:
	ljmp	00126$
00345$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:647: UIP_IP_BUF->destipaddr.u16[1] == 0 &&
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
	jnz	00126$
;	../../../contiki-sensinode//core/net/sicslowpan.c:648: UIP_IP_BUF->destipaddr.u16[2] == 0 &&
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
	jnz	00126$
;	../../../contiki-sensinode//core/net/sicslowpan.c:649: UIP_IP_BUF->destipaddr.u16[3] == 0) {
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
	jnz	00126$
;	../../../contiki-sensinode//core/net/sicslowpan.c:651: &UIP_IP_BUF->srcipaddr, &uip_lladdr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:650: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_SAM_BIT,
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,#0x04
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	sjmp	00137$
00126$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:655: memcpy(hc06_ptr, &UIP_IP_BUF->srcipaddr.u16[0], 16);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:656: hc06_ptr += 16;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x10
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00137$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:660: if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
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
	cjne	r7,#0xFF,00349$
	sjmp	00350$
00349$:
	ljmp	00181$
00350$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:662: iphc1 |= SICSLOWPAN_IPHC_M;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0x08
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:663: if(sicslowpan_is_mcast_addr_compressable8(&UIP_IP_BUF->destipaddr)) {
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
	cjne	r7,#0x02,00351$
	sjmp	00352$
00351$:
	ljmp	00161$
00352$:
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
	jz	00353$
	ljmp	00161$
00353$:
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
	jz	00354$
	ljmp	00161$
00354$:
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
	jz	00355$
	ljmp	00161$
00355$:
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
	jnz	00161$
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
	jnz	00161$
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
	jnz	00161$
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
	jnz	00161$
;	../../../contiki-sensinode//core/net/sicslowpan.c:664: iphc1 |= SICSLOWPAN_IPHC_DAM_11;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0x03
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:666: *hc06_ptr = UIP_IP_BUF->destipaddr.u8[15];
	mov	dptr,#_hc06_ptr
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
	mov	a,#0x27
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:667: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00182$
00161$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:668: } else if(sicslowpan_is_mcast_addr_compressable32(&UIP_IP_BUF->destipaddr)) {
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
	jz	00360$
	ljmp	00153$
00360$:
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
	jz	00361$
	ljmp	00153$
00361$:
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
	jz	00362$
	ljmp	00153$
00362$:
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
	jz	00363$
	ljmp	00153$
00363$:
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
	jz	00364$
	ljmp	00153$
00364$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x24
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00365$
	ljmp	00153$
00365$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:669: iphc1 |= SICSLOWPAN_IPHC_DAM_10;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:671: *hc06_ptr = UIP_IP_BUF->destipaddr.u8[1];
	mov	dptr,#_hc06_ptr
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
	mov	a,#0x19
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:672: memcpy(hc06_ptr + 1, &UIP_IP_BUF->destipaddr.u8[13], 3);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x25
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	inc	r5
	cjne	r5,#0x00,00366$
	inc	r6
00366$:
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:673: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00182$
00153$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:674: } else if(sicslowpan_is_mcast_addr_compressable48(&UIP_IP_BUF->destipaddr)) {
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
	jz	00367$
	ljmp	00146$
00367$:
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
	jz	00368$
	ljmp	00146$
00368$:
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
	jz	00369$
	ljmp	00146$
00369$:
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
	jz	00370$
	ljmp	00146$
00370$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x22
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jz	00371$
	ljmp	00146$
00371$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:675: iphc1 |= SICSLOWPAN_IPHC_DAM_01;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:677: *hc06_ptr = UIP_IP_BUF->destipaddr.u8[1];
	mov	dptr,#_hc06_ptr
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
	mov	a,#0x19
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:678: memcpy(hc06_ptr + 1, &UIP_IP_BUF->destipaddr.u8[11], 5);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x23
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	inc	r5
	cjne	r5,#0x00,00372$
	inc	r6
00372$:
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:679: hc06_ptr += 6;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x06
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00182$
00146$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:683: memcpy(hc06_ptr, &UIP_IP_BUF->destipaddr.u8[0], 16);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:684: hc06_ptr += 16;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x10
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00182$
00181$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:688: if((context = addr_context_lookup_by_prefix(&UIP_IP_BUF->destipaddr)) != NULL) {
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
	mov	r0,#_addr_context_lookup_by_prefix
	mov	r1,#(_addr_context_lookup_by_prefix >> 8)
	mov	r2,#(_addr_context_lookup_by_prefix >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_context
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	orl	a,r6
	jnz	00373$
	ljmp	00178$
00373$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:690: iphc1 |= SICSLOWPAN_IPHC_DAC;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	orl	a,#0x04
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:691: RIME_IPHC_BUF[2] |= context->number;
	mov	dptr,#_rime_hdr_len
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00374$
	inc	r6
00374$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	orl	ar4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:695: &UIP_IP_BUF->destipaddr, (uip_lladdr_t *)rime_destaddr);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:694: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_DAM_BIT,
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,#0x00
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	ljmp	00182$
00178$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:697: } else if(uip_is_addr_link_local(&UIP_IP_BUF->destipaddr) &&
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
	cjne	r7,#0xFE,00375$
	sjmp	00376$
00375$:
	ljmp	00171$
00376$:
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
	cjne	r7,#0x80,00377$
	sjmp	00378$
00377$:
	ljmp	00171$
00378$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:698: UIP_IP_BUF->destipaddr.u16[1] == 0 &&
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
	jnz	00171$
;	../../../contiki-sensinode//core/net/sicslowpan.c:699: UIP_IP_BUF->destipaddr.u16[2] == 0 &&
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
	jnz	00171$
;	../../../contiki-sensinode//core/net/sicslowpan.c:700: UIP_IP_BUF->destipaddr.u16[3] == 0) {
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
	jnz	00171$
;	../../../contiki-sensinode//core/net/sicslowpan.c:702: &UIP_IP_BUF->destipaddr, (uip_lladdr_t *)rime_destaddr);
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:701: iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_DAM_BIT,
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,#0x00
	mov	r0,#_compress_addr_64
	mov	r1,#(_compress_addr_64 >> 8)
	mov	r2,#(_compress_addr_64 >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,r7
	orl	a,@r0
	mov	@r0,a
	sjmp	00182$
00171$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:706: memcpy(hc06_ptr, &UIP_IP_BUF->destipaddr.u16[0], 16);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:707: hc06_ptr += 16;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x10
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00182$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:711: uncomp_hdr_len = UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x28
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:715: if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00382$
	sjmp	00383$
00382$:
	ljmp	00196$
00383$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:719: if(((UIP_HTONS(UIP_UDP_BUF->srcport) & 0xfff0) == SICSLOWPAN_UDP_4_BIT_PORT_MIN) &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	anl	ar6,#0xF0
	cjne	r6,#0xB0,00384$
	cjne	r7,#0xF0,00384$
	sjmp	00385$
00384$:
	ljmp	00190$
00385$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:720: ((UIP_HTONS(UIP_UDP_BUF->destport) & 0xfff0) == SICSLOWPAN_UDP_4_BIT_PORT_MIN)) {
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
	mov	ar7,r6
	mov	r6,#0x00
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	anl	ar6,#0xF0
	cjne	r6,#0xB0,00386$
	cjne	r7,#0xF0,00386$
	sjmp	00387$
00386$:
	ljmp	00190$
00387$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:722: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_11;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF3
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:724: *(hc06_ptr + 1) =
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:725: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,r2
	add	a,#0x50
	mov	r2,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r2
	swap	a
	anl	a,#0xF0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:727: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) -
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,sp
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,r3
	add	a,#0x50
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	add	a,@r0
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:729: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00193$
00190$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:730: } else if((UIP_HTONS(UIP_UDP_BUF->destport) & 0xff00) == SICSLOWPAN_UDP_8_BIT_PORT_MIN) {
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
	mov	ar7,r6
	mov	r6,#0x00
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	r6,#0x00
	cjne	r6,#0x00,00388$
	cjne	r7,#0xF0,00388$
	sjmp	00389$
00388$:
	ljmp	00187$
00389$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:732: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_01;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF1
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:734: memcpy(hc06_ptr + 1, &UIP_UDP_BUF->srcport, 2);
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	r2,#0x00
	inc	r5
	cjne	r5,#0x00,00390$
	inc	r6
00390$:
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:735: *(hc06_ptr + 3) =
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:736: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) -
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,sp
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:738: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00193$
00187$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:739: } else if((UIP_HTONS(UIP_UDP_BUF->srcport) & 0xff00) == SICSLOWPAN_UDP_8_BIT_PORT_MIN) {
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r6
	mov	r6,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	r6,#0x00
	cjne	r6,#0x00,00391$
	cjne	r7,#0xF0,00391$
	sjmp	00392$
00391$:
	ljmp	00184$
00392$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:741: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_10;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF2
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:743: *(hc06_ptr + 1) =
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:744: (uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,sp
	mov	@r0,ar3
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:746: memcpy(hc06_ptr + 2, &UIP_UDP_BUF->destport, 2);
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:747: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00193$
00184$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:750: *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_00;
	mov	dptr,#_hc06_ptr
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
	mov	a,#0xF0
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:752: memcpy(hc06_ptr + 1, &UIP_UDP_BUF->srcport, 4);
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	r2,#0x00
	inc	r5
	cjne	r5,#0x00,00393$
	inc	r6
00393$:
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:753: hc06_ptr += 5;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x05
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:756: if(1) {
00193$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:757: memcpy(hc06_ptr, &UIP_UDP_BUF->udpchksum, 2);
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:758: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:760: uncomp_hdr_len += UIP_UDPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x08
	add	a,r7
	movx	@dptr,a
00196$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:770: RIME_IPHC_BUF[0] = iphc0;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar2,r6
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:771: RIME_IPHC_BUF[1] = iphc1;
	inc	r7
	cjne	r7,#0x00,00394$
	inc	r3
00394$:
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:773: rime_hdr_len = hc06_ptr - rime_ptr;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	mov	dptr,#_rime_hdr_len
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:774: return;
	mov	a,sp
	add	a,#0xF2
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uncompress_hdr_hc06'
;------------------------------------------------------------
;ip_len                    Allocated to stack - sp -16
;tmp                       Allocated to stack - sp -14
;iphc0                     Allocated to stack - sp -13
;iphc1                     Allocated to stack - sp -12
;sci                       Allocated to registers r6 
;prefix                    Allocated to stack - sp -11
;dci                       Allocated to registers r7 
;checksum_compressed       Allocated to registers r3 
;sloc0                     Allocated to stack - sp -9
;sloc1                     Allocated to stack - sp -7
;sloc2                     Allocated to stack - sp -4
;sloc3                     Allocated to stack - sp -1
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:794: uncompress_hdr_hc06(uint16_t ip_len)
;	-----------------------------------------
;	 function uncompress_hdr_hc06
;	-----------------------------------------
_uncompress_hdr_hc06:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0F
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:798: hc06_ptr = rime_ptr + rime_hdr_len + 2;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:800: iphc0 = RIME_IPHC_BUF[0];
	mov	dpl,r5
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,ar2
;	../../../contiki-sensinode//core/net/sicslowpan.c:801: iphc1 = RIME_IPHC_BUF[1];
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar2
;	../../../contiki-sensinode//core/net/sicslowpan.c:804: if(iphc1 & SICSLOWPAN_IPHC_CID) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00102$
;	../../../contiki-sensinode//core/net/sicslowpan.c:806: hc06_ptr++;
	mov	dptr,#_hc06_ptr
	mov	a,#0x03
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:810: if((iphc0 & SICSLOWPAN_IPHC_FL_C) == 0) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	jnb	acc.4,00218$
	ljmp	00110$
00218$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:812: if((iphc0 & SICSLOWPAN_IPHC_TC_C) == 0) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	jnb	acc.3,00219$
	ljmp	00104$
00219$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:814: memcpy(&SICSLOWPAN_IP_BUF->tcflow, hc06_ptr + 1, 3);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	r4
	cjne	r4,#0x00,00220$
	inc	r5
00220$:
	mov	r2,#_sicslowpan_aligned_buf
	mov	r3,#(_sicslowpan_aligned_buf >> 8)
	inc	r2
	cjne	r2,#0x00,00221$
	inc	r3
00221$:
	mov	r7,#0x00
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:815: tmp = *hc06_ptr;
	mov	dptr,#_hc06_ptr
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
	mov	r4,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar4
;	../../../contiki-sensinode//core/net/sicslowpan.c:816: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:819: SICSLOWPAN_IP_BUF->vtc = 0x60 | ((tmp >> 2) & 0x0f);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r7,a
	mov	a,#0x0F
	anl	a,r7
	orl	a,#0x60
	mov	dptr,#_sicslowpan_aligned_buf
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:821: SICSLOWPAN_IP_BUF->tcflow = ((tmp >> 2) & 0x30) | (tmp << 6) |
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	inc	r5
	cjne	r5,#0x00,00222$
	inc	r6
00222$:
	anl	ar7,#0x30
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0xC0
	orl	ar7,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:822: (SICSLOWPAN_IP_BUF->tcflow & 0x0f);
	mov	r3,#_sicslowpan_aligned_buf
	mov	r4,#(_sicslowpan_aligned_buf >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	anl	a,#0x0F
	mov	r4,a
	orl	ar7,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	ljmp	00111$
00104$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:825: SICSLOWPAN_IP_BUF->vtc = 0x60;
	mov	dptr,#_sicslowpan_aligned_buf
	mov	a,#0x60
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:827: SICSLOWPAN_IP_BUF->tcflow = (*hc06_ptr & 0x0F) |
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0F
	anl	a,r7
	mov	r6,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:828: ((*hc06_ptr >> 2) & 0x30);
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r7,a
	mov	a,#0x30
	anl	a,r7
	orl	ar6,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r6
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:829: memcpy(&SICSLOWPAN_IP_BUF->flow, hc06_ptr + 1, 2);
	inc	r2
	cjne	r2,#0x00,00223$
	inc	r3
00223$:
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:830: hc06_ptr += 3;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x03
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00111$
00110$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:835: if((iphc0 & SICSLOWPAN_IPHC_TC_C) == 0) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	jb	acc.3,00107$
;	../../../contiki-sensinode//core/net/sicslowpan.c:837: SICSLOWPAN_IP_BUF->vtc = 0x60 | ((*hc06_ptr >> 2) & 0x0f);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0x3F
	mov	@r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x0F
	anl	a,@r0
	orl	a,#0x60
	mov	dptr,#_sicslowpan_aligned_buf
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:838: SICSLOWPAN_IP_BUF->tcflow = ((*hc06_ptr << 6) & 0xC0) | ((*hc06_ptr >> 2) & 0x30);
	mov	r2,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	dpl,r2
	mov	dph,r7
	inc	dptr
	mov	a,r3
	rr	a
	rr	a
	anl	a,#0xC0
	mov	r3,a
	anl	ar3,#0xC0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x30
	anl	a,@r0
	orl	ar3,a
	mov	a,r3
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:839: SICSLOWPAN_IP_BUF->flow = 0;
	mov	r3,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	dpl,r3
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:840: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	sjmp	00111$
00107$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:843: SICSLOWPAN_IP_BUF->vtc = 0x60;
	mov	dptr,#_sicslowpan_aligned_buf
	mov	a,#0x60
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:844: SICSLOWPAN_IP_BUF->tcflow = 0;
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:845: SICSLOWPAN_IP_BUF->flow = 0;
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00111$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:850: if((iphc0 & SICSLOWPAN_IPHC_NH_C) == 0) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	jb	acc.2,00113$
;	../../../contiki-sensinode//core/net/sicslowpan.c:852: SICSLOWPAN_IP_BUF->proto = *hc06_ptr;
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:854: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1028: return;
;	../../../contiki-sensinode//core/net/sicslowpan.c:854: hc06_ptr += 1;
00113$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:858: if((iphc0 & 0x03) != SICSLOWPAN_IPHC_TTL_I) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	anl	a,#0x03
	jz	00115$
;	../../../contiki-sensinode//core/net/sicslowpan.c:859: SICSLOWPAN_IP_BUF->ttl = ttl_values[iphc0 & 0x03];
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,#0x03
	anl	a,@r0
	mov	dptr,#_ttl_values
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
	sjmp	00116$
00115$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:861: SICSLOWPAN_IP_BUF->ttl = *hc06_ptr;
	mov	r5,#_sicslowpan_aligned_buf
	mov	r6,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:862: hc06_ptr += 1;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1028: return;
;	../../../contiki-sensinode//core/net/sicslowpan.c:862: hc06_ptr += 1;
00116$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:866: tmp = ((iphc1 & SICSLOWPAN_IPHC_SAM_11) >> SICSLOWPAN_IPHC_SAM_BIT) & 0x03;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x30
	anl	a,@r0
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x03
	anl	a,r6
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:869: if(iphc1 & SICSLOWPAN_IPHC_SAC) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jb	acc.6,00227$
	ljmp	00122$
00227$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:870: uint8_t sci = (iphc1 & SICSLOWPAN_IPHC_CID) ?
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00157$
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	swap	a
	anl	a,#0x0F
	mov	r6,a
	sjmp	00158$
00157$:
	mov	r6,#0x00
00158$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:874: if (tmp != 0) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	jz	00120$
;	../../../contiki-sensinode//core/net/sicslowpan.c:875: context = addr_context_lookup_by_number(sci);
	mov	dpl,r6
	mov	r0,#_addr_context_lookup_by_number
	mov	r1,#(_addr_context_lookup_by_number >> 8)
	mov	r2,#(_addr_context_lookup_by_number >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	dptr,#_context
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:876: if(context == NULL) {
	mov	a,r4
	orl	a,r5
	jnz	00120$
;	../../../contiki-sensinode//core/net/sicslowpan.c:878: return;
	ljmp	00155$
00120$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:884: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:883: tmp != 0 ? context->prefix : NULL, unc_ctxconf[tmp],
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	add	a,#_unc_ctxconf
	mov	dpl,a
	clr	a
	addc	a,#(_unc_ctxconf >> 8)
	mov	dph,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	jz	00159$
	mov	dptr,#_context
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	sjmp	00160$
00159$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
00160$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:882: uncompress_addr(&SICSLOWPAN_IP_BUF->srcipaddr,
	mov	r2,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	r7,#0x00
	push	ar4
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00123$
00122$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:888: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:887: uncompress_addr(&SICSLOWPAN_IP_BUF->srcipaddr, llprefix, unc_llconf[tmp],
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	add	a,#_unc_llconf
	mov	dpl,a
	clr	a
	addc	a,#(_unc_llconf >> 8)
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	mov	r2,#_sicslowpan_aligned_buf
	mov	r3,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r4,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,#_llprefix
	push	acc
	mov	a,#(_llprefix >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00123$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:893: tmp = ((iphc1 & SICSLOWPAN_IPHC_DAM_11) >> SICSLOWPAN_IPHC_DAM_BIT) & 0x03;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x03
	anl	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x03
	anl	a,r7
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:896: if(iphc1 & SICSLOWPAN_IPHC_M) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jb	acc.3,00232$
	ljmp	00136$
00232$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:898: if(iphc1 & SICSLOWPAN_IPHC_DAC) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jnb	acc.2,00233$
	ljmp	00137$
00233$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:906: uint8_t prefix[] = {0xff, 0x02};
	mov	a,sp
	add	a,#0xF5
	mov	r1,a
	mov	@r1,#0xFF
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x02
;	../../../contiki-sensinode//core/net/sicslowpan.c:907: if(tmp > 0 && tmp < 3) {
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	pop	ar0
	jz	00125$
	push	ar0
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	cjne	@r0,#0x03,00235$
00235$:
	pop	ar0
	jnc	00125$
;	../../../contiki-sensinode//core/net/sicslowpan.c:908: prefix[1] = *hc06_ptr;
	mov	dptr,#_hc06_ptr
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
	mov	r4,a
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:909: hc06_ptr++;
	mov	dptr,#_hc06_ptr
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00125$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:913: unc_mxconf[tmp], NULL);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	add	a,#_unc_mxconf
	mov	dpl,a
	clr	a
	addc	a,#(_unc_mxconf >> 8)
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:912: uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, prefix,
	mov	ar6,r1
	mov	r5,#0x00
	mov	r4,#0x40
	mov	r2,#_sicslowpan_aligned_buf
	mov	r3,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	mov	r7,a
	push	acc
	push	acc
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ljmp	00137$
00136$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:918: if(iphc1 & SICSLOWPAN_IPHC_DAC) {
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jb	acc.2,00237$
	ljmp	00133$
00237$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:919: uint8_t dci = (iphc1 & SICSLOWPAN_IPHC_CID) ?
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	jnb	acc.7,00161$
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar2,r6
	mov	a,#0x02
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x0F
	sjmp	00162$
00161$:
	mov	r7,#0x00
00162$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:921: context = addr_context_lookup_by_number(dci);
	mov	dpl,r7
	mov	r0,#_addr_context_lookup_by_number
	mov	r1,#(_addr_context_lookup_by_number >> 8)
	mov	r2,#(_addr_context_lookup_by_number >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_context
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:924: if(context == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00131$
;	../../../contiki-sensinode//core/net/sicslowpan.c:926: return;
	ljmp	00155$
00131$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:930: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:929: unc_ctxconf[tmp],
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	add	a,#_unc_ctxconf
	mov	dpl,a
	clr	a
	addc	a,#(_unc_ctxconf >> 8)
	mov	dph,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:928: uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, context->prefix,
	mov	dptr,#_context
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	r3,#_sicslowpan_aligned_buf
	mov	r4,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00137$
00133$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:935: (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:934: unc_llconf[tmp],
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	add	a,#_unc_llconf
	mov	dpl,a
	clr	a
	addc	a,#(_unc_llconf >> 8)
	mov	dph,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:933: uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, llprefix,
	mov	r2,#_sicslowpan_aligned_buf
	mov	r3,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r4,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,#_llprefix
	push	acc
	mov	a,#(_llprefix >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_uncompress_addr
	mov	r1,#(_uncompress_addr >> 8)
	mov	r2,#(_uncompress_addr >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00137$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:938: uncomp_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x28
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:941: if((iphc0 & SICSLOWPAN_IPHC_NH_C)) {
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	jb	acc.2,00240$
	ljmp	00149$
00240$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:943: if((*hc06_ptr & SICSLOWPAN_NHC_UDP_MASK) == SICSLOWPAN_NHC_UDP_ID) {
	mov	dptr,#_hc06_ptr
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
	mov	r4,a
	mov	a,#0xF8
	anl	a,r4
	mov	r3,a
	cjne	r3,#0xF0,00241$
	sjmp	00242$
00241$:
	ljmp	00149$
00242$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:945: SICSLOWPAN_IP_BUF->proto = UIP_PROTO_UDP;
	mov	r2,#_sicslowpan_aligned_buf
	mov	r3,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:946: checksum_compressed = *hc06_ptr & SICSLOWPAN_NHC_UDP_CHECKSUMC;
	mov	a,#0x04
	anl	a,r4
	mov	r3,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:948: switch(*hc06_ptr & SICSLOWPAN_NHC_UDP_CS_P_11) {
	anl	ar4,#0xF3
	cjne	r4,#0xF0,00243$
	sjmp	00138$
00243$:
	cjne	r4,#0xF1,00244$
	ljmp	00139$
00244$:
	cjne	r4,#0xF2,00245$
	ljmp	00140$
00245$:
	cjne	r4,#0xF3,00246$
	ljmp	00141$
00246$:
	ljmp	00142$
;	../../../contiki-sensinode//core/net/sicslowpan.c:949: case SICSLOWPAN_NHC_UDP_CS_P_00:
00138$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:951: memcpy(&SICSLOWPAN_UDP_BUF->srcport, hc06_ptr + 1, 2);
	push	ar3
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	r2,#0x00
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
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
	pop	ar3
;	../../../contiki-sensinode//core/net/sicslowpan.c:952: memcpy(&SICSLOWPAN_UDP_BUF->destport, hc06_ptr + 3, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
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
	pop	ar3
;	../../../contiki-sensinode//core/net/sicslowpan.c:955: hc06_ptr += 5;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x05
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:956: break;
	pop	ar3
	ljmp	00143$
;	../../../contiki-sensinode//core/net/sicslowpan.c:958: case SICSLOWPAN_NHC_UDP_CS_P_01:
00139$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:961: memcpy(&SICSLOWPAN_UDP_BUF->srcport, hc06_ptr + 1, 2);
	push	ar3
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	r2,#0x00
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
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
	pop	ar3
;	../../../contiki-sensinode//core/net/sicslowpan.c:962: SICSLOWPAN_UDP_BUF->destport = UIP_HTONS(SICSLOWPAN_UDP_8_BIT_PORT_MIN + (*(hc06_ptr + 3)));
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	dptr,#_hc06_ptr
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x03
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
	mov	r4,#0x00
	mov	ar5,r2
	mov	a,#0xF0
	add	a,r4
	mov	r4,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar5
	dec	r0
	mov	@r0,#0x00
	mov	ar2,r4
	mov	r4,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dpl,r7
	mov	dph,r6
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:965: hc06_ptr += 4;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,@r0
	movx	@dptr,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:966: break;
	pop	ar3
	ljmp	00143$
;	../../../contiki-sensinode//core/net/sicslowpan.c:968: case SICSLOWPAN_NHC_UDP_CS_P_10:
00140$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:971: SICSLOWPAN_UDP_BUF->srcport = UIP_HTONS(SICSLOWPAN_UDP_8_BIT_PORT_MIN +
	push	ar3
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#(_sicslowpan_aligned_buf + 0x0028)
	inc	r0
	mov	@r0,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x01
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
	mov	r4,#0x00
	mov	a,#0xF0
	add	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	inc	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
	mov	ar2,r4
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:973: memcpy(&SICSLOWPAN_UDP_BUF->destport, hc06_ptr + 2, 2);
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar3
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
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
	pop	ar3
;	../../../contiki-sensinode//core/net/sicslowpan.c:976: hc06_ptr += 4;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:977: break;
	pop	ar3
	ljmp	00143$
;	../../../contiki-sensinode//core/net/sicslowpan.c:979: case SICSLOWPAN_NHC_UDP_CS_P_11:
00141$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:981: SICSLOWPAN_UDP_BUF->srcport = UIP_HTONS(SICSLOWPAN_UDP_4_BIT_PORT_MIN +
	push	ar3
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#(_sicslowpan_aligned_buf + 0x0028)
	inc	r0
	mov	@r0,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x01
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
	swap	a
	anl	a,#0x0F
	mov	r4,a
	mov	r3,#0x00
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0xB0
	add	a,r4
	mov	@r0,a
	mov	a,#0xF0
	addc	a,r3
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r1
	mov	@r1,#0x00
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:983: SICSLOWPAN_UDP_BUF->destport = UIP_HTONS(SICSLOWPAN_UDP_4_BIT_PORT_MIN +
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	mov	a,#0x0F
	anl	a,r2
	mov	r4,a
	mov	r3,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xB0
	add	a,r4
	mov	@r0,a
	mov	a,#0xF0
	addc	a,r3
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r1
	mov	@r1,#0x00
	mov	r0,sp
	dec	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:987: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:988: break;
	pop	ar3
;	../../../contiki-sensinode//core/net/sicslowpan.c:990: default:
	sjmp	00143$
00142$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:992: return;
	ljmp	00155$
;	../../../contiki-sensinode//core/net/sicslowpan.c:993: }
00143$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:994: if(!checksum_compressed) { /* has_checksum, default  */
	mov	a,r3
	jnz	00145$
;	../../../contiki-sensinode//core/net/sicslowpan.c:995: memcpy(&SICSLOWPAN_UDP_BUF->udpchksum, hc06_ptr, 2);
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x02
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:996: hc06_ptr += 2;
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00145$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1001: uncomp_hdr_len += UIP_UDPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x08
	add	a,r7
	movx	@dptr,a
00149$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1010: rime_hdr_len = hc06_ptr - rime_ptr;
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hc06_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r3
	subb	a,r6
	mov	r6,a
	mov	dptr,#_rime_hdr_len
	mov	a,r5
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1013: if(ip_len == 0) {
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00151$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1015: SICSLOWPAN_IP_BUF->len[0] = 0;
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1016: SICSLOWPAN_IP_BUF->len[1] = packetbuf_datalen() - rime_hdr_len + uncomp_hdr_len - UIP_IPH_LEN;
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar7
	push	ar6
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r5
	mov	r4,a
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	add	a,r4
	add	a,#0xD8
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	sjmp	00152$
00151$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1019: SICSLOWPAN_IP_BUF->len[0] = (ip_len - UIP_IPH_LEN) >> 8;
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	add	a,#0xD8
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1020: SICSLOWPAN_IP_BUF->len[1] = (ip_len - UIP_IPH_LEN) & 0x00FF;
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	add	a,#0xD8
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
00152$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1024: if(SICSLOWPAN_IP_BUF->proto == UIP_PROTO_UDP) {
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00154$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1025: memcpy(&SICSLOWPAN_UDP_BUF->udplen, &SICSLOWPAN_IP_BUF->len[0], 2);
	mov	r6,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#(_sicslowpan_aligned_buf + 0x0028)
	mov	r4,#((_sicslowpan_aligned_buf + 0x0028) >> 8)
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
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
00154$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1028: return;
00155$:
	mov	a,sp
	add	a,#0xEF
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compress_hdr_ipv6'
;------------------------------------------------------------
;rime_destaddr             Allocated to registers 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:1297: compress_hdr_ipv6(rimeaddr_t *rime_destaddr)
;	-----------------------------------------
;	 function compress_hdr_ipv6
;	-----------------------------------------
_compress_hdr_ipv6:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1299: *rime_ptr = SICSLOWPAN_DISPATCH_IPV6;
	mov	dptr,#_rime_ptr
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
	mov	a,#0x41
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:1300: rime_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	dptr,#_rime_hdr_len
	inc	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1301: memcpy(rime_ptr + rime_hdr_len, UIP_IP_BUF, UIP_IPH_LEN);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	r2,#0x00
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1302: rime_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rime_hdr_len
	mov	a,#0x28
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1303: uncomp_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x28
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1304: return;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - sp -4
;transmissions             Allocated to stack - sp -6
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:1316: packet_sent(void *ptr, int status, int transmissions)
;	-----------------------------------------
;	 function packet_sent
;	-----------------------------------------
_packet_sent:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1319: neighbor_info_packet_sent(status, transmissions);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	r0,#_neighbor_info_packet_sent
	mov	r1,#(_neighbor_info_packet_sent >> 8)
	mov	r2,#(_neighbor_info_packet_sent >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	../../../contiki-sensinode//core/net/sicslowpan.c:1321: if(callback != NULL) {
	mov	dptr,#_callback
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1322: callback->output_callback(status);
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1324: last_tx_status = status;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dptr,#_last_tx_status
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;dest                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:1333: send_packet(rimeaddr_t *dest)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:1339: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, dest);
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x19
	mov	r0,#_packetbuf_set_addr
	mov	r1,#(_packetbuf_set_addr >> 8)
	mov	r2,#(_packetbuf_set_addr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../contiki-sensinode//core/net/sicslowpan.c:1348: NETSTACK_MAC.send(&packet_sent, NULL);
	mov	dptr,#(_csma_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packet_sent
	mov	b,#(_packet_sent >> 16)
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:1352: watchdog_periodic();
	mov	r0,#_watchdog_periodic
	mov	r1,#(_watchdog_periodic >> 8)
	mov	r2,#(_watchdog_periodic >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output'
;------------------------------------------------------------
;localdest                 Allocated to registers r5 r6 r7 
;q                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -7
;sloc1                     Allocated to stack - sp -5
;sloc2                     Allocated to stack - sp -2
;dest                      Allocated with name '_output_dest_1_1'
;processed_ip_out_len      Allocated with name '_output_processed_ip_out_len_1_1'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:1365: output(uip_lladdr_t *localdest)
;	-----------------------------------------
;	 function output
;	-----------------------------------------
_output:
	mov	a,sp
	add	a,#0x08
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:1376: uncomp_hdr_len = 0;
	mov	dptr,#_uncomp_hdr_len
;	../../../contiki-sensinode//core/net/sicslowpan.c:1377: rime_hdr_len = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_rime_hdr_len
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1380: packetbuf_clear();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_packetbuf_clear
	mov	r1,#(_packetbuf_clear >> 8)
	mov	r2,#(_packetbuf_clear >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1381: rime_ptr = packetbuf_dataptr();
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	dptr,#_rime_ptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1383: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS,
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x09
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:1386: if(callback) {
	mov	dptr,#_callback
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00102$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1389: set_packet_attrs();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_set_packet_attrs
	mov	r1,#(_set_packet_attrs >> 8)
	mov	r2,#(_set_packet_attrs >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1396: if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00107$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1397: (UIP_TCP_BUF->flags & TCP_FIN) == 0 &&
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jb	acc.0,00107$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1398: (UIP_TCP_BUF->flags & TCP_CTL) != TCP_ACK) {
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x3F
	cjne	r4,#0x10,00186$
	sjmp	00107$
00186$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1399: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE,
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00108$
00107$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1401: } else if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x06,00108$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1402: (UIP_TCP_BUF->flags & TCP_FIN) == TCP_FIN) {
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x01
	cjne	r4,#0x01,00108$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1403: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE,
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0E
	mov	r0,#_packetbuf_set_attr
	mov	r1,#(_packetbuf_set_attr >> 8)
	mov	r2,#(_packetbuf_set_attr >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1412: if(localdest == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00112$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1413: rimeaddr_copy(&dest, &rimeaddr_null);
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_output_dest_1_1
	mov	b,#0x00
	mov	r0,#_rimeaddr_copy
	mov	r1,#(_rimeaddr_copy >> 8)
	mov	r2,#(_rimeaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	sjmp	00114$
00112$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1415: rimeaddr_copy(&dest, (const rimeaddr_t *)localdest);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_output_dest_1_1
	mov	b,#0x00
	mov	r0,#_rimeaddr_copy
	mov	r1,#(_rimeaddr_copy >> 8)
	mov	r2,#(_rimeaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../contiki-sensinode//core/net/sicslowpan.c:1420: if(uip_len >= COMPRESSION_THRESHOLD) {
00114$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1429: compress_hdr_hc06(&dest);
	mov	dptr,#_output_dest_1_1
	mov	b,#0x00
	mov	r0,#_compress_hdr_hc06
	mov	r1,#(_compress_hdr_hc06 >> 8)
	mov	r2,#(_compress_hdr_hc06 >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1436: if(uip_len - uncomp_hdr_len > MAC_MAX_PAYLOAD - rime_hdr_len) {
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r7
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	r3,a
	mov	r4,#0x00
	mov	a,#0x66
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jc	00192$
	ljmp	00144$
00192$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1453: memmove(rime_ptr + SICSLOWPAN_FRAG1_HDR_LEN, rime_ptr, rime_hdr_len);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r3
	mov	ar6,r4
	mov	ar7,r5
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_memmove
	mov	r1,#(_memmove >> 8)
	mov	r2,#(_memmove >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1461: SET16(RIME_FRAG_PTR, RIME_FRAG_DISPATCH_SIZE,
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	ar4,#0xC0
	mov	ar2,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:1464: SET16(RIME_FRAG_PTR, RIME_FRAG_TAG, my_tag);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	dptr,#_my_tag
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:1465: my_tag++;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_my_tag
	mov	a,#0x01
	add	a,@r0
	movx	@dptr,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1468: rime_hdr_len += SICSLOWPAN_FRAG1_HDR_LEN;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rime_hdr_len
	mov	a,#0x04
	add	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1469: rime_payload_len = (MAC_MAX_PAYLOAD - rime_hdr_len) & 0xf8;
	mov	dptr,#_rime_hdr_len
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x66
	clr	c
	subb	a,@r0
	anl	a,#0xF8
	mov	r3,a
	mov	dptr,#_rime_payload_len
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1472: (uint8_t *)UIP_IP_BUF + uncomp_hdr_len, rime_payload_len);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	add	a,#_uip_aligned_buf
	mov	r2,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r3,a
	mov	r4,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:1471: memcpy(rime_ptr + rime_hdr_len,
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1473: packetbuf_set_datalen(rime_payload_len + rime_hdr_len);
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	r0,#_packetbuf_set_datalen
	mov	r1,#(_packetbuf_set_datalen >> 8)
	mov	r2,#(_packetbuf_set_datalen >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1474: q = queuebuf_new_from_packetbuf();
	mov	r0,#_queuebuf_new_from_packetbuf
	mov	r1,#(_queuebuf_new_from_packetbuf >> 8)
	mov	r2,#(_queuebuf_new_from_packetbuf >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/net/sicslowpan.c:1475: if(q == NULL) {
	mov	a,r5
	orl	a,r6
;	../../../contiki-sensinode//core/net/sicslowpan.c:1477: return 0;
	jnz	00124$
	mov	dpl,a
	ljmp	00146$
00124$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1479: send_packet(&dest);
	mov	dptr,#_output_dest_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_send_packet
	mov	r1,#(_send_packet >> 8)
	mov	r2,#(_send_packet >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:1480: queuebuf_to_packetbuf(q);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_queuebuf_to_packetbuf
	mov	r1,#(_queuebuf_to_packetbuf >> 8)
	mov	r2,#(_queuebuf_to_packetbuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:1481: queuebuf_free(q);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_queuebuf_free
	mov	r1,#(_queuebuf_free >> 8)
	mov	r2,#(_queuebuf_free >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1485: if((last_tx_status == MAC_TX_COLLISION) ||
	mov	dptr,#_last_tx_status
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0x01,00194$
	cjne	r4,#0x00,00194$
	sjmp	00125$
00194$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1486: (last_tx_status == MAC_TX_ERR) ||
	cjne	r3,#0x04,00195$
	cjne	r4,#0x00,00195$
	sjmp	00125$
00195$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1487: (last_tx_status == MAC_TX_ERR_FATAL)) {
	cjne	r3,#0x05,00126$
	cjne	r4,#0x00,00126$
00125$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1489: return 0;
	mov	dpl,#0x00
	ljmp	00146$
00126$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1493: processed_ip_out_len = rime_payload_len + uncomp_hdr_len;
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r2,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	dptr,#_output_processed_ip_out_len_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1500: rime_hdr_len = SICSLOWPAN_FRAGN_HDR_LEN;
	mov	dptr,#_rime_hdr_len
	mov	a,#0x05
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1503: SET16(RIME_FRAG_PTR, RIME_FRAG_DISPATCH_SIZE,
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	ar4,#0xE0
	mov	ar2,r4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	r7
	cjne	r7,#0x00,00198$
	inc	r6
00198$:
	mov	r4,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:1505: rime_payload_len = (MAC_MAX_PAYLOAD - rime_hdr_len) & 0xf8;
	mov	dptr,#_rime_payload_len
	mov	a,#0x60
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1506: while(processed_ip_out_len < uip_len) {
00140$:
	mov	dptr,#_output_processed_ip_out_len_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_uip_len
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	jc	00199$
	ljmp	00145$
00199$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1508: RIME_FRAG_PTR[RIME_FRAG_OFFSET] = processed_ip_out_len >> 3;
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	ar3,r7
	mov	a,r6
	swap	a
	rl	a
	xch	a,r3
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r3
	xch	a,r3
	anl	a,#0x1F
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../../contiki-sensinode//core/net/sicslowpan.c:1511: if(uip_len - processed_ip_out_len < rime_payload_len) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r3,a
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r3
	subb	a,r4
	jnc	00133$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1513: rime_payload_len = uip_len - processed_ip_out_len;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	mov	ar3,r7
	mov	dptr,#_rime_payload_len
	mov	a,r4
	clr	c
	subb	a,r3
	movx	@dptr,a
00133$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1518: (uint8_t *)UIP_IP_BUF + processed_ip_out_len, rime_payload_len);
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_output_processed_ip_out_len_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	add	a,#_uip_aligned_buf
	mov	r2,a
	mov	a,r4
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	r3,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	../../../contiki-sensinode//core/net/sicslowpan.c:1517: memcpy(rime_ptr + rime_hdr_len,
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
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
;	../../../contiki-sensinode//core/net/sicslowpan.c:1519: packetbuf_set_datalen(rime_payload_len + rime_hdr_len);
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r2,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	r0,#_packetbuf_set_datalen
	mov	r1,#(_packetbuf_set_datalen >> 8)
	mov	r2,#(_packetbuf_set_datalen >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1520: q = queuebuf_new_from_packetbuf();
	mov	r0,#_queuebuf_new_from_packetbuf
	mov	r1,#(_queuebuf_new_from_packetbuf >> 8)
	mov	r2,#(_queuebuf_new_from_packetbuf >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	../../../contiki-sensinode//core/net/sicslowpan.c:1521: if(q == NULL) {
	mov	a,r5
	orl	a,r6
;	../../../contiki-sensinode//core/net/sicslowpan.c:1523: return 0;
	jnz	00135$
	mov	dpl,a
	ljmp	00146$
00135$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1525: send_packet(&dest);
	mov	dptr,#_output_dest_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_send_packet
	mov	r1,#(_send_packet >> 8)
	mov	r2,#(_send_packet >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:1526: queuebuf_to_packetbuf(q);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_queuebuf_to_packetbuf
	mov	r1,#(_queuebuf_to_packetbuf >> 8)
	mov	r2,#(_queuebuf_to_packetbuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/net/sicslowpan.c:1527: queuebuf_free(q);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_queuebuf_free
	mov	r1,#(_queuebuf_free >> 8)
	mov	r2,#(_queuebuf_free >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1529: processed_ip_out_len += rime_payload_len;
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_output_processed_ip_out_len_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dptr,#_output_processed_ip_out_len_1_1
	mov	a,r7
	add	a,r5
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1532: if((last_tx_status == MAC_TX_COLLISION) ||
	mov	dptr,#_last_tx_status
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00202$
	cjne	r7,#0x00,00202$
	sjmp	00136$
00202$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1533: (last_tx_status == MAC_TX_ERR) ||
	cjne	r6,#0x04,00203$
	cjne	r7,#0x00,00203$
	sjmp	00136$
00203$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1534: (last_tx_status == MAC_TX_ERR_FATAL)) {
	cjne	r6,#0x05,00204$
	cjne	r7,#0x00,00204$
	sjmp	00205$
00204$:
	ljmp	00140$
00205$:
00136$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1536: return 0;
	mov	dpl,#0x00
	ljmp	00146$
00144$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1546: dummy();
	mov	r0,#_dummy
	mov	r1,#(_dummy >> 8)
	mov	r2,#(_dummy >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1553: uip_len - uncomp_hdr_len);
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	@r0,a
	mov	a,r6
	subb	a,r4
	inc	r0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1552: memcpy(rime_ptr + rime_hdr_len, (uint8_t *)UIP_IP_BUF + uncomp_hdr_len,
	mov	a,r7
	add	a,#_uip_aligned_buf
	mov	r7,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_rime_hdr_len
	mov	r0,sp
	dec	r0
	dec	r0
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar7
	push	ar4
	push	ar3
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1554: packetbuf_set_datalen(uip_len - uncomp_hdr_len + rime_hdr_len);
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r7
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	r0,#_packetbuf_set_datalen
	mov	r1,#(_packetbuf_set_datalen >> 8)
	mov	r2,#(_packetbuf_set_datalen >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1555: send_packet(&dest);
	mov	dptr,#_output_dest_1_1
	mov	b,#0x00
	mov	r0,#_send_packet
	mov	r1,#(_send_packet >> 8)
	mov	r2,#(_send_packet >> 16)
	lcall	__sdcc_banked_call
00145$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1557: return 1;
	mov	dpl,#0x01
00146$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input'
;------------------------------------------------------------
;frag_size                 Allocated to stack - sp -11
;frag_offset               Allocated to stack - sp -3
;sloc0                     Allocated to stack - sp -9
;sloc1                     Allocated to stack - sp -7
;sloc2                     Allocated to stack - sp -5
;sloc3                     Allocated to stack - sp -3
;sloc4                     Allocated to stack - sp -2
;frag_tag                  Allocated with name '_input_frag_tag_1_1'
;first_fragment            Allocated with name '_input_first_fragment_1_1'
;last_fragment             Allocated with name '_input_last_fragment_1_1'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:1574: input(void)
;	-----------------------------------------
;	 function input
;	-----------------------------------------
_input:
	mov	a,sp
	add	a,#0x0C
;	../../../contiki-sensinode//core/net/sicslowpan.c:1577: uint16_t frag_size = 0;
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1579: uint8_t frag_offset = 0;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:1585: frag_tag = 0;
	mov	dptr,#_input_frag_tag_1_1
;	../../../contiki-sensinode//core/net/sicslowpan.c:1586: first_fragment = 0;
;	../../../contiki-sensinode//core/net/sicslowpan.c:1587: last_fragment = 0;
;	../../../contiki-sensinode//core/net/sicslowpan.c:1591: uncomp_hdr_len = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_input_first_fragment_1_1
	movx	@dptr,a
	mov	dptr,#_input_last_fragment_1_1
	movx	@dptr,a
	mov	dptr,#_uncomp_hdr_len
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1592: rime_hdr_len = 0;
	mov	dptr,#_rime_hdr_len
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1595: rime_ptr = packetbuf_dataptr();
	mov	r0,#_packetbuf_dataptr
	mov	r1,#(_packetbuf_dataptr >> 8)
	mov	r2,#(_packetbuf_dataptr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	dptr,#_rime_ptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1599: if(timer_expired(&reass_timer)) {
	mov	dptr,#_reass_timer
	mov	b,#0x00
	mov	r0,#_timer_expired
	mov	r1,#(_timer_expired >> 8)
	mov	r2,#(_timer_expired >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00102$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1600: sicslowpan_len = 0;
	mov	dptr,#_sicslowpan_len
;	../../../contiki-sensinode//core/net/sicslowpan.c:1601: processed_ip_in_len = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_processed_ip_in_len
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00102$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1607: switch((GET16(RIME_FRAG_PTR, RIME_FRAG_DISPATCH_SIZE) & 0xf800) >> 8) {
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	mov	a,#0x01
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r7,a
	anl	ar7,#0xF8
	mov	ar6,r7
	mov	r7,#0x00
	cjne	r6,#0xC0,00186$
	cjne	r7,#0x00,00186$
	sjmp	00103$
00186$:
	cjne	r6,#0xE0,00187$
	cjne	r7,#0x00,00187$
	ljmp	00104$
00187$:
	ljmp	00108$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1608: case SICSLOWPAN_DISPATCH_FRAG1:
00103$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1610: frag_offset = 0;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../../../contiki-sensinode//core/net/sicslowpan.c:1612: frag_size = GET16(RIME_FRAG_PTR, RIME_FRAG_DISPATCH_SIZE) & 0x07ff;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar6
	mov	a,#0x07
	anl	a,r7
	inc	r0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1614: frag_tag = GET16(RIME_FRAG_PTR, RIME_FRAG_TAG);
	mov	a,#0x02
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
	mov	r7,a
	mov	r5,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	mov	a,#0x03
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
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_input_frag_tag_1_1
	mov	a,r5
	orl	a,@r0
	movx	@dptr,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1617: rime_hdr_len += SICSLOWPAN_FRAG1_HDR_LEN;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rime_hdr_len
	mov	a,#0x04
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1619: first_fragment = 1;
	mov	dptr,#_input_first_fragment_1_1
	mov	a,#0x01
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1620: break;
	ljmp	00108$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1621: case SICSLOWPAN_DISPATCH_FRAGN:
00104$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1627: frag_offset = RIME_FRAG_PTR[RIME_FRAG_OFFSET];
	mov	a,#0x04
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
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar5
;	../../../contiki-sensinode//core/net/sicslowpan.c:1628: frag_tag = GET16(RIME_FRAG_PTR, RIME_FRAG_TAG);
	mov	a,#0x02
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
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r6,#0x00
	mov	dptr,#_input_frag_tag_1_1
	mov	a,r2
	orl	a,r5
	movx	@dptr,a
	mov	a,r6
	orl	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1629: frag_size = GET16(RIME_FRAG_PTR, RIME_FRAG_DISPATCH_SIZE) & 0x07ff;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar6
	mov	a,#0x07
	anl	a,r7
	inc	r0
	mov	@r0,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1632: rime_hdr_len += SICSLOWPAN_FRAGN_HDR_LEN;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rime_hdr_len
	mov	a,#0x05
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1639: if(processed_ip_in_len + packetbuf_datalen() - rime_hdr_len >= frag_size) {
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_processed_ip_in_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r6,a
	mov	a,r7
	addc	a,r5
	mov	r7,a
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jc	00108$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1640: last_fragment = 1;
	mov	dptr,#_input_last_fragment_1_1
	mov	a,#0x01
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1645: }
00108$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1647: if(processed_ip_in_len > 0) {
	mov	dptr,#_processed_ip_in_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00189$
	ljmp	00119$
00189$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1650: if((frag_size > 0 &&
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00114$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1651: (frag_size != sicslowpan_len ||
	mov	dptr,#_sicslowpan_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00191$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00191$
	sjmp	00192$
00191$:
	sjmp	00109$
00192$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1652: reass_tag  != frag_tag ||
	mov	dptr,#_reass_tag
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_input_frag_tag_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00109$
	mov	a,r7
	cjne	a,ar5,00109$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1653: !rimeaddr_cmp(&frag_sender, packetbuf_addr(PACKETBUF_ADDR_SENDER))))  ||
	mov	dpl,#0x18
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_frag_sender
	mov	b,#0x00
	mov	r0,#_rimeaddr_cmp
	mov	r1,#(_rimeaddr_cmp >> 8)
	mov	r2,#(_rimeaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00109$
00114$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1654: frag_size == 0) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00196$
	ljmp	00120$
00196$:
00109$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1660: return;
	ljmp	00145$
00119$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1667: if((frag_size > 0) && (frag_size <= UIP_BUFSIZE)) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00120$
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	clr	c
	mov	a,#0x4F
	subb	a,@r0
	mov	a,#0x01
	inc	r0
	subb	a,@r0
	jc	00120$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1668: sicslowpan_len = frag_size;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dptr,#_sicslowpan_len
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1669: reass_tag = frag_tag;
	mov	dptr,#_input_frag_tag_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_reass_tag
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1670: timer_set(&reass_timer, SICSLOWPAN_REASS_MAXAGE * CLOCK_SECOND / 16);
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	mov	dptr,#_reass_timer
	mov	b,#0x00
	mov	r0,#_timer_set
	mov	r1,#(_timer_set >> 8)
	mov	r2,#(_timer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	../../../contiki-sensinode//core/net/sicslowpan.c:1673: rimeaddr_copy(&frag_sender, packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	mov	r0,#_packetbuf_addr
	mov	r1,#(_packetbuf_addr >> 8)
	mov	r2,#(_packetbuf_addr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_frag_sender
	mov	b,#0x00
	mov	r0,#_rimeaddr_copy
	mov	r1,#(_rimeaddr_copy >> 8)
	mov	r2,#(_rimeaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00120$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1677: if(rime_hdr_len == SICSLOWPAN_FRAGN_HDR_LEN) {
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00199$
	ljmp	00129$
00199$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1682: dummy();
	mov	r0,#_dummy
	mov	r1,#(_dummy >> 8)
	mov	r2,#(_dummy >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1687: if((RIME_HC1_PTR[RIME_HC1_DISPATCH] & 0xe0) == SICSLOWPAN_DISPATCH_IPHC) {
	mov	dptr,#_rime_hdr_len
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	a,#0xE0
	anl	a,r7
	mov	r3,a
	cjne	r3,#0x60,00127$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1689: uncompress_hdr_hc06(frag_size);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	r0,#_uncompress_hdr_hc06
	mov	r1,#(_uncompress_hdr_hc06 >> 8)
	mov	r2,#(_uncompress_hdr_hc06 >> 16)
	lcall	__sdcc_banked_call
	sjmp	00129$
00127$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1692: switch(RIME_HC1_PTR[RIME_HC1_DISPATCH]) {
	cjne	r7,#0x41,00124$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1701: rime_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#_rime_hdr_len
	mov	a,@r0
	inc	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1704: memcpy(SICSLOWPAN_IP_BUF, rime_ptr + rime_hdr_len, UIP_IPH_LEN);
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r3,#_sicslowpan_aligned_buf
	mov	r7,#(_sicslowpan_aligned_buf >> 8)
	mov	r2,#0x00
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r7
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1707: rime_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rime_hdr_len
	mov	a,#0x28
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1708: uncomp_hdr_len += UIP_IPH_LEN;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uncomp_hdr_len
	mov	a,#0x28
	add	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1709: break;
;	../../../contiki-sensinode//core/net/sicslowpan.c:1710: default:
	sjmp	00129$
00124$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1714: return;
	ljmp	00145$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1719: copypayload:
00129$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1728: if(packetbuf_datalen() < rime_hdr_len) {
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jnc	00131$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1730: return;
	ljmp	00145$
00131$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1732: rime_payload_len = packetbuf_datalen() - rime_hdr_len;
	mov	r0,#_packetbuf_datalen
	mov	r1,#(_packetbuf_datalen >> 8)
	mov	r2,#(_packetbuf_datalen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	dptr,#_rime_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	clr	c
	subb	a,r7
	mov	r6,a
	mov	dptr,#_rime_payload_len
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1733: memcpy((uint8_t *)SICSLOWPAN_IP_BUF + uncomp_hdr_len + (uint16_t)(frag_offset << 3), rime_ptr + rime_hdr_len, rime_payload_len);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#_rime_ptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r7
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r7
	add	a,#_sicslowpan_aligned_buf
	mov	@r0,a
	clr	a
	addc	a,#(_sicslowpan_aligned_buf >> 8)
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	clr	a
	rr	a
	anl	a,#0xF8
	xch	a,r6
	swap	a
	rr	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xF8
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	../../../contiki-sensinode//core/net/sicslowpan.c:1738: if(frag_size > 0) {
	mov	sp,a
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00138$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1740: if(first_fragment != 0) {
	mov	dptr,#_input_first_fragment_1_1
	movx	a,@dptr
	mov	r7,a
	jz	00133$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1741: processed_ip_in_len += uncomp_hdr_len;
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_processed_ip_in_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dptr,#_processed_ip_in_len
	mov	a,r7
	add	a,r5
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
00133$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1745: if(last_fragment != 0) {
	mov	dptr,#_input_last_fragment_1_1
	movx	a,@dptr
	mov	r7,a
	jz	00135$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1746: processed_ip_in_len = frag_size;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dptr,#_processed_ip_in_len
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	sjmp	00139$
00135$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1748: processed_ip_in_len += rime_payload_len;
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_processed_ip_in_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dptr,#_processed_ip_in_len
	mov	a,r7
	add	a,r5
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00139$
00138$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1754: sicslowpan_len = rime_payload_len + uncomp_hdr_len;
	mov	dptr,#_rime_payload_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_uncomp_hdr_len
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dptr,#_sicslowpan_len
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
00139$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1764: if(processed_ip_in_len == 0 || (processed_ip_in_len == sicslowpan_len)) {
	mov	dptr,#_processed_ip_in_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00142$
	mov	dptr,#_sicslowpan_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00209$
	mov	a,r7
	cjne	a,ar5,00209$
	sjmp	00210$
00209$:
	ljmp	00145$
00210$:
00142$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1767: memcpy((uint8_t *)UIP_IP_BUF, (uint8_t *)SICSLOWPAN_IP_BUF, sicslowpan_len);
	mov	dptr,#_sicslowpan_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#_sicslowpan_aligned_buf
	push	acc
	mov	a,#(_sicslowpan_aligned_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_uip_aligned_buf
	mov	b,#0x00
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1768: uip_len = sicslowpan_len;
	mov	dptr,#_sicslowpan_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1769: sicslowpan_len = 0;
	mov	dptr,#_sicslowpan_len
;	../../../contiki-sensinode//core/net/sicslowpan.c:1770: processed_ip_in_len = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_processed_ip_in_len
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1786: neighbor_info_packet_received();
	mov	r0,#_neighbor_info_packet_received
	mov	r1,#(_neighbor_info_packet_received >> 8)
	mov	r2,#(_neighbor_info_packet_received >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1790: if(callback) {
	mov	dptr,#_callback
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00141$
;	../../../contiki-sensinode//core/net/sicslowpan.c:1791: set_packet_attrs();
	mov	r0,#_set_packet_attrs
	mov	r1,#(_set_packet_attrs >> 8)
	mov	r2,#(_set_packet_attrs >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1792: callback->input_callback();
	mov	dptr,#_callback
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
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
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00141$:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1795: tcpip_input();
	mov	r0,#_tcpip_input
	mov	r1,#(_tcpip_input >> 8)
	mov	r2,#(_tcpip_input >> 16)
	lcall	__sdcc_banked_call
00145$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sicslowpan_init'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/net/sicslowpan.c:1806: sicslowpan_init(void)
;	-----------------------------------------
;	 function sicslowpan_init
;	-----------------------------------------
_sicslowpan_init:
;	../../../contiki-sensinode//core/net/sicslowpan.c:1812: tcpip_set_outputfunc(output);
	mov	dptr,#_output
	mov	b,#(_output >> 16)
	mov	r0,#_tcpip_set_outputfunc
	mov	r1,#(_tcpip_set_outputfunc >> 8)
	mov	r2,#(_tcpip_set_outputfunc >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/net/sicslowpan.c:1821: addr_contexts[0].used   = 1;
	mov	dptr,#_addr_contexts
	mov	a,#0x01
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1822: addr_contexts[0].number = 0;
	mov	dptr,#(_addr_contexts + 0x0001)
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//core/net/sicslowpan.c:1824: SICSLOWPAN_CONF_ADDR_CONTEXT_0;
	mov	dptr,#(_addr_contexts + 0x0002)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_addr_contexts + 0x0003)
	mov	a,#0xAA
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_unc_llconf:
	.db #0x0F	; 15
	.db #0x28	; 40
	.db #0x22	; 34
	.db #0x20	; 32
_unc_ctxconf:
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x82	; 130
	.db #0x80	; 128
_unc_mxconf:
	.db #0x0F	; 15
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x21	; 33
_llprefix:
	.db #0xFE	; 254
	.db #0x80	; 128
_ttl_values:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0xFF	; 255
_sicslowpan_driver:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _sicslowpan_init,(_sicslowpan_init >> 8),(_sicslowpan_init >> 16)
	.byte _input,(_input >> 8),(_input >> 16)
_str_0:
	.ascii "sicslowpan"
	.db 0x00
	.area XINIT   (CODE)
__xinit__callback:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.area CABS    (ABS,CODE)
