;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Wed Dec  2 18:34:56 2015
;--------------------------------------------------------
	.module device_fsdata
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _file_EN_PWD
	.globl _file_PWD
	.globl _data_EN_PWD
	.globl _data_PWD
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
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
	.area BANK1   (CODE)
	.area CSEG    (CODE)
	.area CONST   (CODE)
_data_PWD:
	.db #0x2F	;  47
	.db #0x50	;  80	'P'
	.db #0x57	;  87	'W'
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x12	;  18
	.db #0x34	;  52	'4'
	.db #0x56	;  86	'V'
	.db #0x78	;  120	'x'
	.db #0x90	; -112
	.db #0xAB	; -85
	.db #0xCD	; -51
	.db #0xEF	; -17
	.db #0xFE	; -2
	.db #0xDC	; -36
	.db #0xBA	; -70
	.db #0x09	;  9
	.db #0x87	; -121
	.db #0x65	;  101	'e'
	.db #0x43	;  67	'C'
	.db #0x21	;  33
_data_EN_PWD:
	.db #0x2F	;  47
	.db #0x45	;  69	'E'
	.db #0x4E	;  78	'N'
	.db #0x5F	;  95
	.db #0x50	;  80	'P'
	.db #0x57	;  87	'W'
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x25	;  37
	.db #0xCF	; -49
	.db #0x22	;  34
	.db #0x80	; -128
	.db #0xA3	; -93
	.db #0xC0	; -64
	.db #0x2B	;  43
	.db #0xCE	; -50
	.db #0x94	; -108
	.db #0xB2	; -78
	.db #0x03	;  3
	.db #0x23	;  35
	.db #0xB2	; -78
	.db #0x59	;  89	'Y'
	.db #0x04	;  4
	.db #0x72	;  114	'r'
	.db #0x38	;  56	'8'
	.db #0xB5	; -75
	.db #0x6F	;  111	'o'
	.db #0xE5	; -27
	.db #0x13	;  19
	.db #0x68	;  104	'h'
	.db #0xE9	; -23
	.db #0x02	;  2
	.db #0xC8	; -56
	.db #0xD8	; -40
	.db #0x78	;  120	'x'
	.db #0x3F	;  63
	.db #0x8E	; -114
	.db #0x89	; -119
	.db #0xD3	; -45
	.db #0x41	;  65	'A'
	.db #0xA3	; -93
	.db #0x8C	; -116
	.db #0x2D	;  45
	.db #0x87	; -121
	.db #0xBC	; -68
	.db #0x5D	;  93
	.db #0xD6	; -42
	.db #0xD8	; -40
	.db #0xA0	; -96
	.db #0x06	;  6
	.db #0x3D	;  61
	.db #0x4B	;  75	'K'
	.db #0xFF	; -1
	.db #0x17	;  23
	.db #0xCF	; -49
	.db #0xAD	; -83
	.db #0x3F	;  63
	.db #0xFC	; -4
	.db #0xFE	; -2
	.db #0xED	; -19
	.db #0x96	; -106
	.db #0x29	;  41
	.db #0xAE	; -82
	.db #0x78	;  120	'x'
	.db #0x89	; -119
	.db #0xB7	; -73
	.db #0x8F	; -113
	.db #0x5E	;  94
	.db #0x5B	;  91
	.db #0xBE	; -66
	.db #0x18	;  24
	.db #0x91	; -111
	.db #0x9A	; -102
	.db #0xF5	; -11
	.db #0x88	; -120
	.db #0xB5	; -75
	.db #0xB7	; -73
	.db #0x36	;  54	'6'
	.db #0x24	;  36
	.db #0xA0	; -96
	.db #0x48	;  72	'H'
	.db #0xD1	; -47
	.db #0xFC	; -4
	.db #0x32	;  50	'2'
	.db #0xD6	; -42
	.db #0xAA	; -86
	.db #0xDF	; -33
	.db #0x02	;  2
	.db #0x88	; -120
	.db #0x04	;  4
	.db #0xE6	; -26
	.db #0x05	;  5
	.db #0x57	;  87	'W'
	.db #0x58	;  88	'X'
	.db #0x82	; -126
	.db #0xBB	; -69
	.db #0x2D	;  45
	.db #0xF1	; -15
	.db #0xB0	; -80
	.db #0xD7	; -41
	.db #0x22	;  34
	.db #0x4D	;  77	'M'
	.db #0x78	;  120	'x'
	.db #0x15	;  21
	.db #0x61	;  97	'a'
	.db #0x39	;  57	'9'
	.db #0x77	;  119	'w'
	.db #0x3E	;  62
	.db #0x4E	;  78	'N'
	.db #0xEF	; -17
	.db #0x79	;  121	'y'
	.db #0x3E	;  62
	.db #0xB9	; -71
	.db #0x59	;  89	'Y'
	.db #0x55	;  85	'U'
	.db #0xAD	; -83
	.db #0x0F	;  15
	.db #0x33	;  51	'3'
	.db #0x7D	;  125
	.db #0x17	;  23
	.db #0x0E	;  14
	.db #0xD1	; -47
	.db #0xC5	; -59
	.db #0x21	;  33
	.db #0xF7	; -9
	.db #0xD6	; -42
	.db #0xEE	; -18
	.db #0x15	;  21
	.db #0x3E	;  62
	.db #0xA4	; -92
	.db #0x7D	;  125
	.db #0xE7	; -25
	.db #0x1D	;  29
	.db #0x03	;  3
	.db #0x44	;  68	'D'
	.db #0xB8	; -72
	.db #0x92	; -110
	.db #0x4C	;  76	'L'
	.db #0xEC	; -20
	.db #0x10	;  16
	.db #0xB1	; -79
	.db #0x39	;  57	'9'
	.db #0x16	;  22
	.db #0x54	;  84	'T'
	.db #0xAB	; -85
	.db #0x48	;  72	'H'
	.db #0xAC	; -84
	.db #0x24	;  36
	.db #0x36	;  54	'6'
	.db #0xCC	; -52
	.db #0x57	;  87	'W'
	.db #0x9A	; -102
	.db #0x48	;  72	'H'
	.db #0x40	;  64
	.db #0x30	;  48	'0'
	.db #0xE5	; -27
	.db #0xB3	; -77
	.db #0xFC	; -4
	.db #0x4F	;  79	'O'
	.db #0x24	;  36
	.db #0x66	;  102	'f'
	.db #0xBD	; -67
	.db #0xA8	; -88
	.db #0x81	; -127
	.db #0x18	;  24
	.db #0xB1	; -79
	.db #0xCE	; -50
	.db #0x74	;  116	't'
	.db #0xF2	; -14
	.db #0x94	; -108
	.db #0xB6	; -74
	.db #0x3B	;  59
	.db #0x8A	; -118
	.db #0xCC	; -52
	.db #0xEF	; -17
	.db #0xCD	; -51
	.db #0x4D	;  77	'M'
	.db #0x8D	; -115
	.db #0x51	;  81	'Q'
	.db #0x7E	;  126
	.db #0x10	;  16
	.db #0x3B	;  59
	.db #0x76	;  118	'v'
	.db #0x3B	;  59
	.db #0x76	;  118	'v'
	.db #0xEB	; -21
	.db #0x1A	;  26
	.db #0x2A	;  42
	.db #0x09	;  9
	.db #0x98	; -104
	.db #0x07	;  7
	.db #0x1A	;  26
	.db #0x15	;  21
	.db #0xBD	; -67
	.db #0x80	; -128
	.db #0xAE	; -82
	.db #0x4A	;  74	'J'
	.db #0x0F	;  15
	.db #0x73	;  115	's'
	.db #0x0C	;  12
	.db #0xA6	; -90
	.db #0x37	;  55	'7'
	.db #0xA2	; -94
	.db #0x02	;  2
	.db #0x07	;  7
	.db #0x45	;  69	'E'
	.db #0x17	;  23
	.db #0x50	;  80	'P'
	.db #0xE6	; -26
	.db #0xA1	; -95
	.db #0x72	;  114	'r'
	.db #0x57	;  87	'W'
	.db #0xE2	; -30
	.db #0x94	; -108
	.db #0xBA	; -70
	.db #0xC1	; -63
	.db #0xFF	; -1
	.db #0xF9	; -7
	.db #0x89	; -119
	.db #0xE7	; -25
	.db #0xEC	; -20
	.db #0x63	;  99	'c'
	.db #0xF0	; -16
	.db #0xAC	; -84
	.db #0x43	;  67	'C'
	.db #0x22	;  34
	.db #0xE9	; -23
	.db #0x4E	;  78	'N'
	.db #0x60	;  96
	.db #0x8B	; -117
	.db #0x82	; -126
	.db #0x73	;  115	's'
	.db #0x46	;  70	'F'
	.db #0x59	;  89	'Y'
	.db #0xEB	; -21
	.db #0xB6	; -74
	.db #0x49	;  73	'I'
	.db #0x0D	;  13
	.db #0xF7	; -9
	.db #0x98	; -104
	.db #0x10	;  16
	.db #0xDF	; -33
	.db #0xB9	; -71
	.db #0x32	;  50	'2'
	.db #0x34	;  52	'4'
	.db #0x81	; -127
	.db #0xC7	; -57
	.db #0xF2	; -14
	.db #0x2D	;  45
	.db #0xCA	; -54
	.db #0xA8	; -88
	.db #0x77	;  119	'w'
	.db #0x0D	;  13
	.db #0x3E	;  62
	.db #0xF8	; -8
	.db #0x0C	;  12
	.db #0x7F	;  127
	.db #0xED	; -19
	.db #0x3C	;  60
	.db #0x1B	;  27
	.db #0x6D	;  109	'm'
	.db #0x54	;  84	'T'
	.db #0x5E	;  94
	.db #0x7C	;  124
_file_PWD:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _data_PWD,(_data_PWD >> 8),#0x80
	.byte (_data_PWD + 5),((_data_PWD + 5) >> 8),#0x80
	.byte #0x10,#0x00	;  16
_file_EN_PWD:
	.byte _file_PWD,(_file_PWD >> 8),#0x80
	.byte _data_EN_PWD,(_data_EN_PWD >> 8),#0x80
	.byte (_data_EN_PWD + 8),((_data_EN_PWD + 8) >> 8),#0x80
	.byte #0x00,#0x01	;  256
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
