;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Thu Dec  3 06:32:40 2015
;--------------------------------------------------------
	.module cJSON
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isupper
	.globl _malloc
	.globl _sprintf
	.globl _strlen
	.globl _memset
	.globl _strchr
	.globl _strncmp
	.globl _strcpy
	.globl _memcpy
	.globl _cJSON_GetErrorPtr
	.globl _cJSON_Delete
	.globl _cJSON_ParseWithOpts
	.globl _cJSON_Parse
	.globl _cJSON_Print
	.globl _cJSON_PrintUnformatted
	.globl _cJSON_GetArraySize
	.globl _cJSON_GetArrayItem
	.globl _cJSON_GetObjectItem
	.globl _cJSON_AddItemToArray
	.globl _cJSON_AddItemToObject
	.globl _cJSON_AddItemReferenceToArray
	.globl _cJSON_AddItemReferenceToObject
	.globl _cJSON_DetachItemFromArray
	.globl _cJSON_DeleteItemFromArray
	.globl _cJSON_DetachItemFromObject
	.globl _cJSON_DeleteItemFromObject
	.globl _cJSON_ReplaceItemInArray
	.globl _cJSON_ReplaceItemInObject
	.globl _cJSON_CreateNull
	.globl _cJSON_CreateTrue
	.globl _cJSON_CreateFalse
	.globl _cJSON_CreateBool
	.globl _cJSON_CreateNumber
	.globl _cJSON_CreateString
	.globl _cJSON_CreateArray
	.globl _cJSON_CreateObject
	.globl _cJSON_CreateIntArray
	.globl _cJSON_CreateFloatArray
	.globl _cJSON_CreateDoubleArray
	.globl _cJSON_CreateStringArray
	.globl _cJSON_Duplicate
	.globl _cJSON_Minify
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
_ep:
	.ds 3
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
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_GetErrorPtr'
;------------------------------------------------------------
;	cJSON.c:36: const char *cJSON_GetErrorPtr(void) {return ep;}
;	-----------------------------------------
;	 function cJSON_GetErrorPtr
;	-----------------------------------------
_cJSON_GetErrorPtr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	dptr,#_ep
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
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_strcasecmp'
;------------------------------------------------------------
;s2                        Allocated to stack - sp -10
;s1                        Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -4
;sloc1                     Allocated to stack - sp -1
;sloc2                     Allocated to stack - sp +0
;------------------------------------------------------------
;	cJSON.c:38: static int cJSON_strcasecmp(const char *s1,const char *s2)
;	-----------------------------------------
;	 function cJSON_strcasecmp
;	-----------------------------------------
_cJSON_strcasecmp:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:40: if (!s1) return (s1==s2)?0:1;if (!s2) return 1;
	mov	a,r5
	orl	a,r6
	jnz	00102$
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00145$
	sjmp	00113$
00145$:
	mov	r4,#0x00
	sjmp	00114$
00113$:
	mov	r4,#0x01
00114$:
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	ljmp	00111$
00102$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
	mov	dptr,#0x0001
	ljmp	00111$
00130$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,sp
	add	a,#0xf6
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
00107$:
;	cJSON.c:41: for(; tolower(*s1) == tolower(*s2); ++s1, ++s2)	if(*s1 == 0)	return 0;
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_isupper
	mov	r1,#(_isupper >> 8)
	mov	r2,#(_isupper >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00115$
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x20
	orl	a,r7
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00116$
00115$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,sp
	dec	r0
	lcall	__gptrget
	mov	@r0,a
00116$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_isupper
	mov	r1,#(_isupper >> 8)
	mov	r2,#(_isupper >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00117$
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x20
	orl	a,r7
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00118$
00117$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,sp
	lcall	__gptrget
	mov	@r1,a
00118$:
	mov	r0,sp
	dec	r0
	mov	r1,sp
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00110$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00109$
	mov	dptr,#0x0000
	ljmp	00111$
00109$:
	inc	r2
	cjne	r2,#0x00,00152$
	inc	r3
00152$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00153$
	inc	r0
	inc	@r0
00153$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
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
	ljmp	00107$
00110$:
;	cJSON.c:42: return tolower(*(const unsigned char *)s1) - tolower(*(const unsigned char *)s2);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_isupper
	mov	r1,#(_isupper >> 8)
	mov	r2,#(_isupper >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00119$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x20
	sjmp	00120$
00119$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r4,a
00120$:
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_isupper
	mov	r1,#(_isupper >> 8)
	mov	r2,#(_isupper >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00121$
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	orl	ar2,#0x20
	sjmp	00122$
00121$:
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r2,a
00122$:
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r4
	clr	c
	subb	a,r2
	mov	r4,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	dpl,r4
	mov	dph,r7
00111$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_strdup'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;len                       Allocated to stack - sp -7
;copy                      Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:48: static char* cJSON_strdup(const char* str)
;	-----------------------------------------
;	 function cJSON_strdup
;	-----------------------------------------
_cJSON_strdup:
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	cJSON.c:53: len = strlen(str) + 1;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
;	cJSON.c:54: if (!(copy = (char*)cJSON_malloc(len))) return 0;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	sjmp	00103$
00102$:
;	cJSON.c:55: memcpy(copy,str,len);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	pop	ar2
	pop	ar3
	pop	ar4
;	cJSON.c:56: return copy;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
00103$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_New_Item'
;------------------------------------------------------------
;node                      Allocated to registers r6 r5 r7 
;------------------------------------------------------------
;	cJSON.c:60: static cJSON *cJSON_New_Item(void)
;	-----------------------------------------
;	 function cJSON_New_Item
;	-----------------------------------------
_cJSON_New_Item:
;	cJSON.c:62: cJSON* node = (cJSON*)cJSON_malloc(sizeof(cJSON));
	mov	dptr,#0x0017
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r5,dph
	mov	r7,#0x00
;	cJSON.c:63: if (node) memset(node,0,sizeof(cJSON));
	mov	a,r6
	orl	a,r5
	jz	00102$
	mov	ar2,r6
	mov	ar3,r5
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x17
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	cJSON.c:64: return node;
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_Delete'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;next                      Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:68: void cJSON_Delete(cJSON *c)
;	-----------------------------------------
;	 function cJSON_Delete
;	-----------------------------------------
_cJSON_Delete:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:71: while (c)
00109$:
	mov	a,r5
	orl	a,r6
	jz	00112$
;	cJSON.c:73: next=c->next;
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	cJSON.c:74: if (!(c->type&cJSON_IsReference) && c->child) cJSON_Delete(c->child);
	mov	a,#0x09
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
	jb	acc.0,00105$
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00105$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
;	cJSON.c:75: if (!(c->type&cJSON_IsReference) && c->valuestring) cJSON_free(c->valuestring);
00105$:
;	cJSON.c:78: c=next;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	ljmp	00109$
00112$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_number'
;------------------------------------------------------------
;num                       Allocated to stack - sp -31
;item                      Allocated to stack - sp -25
;n                         Allocated to stack - sp -22
;sign                      Allocated to stack - sp -18
;scale                     Allocated to stack - sp -14
;subscale                  Allocated to registers 
;signsubscale              Allocated to registers 
;sloc0                     Allocated to stack - sp -10
;sloc1                     Allocated to stack - sp -7
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	cJSON.c:83: static const char *parse_number(cJSON *item,const char *num)
;	-----------------------------------------
;	 function parse_number
;	-----------------------------------------
_parse_number:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x17
;	cJSON.c:85: float n=0,sign=1,scale=0;int subscale=0,signsubscale=1;
	mov	sp,a
	add	a,#0xea
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
	inc	r0
	mov	@r0,#0x3F
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	cJSON.c:87: if (*num=='-') sign=-1,num++;	/* Has sign? */
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2D,00102$
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
	inc	r0
	mov	@r0,#0xBF
	mov	a,sp
	add	a,#0xe1
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
00102$:
;	cJSON.c:88: if (*num=='0') num++;			/* is zero */
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00104$
	mov	a,sp
	add	a,#0xe1
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
00104$:
;	cJSON.c:89: if (*num>='1' && *num<='9')	do	n=(n*10.0)+(*num++ -'0');	while (*num>='0' && *num<='9');	/* Number? */
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb1
	jnc	00154$
	ljmp	00110$
00154$:
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00155$
	ljmp	00110$
00155$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00106$:
	mov	a,sp
	add	a,#0xea
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	xch	a,r0
	mov	a,sp
	add	a,#0xf5
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xea
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00136$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00157$
	ljmp	00106$
00157$:
00136$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,sp
	add	a,#0xe1
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
00110$:
;	cJSON.c:90: if (*num=='.' && num[1]>='0' && num[1]<='9') {num++;		do	n=(n*10.0)+(*num++ -'0'),scale++; while (*num>='0' && *num<='9');}	/* Fractional part? */
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2E,00158$
	sjmp	00159$
00158$:
	ljmp	00117$
00159$:
	inc	r5
	cjne	r5,#0x00,00160$
	inc	r6
00160$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00161$
	ljmp	00117$
00161$:
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00162$
	ljmp	00117$
00162$:
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
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
00113$:
	mov	a,sp
	add	a,#0xea
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xea
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00137$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00164$
	ljmp	00113$
00164$:
00137$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,sp
	add	a,#0xe1
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
00117$:
;	cJSON.c:92: if (scale) {
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	b,@r0
	inc	r0
	mov	a,@r0
	orl	b,a
	inc	r0
	mov	a,@r0
	orl	b,a
	inc	r0
	mov	a,@r0
	anl	a,#0x7F
	orl	a,b
	jnz	00165$
	ljmp	00121$
00165$:
;	cJSON.c:93: n=sign*n/(10.0 * scale);
	mov	a,sp
	add	a,#0xea
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
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	xch	a,r0
	mov	a,sp
	add	a,#0xf9
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xf2
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
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xea
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00122$
00121$:
;	cJSON.c:95: n=sign*n;
	mov	a,sp
	add	a,#0xea
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
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	add	a,#0xea
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00122$:
;	cJSON.c:98: item->valuefloat=n;
	mov	a,sp
	add	a,#0xe7
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
	mov	a,sp
	add	a,#0xea
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	cJSON.c:99: item->valueint=(int)n;
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,#0x0E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xea
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
	push	ar5
	lcall	___fs2sint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	cJSON.c:100: item->type=cJSON_Number;
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	a,#0x09
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
	mov	a,#0x03
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	cJSON.c:101: return num;
	mov	a,sp
	add	a,#0xe1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xE6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_number'
;------------------------------------------------------------
;item                      Allocated to registers r7 r6 r5 
;str                       Allocated to registers r6 r5 r7 
;d                         Allocated to stack - sp -10
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:105: static char *print_number(cJSON *item)
;	-----------------------------------------
;	 function print_number
;	-----------------------------------------
_print_number:
	mov	a,sp
	add	a,#0x0B
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
;	cJSON.c:108: float d=item->valuefloat;
	mov	a,#0x10
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf6
;	cJSON.c:109: if ((float)item->valueint-d<= 0.0000001 || (float)item->valueint-d>= -0.0000001)	
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0E
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
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
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	___sint2fs
	xch	a,r0
	mov	a,sp
	add	a,#0xfa
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf6
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
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x95
	push	acc
	mov	a,#0xBF
	push	acc
	mov	a,#0xD6
	push	acc
	mov	a,#0x33
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00105$
	mov	a,sp
	add	a,#0xf6
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
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x95
	push	acc
	mov	a,#0xBF
	push	acc
	mov	a,#0xD6
	push	acc
	mov	a,#0xB3
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00106$
00105$:
;	cJSON.c:111: str=(char*)cJSON_malloc(21);	/* 2^64+1 can be represented in 21 chars. */
	mov	dptr,#0x0015
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r5,dph
	mov	r7,#0x00
;	cJSON.c:112: if (str) sprintf(str,"%d",item->valueint);
	mov	a,r6
	orl	a,r5
	jnz	00119$
	ljmp	00107$
00119$:
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
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar6
	push	ar5
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00107$
00106$:
;	cJSON.c:116: str=(char*)cJSON_malloc(64);	/* This is a nice tradeoff. */
	mov	dptr,#0x0040
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	ar6,r3
	mov	ar5,r4
	mov	r7,#0x00
;	cJSON.c:117: if (str)
	mov	a,r6
	orl	a,r5
	jz	00107$
;	cJSON.c:119: sprintf(str,"%f",d);
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf3
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
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar6
	push	ar5
	push	ar7
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	cJSON.c:122: return str;
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_hex4'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;h                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	cJSON.c:125: static unsigned parse_hex4(const char *str)
;	-----------------------------------------
;	 function parse_hex4
;	-----------------------------------------
_parse_hex4:
;	cJSON.c:128: if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00110$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00110$
	mov	a,r4
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r2
	add	a,#0xD0
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	ljmp	00111$
00110$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xc1
	jc	00106$
	mov	a,#(0x46 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xC9
	add	a,r6
	mov	r6,a
	mov	a,#0xFF
	addc	a,r7
	mov	r7,a
	mov	ar2,r6
	mov	ar3,r7
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00111$
00106$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xe1
	jc	00102$
	mov	a,#(0x66 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xA9
	add	a,r4
	mov	r4,a
	mov	a,#0xFF
	addc	a,r7
	mov	r7,a
	mov	ar2,r4
	mov	ar3,r7
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00111$
00102$:
	mov	dptr,#0x0000
	ljmp	00149$
00111$:
;	cJSON.c:129: h=h<<4;str++;
	mov	a,r3
	swap	a
	anl	a,#0xF0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xF0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	inc	r5
	cjne	r5,#0x00,00205$
	inc	r6
00205$:
;	cJSON.c:130: if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00122$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00122$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00123$
00122$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xc1
	jc	00118$
	mov	a,#(0x46 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00118$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xC9
	add	a,r6
	mov	r6,a
	mov	a,#0xFF
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00123$
00118$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xe1
	jc	00114$
	mov	a,#(0x66 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00114$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xA9
	add	a,r4
	mov	r4,a
	mov	a,#0xFF
	addc	a,r7
	mov	r7,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00123$
00114$:
	mov	dptr,#0x0000
	ljmp	00149$
00123$:
;	cJSON.c:131: h=h<<4;str++;
	mov	a,r3
	swap	a
	anl	a,#0xF0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xF0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	inc	r5
	cjne	r5,#0x00,00212$
	inc	r6
00212$:
;	cJSON.c:132: if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00134$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00134$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00135$
00134$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xc1
	jc	00130$
	mov	a,#(0x46 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00130$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xC9
	add	a,r6
	mov	r6,a
	mov	a,#0xFF
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00135$
00130$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xe1
	jc	00126$
	mov	a,#(0x66 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00126$
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xA9
	add	a,r4
	mov	r4,a
	mov	a,#0xFF
	addc	a,r7
	mov	r7,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00135$
00126$:
	mov	dptr,#0x0000
	ljmp	00149$
00135$:
;	cJSON.c:133: h=h<<4;str++;
	mov	a,r3
	swap	a
	anl	a,#0xF0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xF0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	inc	r5
	cjne	r5,#0x00,00219$
	inc	r6
00219$:
;	cJSON.c:134: if (*str>='0' && *str<='9') h+=(*str)-'0'; else if (*str>='A' && *str<='F') h+=10+(*str)-'A'; else if (*str>='a' && *str<='f') h+=10+(*str)-'a'; else return 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00146$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00146$
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	a,r5
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	sjmp	00147$
00146$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xc1
	jc	00142$
	mov	a,#(0x46 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00142$
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,#0xC9
	add	a,r5
	mov	r5,a
	mov	a,#0xFF
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	sjmp	00147$
00142$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xe1
	jc	00138$
	mov	a,#(0x66 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00138$
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,#0xA9
	add	a,r7
	mov	r7,a
	mov	a,#0xFF
	addc	a,r6
	mov	r6,a
	mov	a,r7
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	sjmp	00147$
00138$:
	mov	dptr,#0x0000
	sjmp	00149$
00147$:
;	cJSON.c:135: return h;
	mov	dpl,r2
	mov	dph,r3
00149$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_string'
;------------------------------------------------------------
;str                       Allocated to stack - sp -18
;item                      Allocated to stack - sp -12
;ptr                       Allocated to stack - sp -9
;ptr2                      Allocated to registers r5 r6 r7 
;out                       Allocated to stack - sp -6
;len                       Allocated to registers r2 r3 
;uc                        Allocated to stack - sp -3
;uc2                       Allocated to stack - sp -1
;------------------------------------------------------------
;	cJSON.c:140: static const char *parse_string(cJSON *item,const char *str)
;	-----------------------------------------
;	 function parse_string
;	-----------------------------------------
_parse_string:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0A
;	cJSON.c:142: const char *ptr=str+1;char *ptr2;char *out;int len=0;unsigned uc,uc2;
	mov	sp,a
	add	a,#0xee
	mov	r0,a
	mov	a,sp
	add	a,#0xf7
	mov	r1,a
	mov	a,#0x01
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
;	cJSON.c:143: if (*str!='\"') {ep=str;return 0;}	/* not a string! */
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x22,00222$
	sjmp	00161$
00222$:
	mov	dptr,#_ep
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00155$
;	cJSON.c:145: while (*ptr!='\"' && *ptr && ++len) if (*ptr++ == '\\') ptr++;	/* Skip escaped quotes. */
00161$:
	mov	r3,#0x00
	mov	r4,#0x00
00107$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x22,00223$
	sjmp	00109$
00223$:
	mov	a,r2
	jz	00109$
	inc	r3
	cjne	r3,#0x00,00225$
	inc	r4
00225$:
	mov	a,r3
	orl	a,r4
	jz	00109$
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00227$
	inc	r0
	inc	@r0
00227$:
	cjne	r2,#0x5C,00107$
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00230$
	inc	r0
	inc	@r0
00230$:
	sjmp	00107$
00109$:
;	cJSON.c:147: out=(char*)cJSON_malloc(len+1);	/* This is how long we need for the string, roughly. */
	inc	r3
	cjne	r3,#0x00,00231$
	inc	r4
00231$:
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:148: if (!out) return 0;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00111$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00155$
00111$:
;	cJSON.c:150: ptr=str+1;ptr2=out;
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
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	cJSON.c:151: while (*ptr!='\"' && *ptr)
00150$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x22,00233$
	ljmp	00152$
00233$:
	mov	a,r4
	jnz	00234$
	ljmp	00152$
00234$:
;	cJSON.c:153: if (*ptr!='\\') *ptr2++=*ptr++;
	cjne	r4,#0x5C,00235$
	sjmp	00147$
00235$:
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00236$
	inc	r0
	inc	@r0
00236$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00150$
00147$:
;	cJSON.c:156: ptr++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00237$
	inc	r0
	inc	@r0
00237$:
;	cJSON.c:157: switch (*ptr)
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x62,00238$
	sjmp	00112$
00238$:
	cjne	r4,#0x66,00239$
	sjmp	00113$
00239$:
	cjne	r4,#0x6E,00240$
	sjmp	00114$
00240$:
	cjne	r4,#0x72,00241$
	sjmp	00115$
00241$:
	cjne	r4,#0x74,00242$
	sjmp	00116$
00242$:
	cjne	r4,#0x75,00243$
	sjmp	00117$
00243$:
	ljmp	00144$
;	cJSON.c:159: case 'b': *ptr2++='\b';	break;
00112$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	ljmp	00145$
;	cJSON.c:160: case 'f': *ptr2++='\f';	break;
00113$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0C
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	ljmp	00145$
;	cJSON.c:161: case 'n': *ptr2++='\n';	break;
00114$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0A
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	ljmp	00145$
;	cJSON.c:162: case 'r': *ptr2++='\r';	break;
00115$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0D
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	ljmp	00145$
;	cJSON.c:163: case 't': *ptr2++='\t';	break;
00116$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x09
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	ljmp	00145$
;	cJSON.c:164: case 'u':	 /* transcode utf16 to utf8. */
00117$:
;	cJSON.c:165: uc=parse_hex4(ptr+1);ptr+=4;	/* get the unicode char. */
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar5
	mov	r0,#_parse_hex4
	mov	r1,#(_parse_hex4 >> 8)
	mov	r2,#(_parse_hex4 >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	cJSON.c:167: if ((uc>=0xDC00 && uc<=0xDFFF) || uc==0)	break;	/* check for invalid.	*/
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xDC
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00121$
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,#0xFF
	subb	a,@r0
	mov	a,#0xDF
	inc	r0
	subb	a,@r0
	jc	00245$
	ljmp	00145$
00245$:
00121$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00246$
	ljmp	00145$
00246$:
;	cJSON.c:169: if (uc>=0xD800 && uc<=0xDBFF)	/* UTF16 surrogate pairs.	*/
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xD8
	jnc	00247$
	ljmp	00129$
00247$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,#0xFF
	subb	a,@r0
	mov	a,#0xDB
	inc	r0
	subb	a,@r0
	jnc	00248$
	ljmp	00129$
00248$:
;	cJSON.c:171: if (ptr[1]!='\\' || ptr[2]!='u')	break;	/* missing second-half of surrogate.	*/
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
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
	cjne	r2,#0x5C,00249$
	sjmp	00250$
00249$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00145$
00250$:
	pop	ar7
	pop	ar6
	pop	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
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
	cjne	r2,#0x75,00251$
	sjmp	00252$
00251$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00145$
00252$:
	pop	ar7
	pop	ar6
	pop	ar5
;	cJSON.c:172: uc2=parse_hex4(ptr+3);ptr+=6;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar5
	mov	r0,#_parse_hex4
	mov	r1,#(_parse_hex4 >> 8)
	mov	r2,#(_parse_hex4 >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	cJSON.c:173: if (uc2<0xDC00 || uc2>0xDFFF)		break;	/* invalid second-half of surrogate.	*/
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xDC
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00253$
	ljmp	00145$
00253$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,#0xFF
	subb	a,@r0
	mov	a,#0xDF
	inc	r0
	subb	a,@r0
	jnc	00254$
	ljmp	00145$
00254$:
;	cJSON.c:174: uc=0x10000 + (((uc&0x3FF)<<10) | (uc2&0x3FF));
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	mov	a,#0x03
	inc	r0
	anl	a,@r0
	mov	a,r2
	add	a,r2
	add	a,acc
	mov	r3,a
	mov	r2,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0x03
	inc	r0
	anl	a,@r0
	mov	r7,a
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,#0x01
	add	a,r7
	clr	a
	addc	a,r6
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	cJSON.c:196: return ptr;
	pop	ar7
	pop	ar6
	pop	ar5
;	cJSON.c:174: uc=0x10000 + (((uc&0x3FF)<<10) | (uc2&0x3FF));
00129$:
;	cJSON.c:177: len=4;if (uc<0x80) len=1;else if (uc<0x800) len=2;else if (uc<0x10000) len=3; ptr2+=len;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x80
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00137$
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00138$
00137$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	a,@r0
	anl	a,#0xF8
	jnz	00131$
	mov	r2,#0x02
	mov	r3,a
	sjmp	00138$
00131$:
	mov	r2,#0x03
	mov	r3,#0x00
00138$:
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
;	cJSON.c:179: switch (len) {
	cjne	r2,#0x01,00258$
	cjne	r3,#0x00,00258$
	ljmp	00142$
00258$:
	cjne	r2,#0x02,00259$
	cjne	r3,#0x00,00259$
	ljmp	00141$
00259$:
	cjne	r2,#0x03,00260$
	cjne	r3,#0x00,00260$
	sjmp	00140$
00260$:
	cjne	r2,#0x04,00261$
	cjne	r3,#0x00,00261$
	sjmp	00262$
00261$:
	ljmp	00143$
00262$:
;	cJSON.c:180: case 4: *--ptr2 =((uc | 0x80) & 0xBF); uc >>= 6;
	push	ar2
	push	ar3
	dec	r5
	cjne	r5,#0xFF,00263$
	dec	r6
00263$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x80
	orl	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	anl	ar2,#0xBF
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	xch	a,@r0
	anl	a,#0x03
	inc	r0
	mov	@r0,a
;	cJSON.c:196: return ptr;
	pop	ar3
	pop	ar2
;	cJSON.c:181: case 3: *--ptr2 =((uc | 0x80) & 0xBF); uc >>= 6;
00140$:
	push	ar2
	push	ar3
	dec	r5
	cjne	r5,#0xFF,00264$
	dec	r6
00264$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x80
	orl	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	anl	ar2,#0xBF
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	xch	a,@r0
	anl	a,#0x03
	inc	r0
	mov	@r0,a
;	cJSON.c:196: return ptr;
	pop	ar3
	pop	ar2
;	cJSON.c:182: case 2: *--ptr2 =((uc | 0x80) & 0xBF); uc >>= 6;
00141$:
	push	ar2
	push	ar3
	dec	r5
	cjne	r5,#0xFF,00265$
	dec	r6
00265$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x80
	orl	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	anl	ar2,#0xBF
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	mov	c,acc.7
	xch	a,@r0
	rlc	a
	xch	a,@r0
	rlc	a
	xch	a,@r0
	anl	a,#0x03
	inc	r0
	mov	@r0,a
;	cJSON.c:196: return ptr;
	pop	ar3
	pop	ar2
;	cJSON.c:183: case 1: *--ptr2 =(uc | firstByteMark[len]);
00142$:
	dec	r5
	cjne	r5,#0xFF,00266$
	dec	r6
00266$:
	mov	a,r2
	add	a,#_firstByteMark
	mov	dpl,a
	mov	a,r3
	addc	a,#(_firstByteMark >> 8)
	mov	dph,a
	push	ar2
	push	ar3
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	cJSON.c:196: return ptr;
	pop	ar3
	pop	ar2
;	cJSON.c:184: }
00143$:
;	cJSON.c:185: ptr2+=len;
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
;	cJSON.c:186: break;
;	cJSON.c:187: default:  *ptr2++=*ptr; break;
	sjmp	00145$
00144$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	cJSON.c:188: }
00145$:
;	cJSON.c:189: ptr++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00267$
	inc	r0
	inc	@r0
00267$:
	ljmp	00150$
00152$:
;	cJSON.c:192: *ptr2=0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	cJSON.c:193: if (*ptr=='\"') ptr++;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x22,00154$
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00270$
	inc	r0
	inc	@r0
00270$:
00154$:
;	cJSON.c:194: item->valuestring=out;
	mov	a,sp
	add	a,#0xf4
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	cJSON.c:195: item->type=cJSON_String;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,#0x09
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
	mov	a,#0x04
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	cJSON.c:196: return ptr;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00155$:
	mov	a,sp
	add	a,#0xF3
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_string_ptr'
;------------------------------------------------------------
;str                       Allocated to stack - sp -14
;ptr                       Allocated to registers r2 r3 r4 
;ptr2                      Allocated to stack - sp -11
;out                       Allocated to stack - sp -8
;len                       Allocated to stack - sp -5
;token                     Allocated to stack - sp -3
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:200: static char *print_string_ptr(const char *str)
;	-----------------------------------------
;	 function print_string_ptr
;	-----------------------------------------
_print_string_ptr:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0C
;	cJSON.c:202: const char *ptr;char *ptr2,*out;int len=0;unsigned char token;
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	cJSON.c:204: if (!str) return cJSON_strdup("");
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00138$
	mov	dptr,#__str_2
	mov	b,#0x80
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00131$
;	cJSON.c:205: ptr=str;while ((token=*ptr) && ++len) {if (strchr("\"\\\b\f\n\r\t",token)) len++; else if (token<32) len+=5;ptr++;}
00138$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00109$:
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar5
	mov	a,r5
	jz	00111$
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00174$
	inc	r0
	inc	@r0
00174$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00111$
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	push	ar7
	push	ar6
	push	ar2
	push	ar5
	mov	dptr,#__str_3
	mov	b,#0x80
	mov	r0,#_strchr
	mov	r1,#(_strchr >> 8)
	mov	r2,#(_strchr >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	dec	sp
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00106$
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00177$
	inc	r0
	inc	@r0
00177$:
	sjmp	00107$
00106$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x20,00178$
00178$:
	jnc	00107$
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00107$:
	inc	r2
	cjne	r2,#0x00,00180$
	inc	r6
00180$:
	ljmp	00109$
00111$:
;	cJSON.c:207: out=(char*)cJSON_malloc(len+3);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:208: if (!out) return 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00131$
00113$:
;	cJSON.c:210: ptr2=out;ptr=str;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	cJSON.c:211: *ptr2++='\"';
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x22
	lcall	__gptrput
;	cJSON.c:212: while (*ptr)
00128$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	jnz	00182$
	ljmp	00130$
00182$:
;	cJSON.c:214: if ((unsigned char)*ptr>31 && *ptr!='\"' && *ptr!='\\') *ptr2++=*ptr++;
	mov	ar6,r7
	mov	a,r6
	add	a,#0xff - 0x1F
	jnc	00124$
	cjne	r7,#0x22,00184$
	sjmp	00124$
00184$:
	cjne	r7,#0x5C,00185$
	sjmp	00124$
00185$:
	inc	r2
	cjne	r2,#0x00,00186$
	inc	r3
00186$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	sjmp	00128$
00124$:
;	cJSON.c:217: *ptr2++='\\';
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x5C
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	cJSON.c:218: switch (token=*ptr++)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar7
	cjne	r7,#0x08,00187$
	sjmp	00116$
00187$:
	cjne	r7,#0x09,00188$
	ljmp	00120$
00188$:
	cjne	r7,#0x0A,00189$
	ljmp	00118$
00189$:
	cjne	r7,#0x0C,00190$
	sjmp	00117$
00190$:
	cjne	r7,#0x0D,00191$
	ljmp	00119$
00191$:
	cjne	r7,#0x22,00192$
	sjmp	00115$
00192$:
	cjne	r7,#0x5C,00193$
	sjmp	00194$
00193$:
	ljmp	00121$
00194$:
;	cJSON.c:220: case '\\':	*ptr2++='\\';	break;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x5C
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:221: case '\"':	*ptr2++='\"';	break;
00115$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x22
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:222: case '\b':	*ptr2++='b';	break;
00116$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x62
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:223: case '\f':	*ptr2++='f';	break;
00117$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x66
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:224: case '\n':	*ptr2++='n';	break;
00118$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x6E
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:225: case '\r':	*ptr2++='r';	break;
00119$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x72
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:226: case '\t':	*ptr2++='t';	break;
00120$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x74
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00128$
;	cJSON.c:227: default: sprintf(ptr2,"u%04x",token);ptr2+=5;	break;	/* escape and print */
00121$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
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
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	cJSON.c:228: }
	ljmp	00128$
00130$:
;	cJSON.c:231: *ptr2++='\"';*ptr2++=0;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x22
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:232: return out;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00131$:
	mov	a,sp
	add	a,#0xF1
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_string'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:235: static char *print_string(cJSON *item)	{return print_string_ptr(item->valuestring);}
;	-----------------------------------------
;	 function print_string
;	-----------------------------------------
_print_string:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_string_ptr
	mov	r1,#(_print_string_ptr >> 8)
	mov	r2,#(_print_string_ptr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'skip'
;------------------------------------------------------------
;in                        Allocated to registers 
;------------------------------------------------------------
;	cJSON.c:246: static const char *skip(const char *in) {while (in && *in && (unsigned char)*in<=32) in++; return in;}
;	-----------------------------------------
;	 function skip
;	-----------------------------------------
_skip:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
00103$:
	mov	a,r5
	orl	a,r6
	jz	00105$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00105$
	mov	a,r4
	add	a,#0xff - 0x20
	jc	00105$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_ParseWithOpts'
;------------------------------------------------------------
;return_parse_end          Allocated to stack - sp -8
;require_null_terminated   Allocated to stack - sp -10
;value                     Allocated to registers r5 r6 r7 
;end                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:249: cJSON *cJSON_ParseWithOpts(const char *value,const char **return_parse_end,int require_null_terminated)
;	-----------------------------------------
;	 function cJSON_ParseWithOpts
;	-----------------------------------------
_cJSON_ParseWithOpts:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:252: cJSON *c=cJSON_New_Item();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	cJSON.c:253: ep=0;
	mov	dptr,#_ep
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	cJSON.c:254: if (!c) return 0;       /* memory fail */
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00111$
00102$:
;	cJSON.c:256: end=parse_value(c,skip(value));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_value
	mov	r1,#(_parse_value >> 8)
	mov	r2,#(_parse_value >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	cJSON.c:257: if (!end)	{cJSON_Delete(c);return 0;}	/* parse failure. ep is set. */
	mov	a,r5
	orl	a,r6
	jnz	00104$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00111$
00104$:
;	cJSON.c:260: if (require_null_terminated) {end=skip(end);if (*end) {cJSON_Delete(c);ep=end;return 0;}}
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00108$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_ep
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	sjmp	00111$
00108$:
;	cJSON.c:261: if (return_parse_end) *return_parse_end=end;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00110$:
;	cJSON.c:262: return c;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00111$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_Parse'
;------------------------------------------------------------
;value                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:265: cJSON *cJSON_Parse(const char *value) {return cJSON_ParseWithOpts(value,0,0);}
;	-----------------------------------------
;	 function cJSON_Parse
;	-----------------------------------------
_cJSON_Parse:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_ParseWithOpts
	mov	r1,#(_cJSON_ParseWithOpts >> 8)
	mov	r2,#(_cJSON_ParseWithOpts >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_Print'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:268: char *cJSON_Print(cJSON *item)				{return print_value(item,0,1);}
;	-----------------------------------------
;	 function cJSON_Print
;	-----------------------------------------
_cJSON_Print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_value
	mov	r1,#(_print_value >> 8)
	mov	r2,#(_print_value >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_PrintUnformatted'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:269: char *cJSON_PrintUnformatted(cJSON *item)	{return print_value(item,0,0);}
;	-----------------------------------------
;	 function cJSON_PrintUnformatted
;	-----------------------------------------
_cJSON_PrintUnformatted:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_value
	mov	r1,#(_print_value >> 8)
	mov	r2,#(_print_value >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_value'
;------------------------------------------------------------
;value                     Allocated to stack - sp -9
;item                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:272: static const char *parse_value(cJSON *item,const char *value)
;	-----------------------------------------
;	 function parse_value
;	-----------------------------------------
_parse_value:
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:274: if (!value)						return 0;	/* Fail on null. */
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00119$
00102$:
;	cJSON.c:275: if (!strncmp(value,"null",4))	{ item->type=cJSON_NULL;  return value+4; }
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00104$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x04
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
	ljmp	00119$
00104$:
;	cJSON.c:276: if (!strncmp(value,"false",5))	{ item->type=cJSON_False; return value+5; }
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00106$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x05
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
	ljmp	00119$
00106$:
;	cJSON.c:277: if (!strncmp(value,"true",4))	{ item->type=cJSON_True; item->valueint=1;	return value+4; }
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00108$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
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
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x04
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
	ljmp	00119$
00108$:
;	cJSON.c:278: if (*value=='\"')				{ return parse_string(item,value); }
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x22,00110$
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_parse_string
	mov	r1,#(_parse_string >> 8)
	mov	r2,#(_parse_string >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xfb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	dec	sp
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00119$
00110$:
;	cJSON.c:279: if (*value=='-' || (*value>='0' && *value<='9'))	{ return parse_number(item,value); }
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x2D,00145$
	sjmp	00111$
00145$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00112$
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00112$
00111$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_parse_number
	mov	r1,#(_parse_number >> 8)
	mov	r2,#(_parse_number >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xfb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	dec	sp
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00119$
00112$:
;	cJSON.c:280: if (*value=='[')				{ return parse_array(item,value); }
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x5B,00116$
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_parse_array
	mov	r1,#(_parse_array >> 8)
	mov	r2,#(_parse_array >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xfb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	dec	sp
	dec	sp
	dec	sp
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00119$
00116$:
;	cJSON.c:281: if (*value=='{')				{ return parse_object(item,value); }
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x7B,00118$
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_parse_object
	mov	r1,#(_parse_object >> 8)
	mov	r2,#(_parse_object >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00119$
00118$:
;	cJSON.c:283: ep=value;return 0;	/* failure. */
	mov	dptr,#_ep
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
00119$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_value'
;------------------------------------------------------------
;depth                     Allocated to stack - sp -6
;fmt                       Allocated to stack - sp -8
;item                      Allocated to registers r5 r6 r7 
;out                       Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -1
;------------------------------------------------------------
;	cJSON.c:287: static char *print_value(cJSON *item,int depth,int fmt)
;	-----------------------------------------
;	 function print_value
;	-----------------------------------------
_print_value:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:289: char *out=0;
;	cJSON.c:290: if (!item) return 0;
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	a,r5
	orl	a,r6
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00111$
00102$:
;	cJSON.c:291: switch ((item->type)&255)
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x09
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	a,@r0
	pop	ar4
	pop	ar3
	pop	ar2
	jnb	acc.7,00120$
	ljmp	00110$
00120$:
	mov	r0,sp
	dec	r0
	clr	c
	mov	a,#0x06
	subb	a,@r0
	clr	a
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00121$
	ljmp	00110$
00121$:
	mov	r0,sp
	dec	r0
	mov	a,@r0
	add	a,acc
	add	a,@r0
	mov	dptr,#00122$
	jmp	@a+dptr
00122$:
	ljmp	00104$
	ljmp	00105$
	ljmp	00103$
	ljmp	00106$
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
;	cJSON.c:293: case cJSON_NULL:	out=cJSON_strdup("null");	break;
00103$:
	mov	dptr,#__str_5
	mov	b,#0x80
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	ljmp	00110$
;	cJSON.c:294: case cJSON_False:	out=cJSON_strdup("false");break;
00104$:
	mov	dptr,#__str_6
	mov	b,#0x80
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	ljmp	00110$
;	cJSON.c:295: case cJSON_True:	out=cJSON_strdup("true"); break;
00105$:
	mov	dptr,#__str_7
	mov	b,#0x80
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	ljmp	00110$
;	cJSON.c:296: case cJSON_Number:	out=print_number(item);break;
00106$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_number
	mov	r1,#(_print_number >> 8)
	mov	r2,#(_print_number >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	ljmp	00110$
;	cJSON.c:297: case cJSON_String:	out=print_string(item);break;
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_string
	mov	r1,#(_print_string >> 8)
	mov	r2,#(_print_string >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
;	cJSON.c:298: case cJSON_Array:	out=print_array(item,depth,fmt);break;
	sjmp	00110$
00108$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_array
	mov	r1,#(_print_array >> 8)
	mov	r2,#(_print_array >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
;	cJSON.c:299: case cJSON_Object:	out=print_object(item,depth,fmt);break;
	sjmp	00110$
00109$:
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_print_object
	mov	r1,#(_print_object >> 8)
	mov	r2,#(_print_object >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	cJSON.c:300: }
00110$:
;	cJSON.c:301: return out;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
00111$:
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_array'
;------------------------------------------------------------
;value                     Allocated to stack - sp -17
;item                      Allocated to stack - sp -11
;child                     Allocated to stack - sp -8
;new_item                  Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:305: static const char *parse_array(cJSON *item,const char *value)
;	-----------------------------------------
;	 function parse_array
;	-----------------------------------------
_parse_array:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
;	cJSON.c:308: if (*value!='[')	{ep=value;return 0;}	/* not an array! */
	mov	sp,a
	add	a,#0xef
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x5B,00138$
	sjmp	00102$
00138$:
	mov	dptr,#_ep
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00118$
00102$:
;	cJSON.c:310: item->type=cJSON_Array;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x09
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
	mov	a,#0x05
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	cJSON.c:311: value=skip(value+1);
	inc	r2
	cjne	r2,#0x00,00139$
	inc	r3
00139$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
;	cJSON.c:312: if (*value==']') return value+1;	/* empty array. */
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x5D,00104$
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
	ljmp	00118$
00104$:
;	cJSON.c:314: item->child=child=cJSON_New_Item();
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf8
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
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	cJSON.c:315: if (!item->child) return 0;		 /* memory fail */
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00118$
00106$:
;	cJSON.c:316: value=skip(parse_value(child,skip(value)));	/* skip any spacing, get the value. */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_value
	mov	r1,#(_parse_value >> 8)
	mov	r2,#(_parse_value >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	cJSON.c:317: if (!value) return 0;
	mov	a,r5
	orl	a,r6
	jnz	00113$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00118$
;	cJSON.c:319: while (*value==',')
00113$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2C,00144$
	sjmp	00145$
00144$:
	ljmp	00115$
00145$:
;	cJSON.c:322: if (!(new_item=cJSON_New_Item())) return 0; 	/* memory fail */
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar2
	mov	a,r4
	orl	a,r3
	jnz	00110$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00118$
00110$:
;	cJSON.c:323: child->next=new_item;new_item->prev=child;child=new_item;
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
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
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
;	cJSON.c:324: value=skip(parse_value(child,skip(value+1)));
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
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_value
	mov	r1,#(_parse_value >> 8)
	mov	r2,#(_parse_value >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	cJSON.c:325: if (!value) return 0;	/* memory fail */
	mov	a,r2
	orl	a,r3
	jz	00147$
	ljmp	00113$
00147$:
	mov	dptr,#0x0000
	mov	b,#0x00
	sjmp	00118$
00115$:
;	cJSON.c:328: if (*value==']') return value+1;	/* end of array */
	cjne	r4,#0x5D,00117$
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
	sjmp	00118$
00117$:
;	cJSON.c:329: ep=value;return 0;	/* malformed. */
	mov	dptr,#_ep
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
00118$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_array'
;------------------------------------------------------------
;depth                     Allocated to stack - sp -26
;fmt                       Allocated to stack - sp -28
;item                      Allocated to registers r5 r6 r7 
;entries                   Allocated to stack - sp -21
;out                       Allocated to stack - sp -18
;ptr                       Allocated to stack - sp -15
;ret                       Allocated to registers r4 r3 r5 
;len                       Allocated to stack - sp -12
;child                     Allocated to stack - sp -10
;numentries                Allocated to stack - sp -3
;i                         Allocated to stack - sp -7
;fail                      Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -1
;------------------------------------------------------------
;	cJSON.c:333: static char *print_array(cJSON *item,int depth,int fmt)
;	-----------------------------------------
;	 function print_array
;	-----------------------------------------
_print_array:
	mov	a,sp
	add	a,#0x16
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:336: char *out=0,*ptr,*ret;int len=5;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,#0x05
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:337: cJSON *child=item->child;
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar2
;	cJSON.c:338: int numentries=0,i=0,fail=0;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	cJSON.c:341: while (child) numentries++,child=child->next;
	mov	r2,#0x00
	mov	r4,#0x00
00101$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00160$
	inc	r2
	cjne	r2,#0x00,00184$
	inc	r4
00184$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	sjmp	00101$
00160$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	cJSON.c:343: if (!numentries)
	mov	a,r2
	orl	a,r4
	jnz	00107$
;	cJSON.c:345: out=(char*)cJSON_malloc(3);
	mov	dptr,#0x0003
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:346: if (out) strcpy(out,"[]");
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00105$
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strcpy
	mov	r1,#(_strcpy >> 8)
	mov	r2,#(_strcpy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00105$:
;	cJSON.c:347: return out;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00137$
00107$:
;	cJSON.c:350: entries=(char**)cJSON_malloc(numentries*sizeof(char*));
	push	ar5
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar4
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar6
	push	ar5
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:351: if (!entries) return 0;
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00109$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00137$
00109$:
;	cJSON.c:352: memset(entries,0,numentries*sizeof(char*));
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	cJSON.c:354: child=item->child;
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
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	cJSON.c:355: while (child && !fail)
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00114$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00188$
	ljmp	00116$
00188$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00189$
	ljmp	00116$
00189$:
;	cJSON.c:357: ret=print_value(child,depth+1,fmt);
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
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
	mov	r0,#_print_value
	mov	r1,#(_print_value >> 8)
	mov	r2,#(_print_value >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	mov	ar4,r2
;	cJSON.c:358: entries[i++]=ret;
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00190$
	inc	r0
	inc	@r0
00190$:
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	cJSON.c:359: if (ret) len+=strlen(ret)+2+(fmt?1:0); else fail=1;
	pop	ar7
	pop	ar6
	mov	a,r4
	orl	a,r3
	jz	00111$
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	push	ar7
	push	ar6
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	add	a,#0x02
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00139$
	mov	r3,#0x01
	sjmp	00140$
00139$:
	mov	r3,#0x00
00140$:
	mov	r2,#0x00
	mov	a,r3
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,r4
	add	a,r2
	mov	r4,a
	mov	a,r5
	addc	a,r3
	mov	r5,a
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	sjmp	00112$
00111$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00112$:
;	cJSON.c:360: child=child->next;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	ljmp	00114$
00116$:
;	cJSON.c:364: if (!fail) out=(char*)cJSON_malloc(len);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00118$
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
00118$:
;	cJSON.c:366: if (!out) fail=1;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00120$
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00120$:
;	cJSON.c:369: if (fail)
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00124$
;	cJSON.c:371: for (i=0;i<numentries;i++) if (entries[i]) cJSON_free(entries[i]);
	mov	r6,#0x00
	mov	r7,#0x00
00129$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00132$
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
	sjmp	00129$
00132$:
;	cJSON.c:373: return 0;
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00137$
00124$:
;	cJSON.c:377: *out='[';
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x5B
	lcall	__gptrput
;	cJSON.c:378: ptr=out+1;*ptr=0;
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r1,a
	mov	a,#0x01
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
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:379: for (i=0;i<numentries;i++)
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	r1,sp
	dec	r1
	mov	a,@r0
	add	a,#0xFF
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r5,#0x00
	mov	r6,#0x00
00133$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00198$
	ljmp	00136$
00198$:
;	cJSON.c:381: strcpy(ptr,entries[i]);ptr+=strlen(entries[i]);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r2,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strcpy
	mov	r1,#(_strcpy >> 8)
	mov	r2,#(_strcpy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	push	ar5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	cJSON.c:382: if (i!=numentries-1) {*ptr++=',';if(fmt)*ptr++=' ';*ptr=0;}
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00199$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00199$
	pop	ar6
	pop	ar5
	sjmp	00128$
00199$:
	pop	ar6
	pop	ar5
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x2C
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00126$
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x20
	lcall	__gptrput
00126$:
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
00128$:
;	cJSON.c:379: for (i=0;i<numentries;i++)
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00201$
	inc	r0
	inc	@r0
00201$:
	ljmp	00133$
00136$:
;	cJSON.c:386: *ptr++=']';*ptr++=0;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x5D
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:387: return out;	
	mov	a,sp
	add	a,#0xee
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00137$:
	mov	a,sp
	add	a,#0xEA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_object'
;------------------------------------------------------------
;value                     Allocated to stack - sp -26
;item                      Allocated to stack - sp -20
;child                     Allocated to stack - sp -17
;new_item                  Allocated to stack - sp -14
;sloc0                     Allocated to stack - sp -11
;sloc1                     Allocated to stack - sp -8
;sloc2                     Allocated to stack - sp -5
;sloc3                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:391: static const char *parse_object(cJSON *item,const char *value)
;	-----------------------------------------
;	 function parse_object
;	-----------------------------------------
_parse_object:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x12
;	cJSON.c:394: if (*value!='{')	{ep=value;return 0;}	/* not an object! */
	mov	sp,a
	add	a,#0xe6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x7B,00154$
	sjmp	00102$
00154$:
	mov	dptr,#_ep
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00126$
00102$:
;	cJSON.c:396: item->type=cJSON_Object;
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x09
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
	mov	a,#0x06
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	cJSON.c:397: value=skip(value+1);
	inc	r2
	cjne	r2,#0x00,00155$
	inc	r3
00155$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
;	cJSON.c:398: if (*value=='}') return value+1;	/* empty array. */
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x7D,00104$
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
	ljmp	00126$
00104$:
;	cJSON.c:400: item->child=child=cJSON_New_Item();
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	xch	a,r0
	mov	a,sp
	add	a,#0xf2
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,sp
	add	a,#0xef
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
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	cJSON.c:401: if (!item->child) return 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00126$
00106$:
;	cJSON.c:402: value=skip(parse_string(child,skip(value)));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_string
	mov	r1,#(_parse_string >> 8)
	mov	r2,#(_parse_string >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:403: if (!value) return 0;
	mov	a,r5
	orl	a,r6
	jnz	00108$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00126$
00108$:
;	cJSON.c:404: child->string=child->valuestring;child->valuestring=0;
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x14
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
	add	a,#0xef
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x0B
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
	add	a,#0xf5
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
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
	inc	dptr
	clr	a
	lcall	__gptrput
;	cJSON.c:405: if (*value!=':') {ep=value;return 0;}	/* fail! */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x3A,00160$
	sjmp	00110$
00160$:
	mov	dptr,#_ep
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00126$
00110$:
;	cJSON.c:406: value=skip(parse_value(child,skip(value+1)));	/* skip any spacing, get the value. */
	inc	r5
	cjne	r5,#0x00,00161$
	inc	r6
00161$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xec
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_value
	mov	r1,#(_parse_value >> 8)
	mov	r2,#(_parse_value >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	cJSON.c:407: if (!value) return 0;
	mov	a,r5
	orl	a,r6
	jnz	00121$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00126$
;	cJSON.c:409: while (*value==',')
00121$:
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
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
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2C,00163$
	sjmp	00164$
00163$:
	ljmp	00123$
00164$:
;	cJSON.c:412: if (!(new_item=cJSON_New_Item()))	return 0; /* memory fail */
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	mov	a,r7
	orl	a,r6
	jnz	00114$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00126$
00114$:
;	cJSON.c:413: child->next=new_item;new_item->prev=child;child=new_item;
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xef
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
;	cJSON.c:414: value=skip(parse_string(child,skip(value+1)));
	mov	a,sp
	add	a,#0xf8
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_string
	mov	r1,#(_parse_string >> 8)
	mov	r2,#(_parse_string >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r4,b
;	cJSON.c:415: if (!value) return 0;
	mov	a,r5
	orl	a,r6
	jnz	00116$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00126$
00116$:
;	cJSON.c:416: child->string=child->valuestring;child->valuestring=0;
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x14
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
	add	a,#0xf2
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x0B
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
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
	inc	dptr
	clr	a
	lcall	__gptrput
;	cJSON.c:417: if (*value!=':') {ep=value;return 0;}	/* fail! */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x3A,00167$
	sjmp	00118$
00167$:
	mov	dptr,#_ep
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00126$
00118$:
;	cJSON.c:418: value=skip(parse_value(child,skip(value+1)));	/* skip any spacing, get the value. */
	mov	a,#0x01
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_parse_value
	mov	r1,#(_parse_value >> 8)
	mov	r2,#(_parse_value >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_skip
	mov	r1,#(_skip >> 8)
	mov	r2,#(_skip >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xe6
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	cJSON.c:419: if (!value) return 0;
	mov	a,r5
	orl	a,r6
	jz	00168$
	ljmp	00121$
00168$:
	mov	dptr,#0x0000
	mov	b,#0x00
	sjmp	00126$
00123$:
;	cJSON.c:422: if (*value=='}') return value+1;	/* end of array */
	cjne	r4,#0x7D,00125$
	mov	a,sp
	add	a,#0xf8
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00126$
00125$:
;	cJSON.c:423: ep=value;return 0;	/* malformed. */
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dptr,#_ep
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
00126$:
	mov	a,sp
	add	a,#0xEB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_object'
;------------------------------------------------------------
;depth                     Allocated to stack - sp -38
;fmt                       Allocated to stack - sp -40
;item                      Allocated to registers r7 r6 r5 
;entries                   Allocated to stack - sp -33
;names                     Allocated to stack - sp -30
;out                       Allocated to stack - sp -27
;ptr                       Allocated to stack - sp -24
;ret                       Allocated to stack - sp -2
;str                       Allocated to stack - sp -5
;len                       Allocated to stack - sp -21
;i                         Allocated to stack - sp -19
;j                         Allocated to registers r4 r5 
;child                     Allocated to stack - sp -17
;numentries                Allocated to stack - sp -12
;fail                      Allocated to stack - sp -14
;sloc0                     Allocated to stack - sp -12
;sloc1                     Allocated to stack - sp -10
;sloc2                     Allocated to stack - sp -8
;sloc3                     Allocated to stack - sp -5
;sloc4                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:427: static char *print_object(cJSON *item,int depth,int fmt)
;	-----------------------------------------
;	 function print_object
;	-----------------------------------------
_print_object:
	mov	a,sp
	add	a,#0x22
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
;	cJSON.c:430: char *out=0,*ptr,*ret,*str;int len=7,i=0,j;
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	@r0,#0x07
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:431: cJSON *child=item->child;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x06
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	cJSON.c:432: int numentries=0,fail=0;
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	cJSON.c:434: while (child) numentries++,child=child->next;
	mov	r2,#0x00
	mov	r4,#0x00
00101$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00204$
	inc	r2
	cjne	r2,#0x00,00245$
	inc	r4
00245$:
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	sjmp	00101$
00204$:
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	cJSON.c:436: if (!numentries)
	mov	a,r2
	orl	a,r4
	jz	00246$
	ljmp	00109$
00246$:
;	cJSON.c:438: out=(char*)cJSON_malloc(fmt?depth+4:3);
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00167$
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	sjmp	00168$
00167$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#0x03
	inc	r0
	mov	@r0,#0x00
00168$:
	mov	a,sp
	add	a,#0xf6
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:439: if (!out)	return 0;
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00165$
00105$:
;	cJSON.c:440: ptr=out;*ptr++='{';
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x7B
	lcall	__gptrput
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,sp
	add	a,#0xe8
	mov	r1,a
	mov	a,#0x01
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
;	cJSON.c:441: if (fmt) {*ptr++='\n';for (i=0;i<depth-1;i++) *ptr++='\t';}
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00249$
	ljmp	00107$
00249$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x0A
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	a,@r0
	add	a,#0xFF
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r6,a
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00145$:
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00205$
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,#0x09
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00251$
	inc	r0
	inc	@r0
00251$:
	sjmp	00145$
00205$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
00107$:
;	cJSON.c:442: *ptr++='}';*ptr++=0;
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x7D
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:443: return out;
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00165$
00109$:
;	cJSON.c:446: entries=(char**)cJSON_malloc(numentries*sizeof(char*));
	push	ar2
	push	ar4
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:447: if (!entries) return 0;
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00111$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00165$
00111$:
;	cJSON.c:448: names=(char**)cJSON_malloc(numentries*sizeof(char*));
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:449: if (!names) {cJSON_free(entries);return 0;}
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00165$
00113$:
;	cJSON.c:450: memset(entries,0,sizeof(char*)*numentries);
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
;	cJSON.c:451: memset(names,0,sizeof(char*)*numentries);
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
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
;	cJSON.c:454: child=item->child;depth++;if (fmt) len+=depth;
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00254$
	inc	r0
	inc	@r0
00254$:
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00186$
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	a,sp
	add	a,#0xeb
	mov	r1,a
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	cJSON.c:455: while (child)
00186$:
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r2,#0x00
	mov	r3,#0x00
00120$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00256$
	ljmp	00122$
00256$:
;	cJSON.c:457: names[i]=str=print_string_ptr(child->string);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe0
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,r2
	add	a,@r0
	mov	@r1,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	push	ar3
	push	ar2
	mov	r0,#_print_string_ptr
	mov	r1,#(_print_string_ptr >> 8)
	mov	r2,#(_print_string_ptr >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	cJSON.c:458: entries[i++]=ret=print_value(child,depth,fmt);
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00257$
	inc	r0
	inc	@r0
00257$:
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,sp
	add	a,#0xdd
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,r6
	add	a,@r0
	mov	@r1,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xd4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xd4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xe7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_print_value
	mov	r1,#(_print_value >> 8)
	mov	r2,#(_print_value >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	cJSON.c:459: if (str && ret) len+=strlen(ret)+strlen(str)+2+(fmt?2+depth:0); else fail=1;
	pop	ar7
	pop	ar6
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00258$
	ljmp	00117$
00258$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00259$
	ljmp	00117$
00259$:
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00169$
	mov	ar4,r6
	mov	ar5,r7
	sjmp	00170$
00169$:
	mov	r4,#0x00
	mov	r5,#0x00
00170$:
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r4
	add	a,r6
	mov	r4,a
	mov	a,r5
	addc	a,r7
	mov	r5,a
	mov	a,sp
	add	a,#0xe9
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	pop	ar7
	pop	ar6
	sjmp	00118$
00117$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00118$:
;	cJSON.c:460: child=child->next;
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	ljmp	00120$
00122$:
;	cJSON.c:464: if (!fail) out=(char*)cJSON_malloc(len);
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00124$
	mov	a,sp
	add	a,#0xeb
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
00124$:
;	cJSON.c:465: if (!out) fail=1;
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00126$
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00126$:
;	cJSON.c:468: if (fail)
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00132$
;	cJSON.c:470: for (i=0;i<numentries;i++) {if (names[i]) cJSON_free(names[i]);if (entries[i]) cJSON_free(entries[i]);}
	mov	r6,#0x00
	mov	r7,#0x00
00149$:
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00152$
	inc	r6
	cjne	r6,#0x00,00149$
	inc	r7
	sjmp	00149$
00152$:
;	cJSON.c:472: return 0;
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00165$
00132$:
;	cJSON.c:476: *out='{';ptr=out+1;if (fmt)*ptr++='\n';*ptr=0;
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x7B
	lcall	__gptrput
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	a,sp
	add	a,#0xe8
	mov	r1,a
	mov	a,#0x01
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
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00134$
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x0A
	lcall	__gptrput
00134$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:477: for (i=0;i<numentries;i++)
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,@r0
	add	a,#0xFF
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00157$:
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,sp
	add	a,#0xf4
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00267$
	ljmp	00160$
00267$:
;	cJSON.c:479: if (fmt) for (j=0;j<depth;j++) *ptr++='\t';
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00136$
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r5,#0x00
00153$:
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00208$
	mov	dpl,r7
	mov	dph,r6
	mov	b,r3
	mov	a,#0x09
	lcall	__gptrput
	inc	dptr
	mov	r7,dpl
	mov	r6,dph
	inc	r4
	cjne	r4,#0x00,00153$
	inc	r5
	sjmp	00153$
00208$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar3
00136$:
;	cJSON.c:480: strcpy(ptr,names[i]);ptr+=strlen(names[i]);
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar7
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar6
	mov	a,sp
	add	a,#0xe2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_strcpy
	mov	r1,#(_strcpy >> 8)
	mov	r2,#(_strcpy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	cJSON.c:481: *ptr++=':';if (fmt) *ptr++='\t';
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x3A
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00138$
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x09
	lcall	__gptrput
00138$:
;	cJSON.c:482: strcpy(ptr,entries[i]);ptr+=strlen(entries[i]);
	mov	a,sp
	add	a,#0xdf
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
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
	mov	r0,#_strcpy
	mov	r1,#(_strcpy >> 8)
	mov	r2,#(_strcpy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_strlen
	mov	r1,#(_strlen >> 8)
	mov	r2,#(_strlen >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	cJSON.c:483: if (i!=numentries-1) *ptr++=',';
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00272$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00272$
	sjmp	00140$
00272$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x2C
	lcall	__gptrput
00140$:
;	cJSON.c:484: if (fmt) *ptr++='\n';*ptr=0;
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00142$
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x0A
	lcall	__gptrput
00142$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:477: for (i=0;i<numentries;i++)
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xed
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00274$
	inc	r0
	inc	@r0
00274$:
	ljmp	00157$
00160$:
;	cJSON.c:489: if (fmt) for (i=0;i<depth-1;i++) *ptr++='\t';
	mov	a,sp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00144$
	mov	a,sp
	add	a,#0xda
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	add	a,#0xFF
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r2,#0x00
	mov	r7,#0x00
00161$:
	mov	r0,sp
	dec	r0
	dec	r0
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00209$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x09
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	inc	r2
	cjne	r2,#0x00,00161$
	inc	r7
	sjmp	00161$
00209$:
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00144$:
;	cJSON.c:490: *ptr++='}';*ptr++=0;
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x7D
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,sp
	add	a,#0xe8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	cJSON.c:491: return out;	
	mov	a,sp
	add	a,#0xe5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00165$:
	mov	a,sp
	add	a,#0xDE
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_GetArraySize'
;------------------------------------------------------------
;array                     Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	cJSON.c:495: int    cJSON_GetArraySize(cJSON *array)							{cJSON *c=array->child;int i=0;while(c)i++,c=c->next;return i;}
;	-----------------------------------------
;	 function cJSON_GetArraySize
;	-----------------------------------------
_cJSON_GetArraySize:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r5
	orl	a,r6
	jz	00103$
	inc	r3
	cjne	r3,#0x00,00112$
	inc	r4
00112$:
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
	sjmp	00101$
00103$:
	mov	dpl,r3
	mov	dph,r4
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_GetArrayItem'
;------------------------------------------------------------
;item                      Allocated to stack - sp -4
;array                     Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:496: cJSON *cJSON_GetArrayItem(cJSON *array,int item)				{cJSON *c=array->child;  while (c && item>0) item--,c=c->next; return c;}
;	-----------------------------------------
;	 function cJSON_GetArrayItem
;	-----------------------------------------
_cJSON_GetArrayItem:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00102$:
	mov	a,r5
	orl	a,r6
	jz	00104$
	clr	c
	clr	a
	subb	a,r3
	clr	a
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	dec	r3
	cjne	r3,#0xFF,00116$
	dec	r4
00116$:
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
	sjmp	00102$
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_GetObjectItem'
;------------------------------------------------------------
;string                    Allocated to stack - sp -5
;object                    Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:497: cJSON *cJSON_GetObjectItem(cJSON *object,const char *string)	{cJSON *c=object->child; while (c && cJSON_strcasecmp(c->string,string)) c=c->next; return c;}
;	-----------------------------------------
;	 function cJSON_GetObjectItem
;	-----------------------------------------
_cJSON_GetObjectItem:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
00102$:
	mov	a,r5
	orl	a,r6
	jz	00104$
	mov	a,#0x14
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
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
	mov	dph,r3
	mov	b,r4
	mov	r0,#_cJSON_strcasecmp
	mov	r1,#(_cJSON_strcasecmp >> 8)
	mov	r2,#(_cJSON_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00104$
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
	sjmp	00102$
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'suffix_object'
;------------------------------------------------------------
;item                      Allocated to stack - sp -5
;prev                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:500: static void suffix_object(cJSON *prev,cJSON *item) {prev->next=item;item->prev=prev;}
;	-----------------------------------------
;	 function suffix_object
;	-----------------------------------------
_suffix_object:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_reference'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;ref                       Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:502: static cJSON *create_reference(cJSON *item) {cJSON *ref=cJSON_New_Item();if (!ref) return 0;memcpy(ref,item,sizeof(cJSON));ref->string=0;ref->type|=cJSON_IsReference;ref->next=ref->prev=0;return ref;}
;	-----------------------------------------
;	 function create_reference
;	-----------------------------------------
_create_reference:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00103$
00102$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x17
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
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
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x01
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
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
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
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
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00103$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_AddItemToArray'
;------------------------------------------------------------
;item                      Allocated to stack - sp -5
;array                     Allocated to registers r5 r6 r7 
;c                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	cJSON.c:505: void   cJSON_AddItemToArray(cJSON *array, cJSON *item)						{cJSON *c=array->child;if (!item) return; if (!c) {array->child=item;} else {while (c && c->next) c=c->next; suffix_object(c,item);}}
;	-----------------------------------------
;	 function cJSON_AddItemToArray
;	-----------------------------------------
_cJSON_AddItemToArray:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	sjmp	00110$
00102$:
	mov	a,r2
	orl	a,r3
	jnz	00104$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	sjmp	00110$
00104$:
	mov	a,r2
	orl	a,r3
	jz	00106$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00106$
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00104$
00106$:
	mov	a,sp
	add	a,#0xfb
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
	mov	r0,#_suffix_object
	mov	r1,#(_suffix_object >> 8)
	mov	r2,#(_suffix_object >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00110$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_AddItemToObject'
;------------------------------------------------------------
;string                    Allocated to stack - sp -11
;item                      Allocated to stack - sp -14
;object                    Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:506: void   cJSON_AddItemToObject(cJSON *object,const char *string,cJSON *item)	{if (!item) return; if (item->string) cJSON_free(item->string);item->string=cJSON_strdup(string);cJSON_AddItemToArray(object,item);}
;	-----------------------------------------
;	 function cJSON_AddItemToObject
;	-----------------------------------------
_cJSON_AddItemToObject:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	ljmp	00105$
00102$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_AddItemToArray
	mov	r1,#(_cJSON_AddItemToArray >> 8)
	mov	r2,#(_cJSON_AddItemToArray >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00105$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_AddItemReferenceToArray'
;------------------------------------------------------------
;item                      Allocated to stack - sp -5
;array                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:507: void	cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item)						{cJSON_AddItemToArray(array,create_reference(item));}
;	-----------------------------------------
;	 function cJSON_AddItemReferenceToArray
;	-----------------------------------------
_cJSON_AddItemReferenceToArray:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_create_reference
	mov	r1,#(_create_reference >> 8)
	mov	r2,#(_create_reference >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_AddItemToArray
	mov	r1,#(_cJSON_AddItemToArray >> 8)
	mov	r2,#(_cJSON_AddItemToArray >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_AddItemReferenceToObject'
;------------------------------------------------------------
;string                    Allocated to stack - sp -5
;item                      Allocated to stack - sp -8
;object                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:508: void	cJSON_AddItemReferenceToObject(cJSON *object,const char *string,cJSON *item)	{cJSON_AddItemToObject(object,string,create_reference(item));}
;	-----------------------------------------
;	 function cJSON_AddItemReferenceToObject
;	-----------------------------------------
_cJSON_AddItemReferenceToObject:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_create_reference
	mov	r1,#(_create_reference >> 8)
	mov	r2,#(_create_reference >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar2
	push	ar3
	push	ar4
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_AddItemToObject
	mov	r1,#(_cJSON_AddItemToObject >> 8)
	mov	r2,#(_cJSON_AddItemToObject >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_DetachItemFromArray'
;------------------------------------------------------------
;which                     Allocated to stack - sp -19
;array                     Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -14
;sloc0                     Allocated to stack - sp -11
;sloc1                     Allocated to stack - sp -5
;sloc2                     Allocated to stack - sp -8
;sloc3                     Allocated to stack - sp -5
;sloc4                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:510: cJSON *cJSON_DetachItemFromArray(cJSON *array,int which)			{cJSON *c=array->child;while (c && which>0) c=c->next,which--;if (!c) return 0;
;	-----------------------------------------
;	 function cJSON_DetachItemFromArray
;	-----------------------------------------
_cJSON_DetachItemFromArray:
	mov	a,sp
	add	a,#0x0F
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
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
	add	a,#0xed
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
00102$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
	clr	c
	clr	a
	subb	a,r7
	clr	a
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	dec	r7
	cjne	r7,#0xFF,00132$
	dec	r6
00132$:
	sjmp	00102$
00104$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00113$
00106$:
;	cJSON.c:511: if (c->prev) c->prev->next=c->next;if (c->next) c->next->prev=c->prev;if (c==array->child) array->child=c->next;c->prev=c->next=0;return c;}
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x03
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
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
	mov	a,sp
	add	a,#0xf2
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
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
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00108$:
	mov	a,sp
	add	a,#0xf2
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00110$
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00110$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
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
	jz	00137$
	sjmp	00112$
00137$:
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00112$:
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
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
	inc	dptr
	clr	a
	lcall	__gptrput
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
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00113$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF1
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_DeleteItemFromArray'
;------------------------------------------------------------
;which                     Allocated to stack - sp -4
;array                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:512: void   cJSON_DeleteItemFromArray(cJSON *array,int which)			{cJSON_Delete(cJSON_DetachItemFromArray(array,which));}
;	-----------------------------------------
;	 function cJSON_DeleteItemFromArray
;	-----------------------------------------
_cJSON_DeleteItemFromArray:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_DetachItemFromArray
	mov	r1,#(_cJSON_DetachItemFromArray >> 8)
	mov	r2,#(_cJSON_DetachItemFromArray >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_DetachItemFromObject'
;------------------------------------------------------------
;string                    Allocated to stack - sp -8
;object                    Allocated to stack - sp -2
;i                         Allocated to registers r6 r7 
;c                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	cJSON.c:513: cJSON *cJSON_DetachItemFromObject(cJSON *object,const char *string) {int i=0;cJSON *c=object->child;while (c && cJSON_strcasecmp(c->string,string)) i++,c=c->next;if (c) return cJSON_DetachItemFromArray(object,i);return 0;}
;	-----------------------------------------
;	 function cJSON_DetachItemFromObject
;	-----------------------------------------
_cJSON_DetachItemFromObject:
	push	dpl
	push	dph
	push	b
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
	mov	a,r2
	orl	a,r3
	jz	00104$
	push	ar6
	push	ar7
	mov	a,#0x14
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
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_strcasecmp
	mov	r1,#(_cJSON_strcasecmp >> 8)
	mov	r2,#(_cJSON_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00104$
	inc	r6
	cjne	r6,#0x00,00120$
	inc	r7
00120$:
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
	ljmp	00102$
00104$:
	mov	a,r2
	orl	a,r3
	jz	00106$
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_DetachItemFromArray
	mov	r1,#(_cJSON_DetachItemFromArray >> 8)
	mov	r2,#(_cJSON_DetachItemFromArray >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00107$
00106$:
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_DeleteItemFromObject'
;------------------------------------------------------------
;string                    Allocated to stack - sp -5
;object                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:514: void   cJSON_DeleteItemFromObject(cJSON *object,const char *string) {cJSON_Delete(cJSON_DetachItemFromObject(object,string));}
;	-----------------------------------------
;	 function cJSON_DeleteItemFromObject
;	-----------------------------------------
_cJSON_DeleteItemFromObject:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_DetachItemFromObject
	mov	r1,#(_cJSON_DetachItemFromObject >> 8)
	mov	r2,#(_cJSON_DetachItemFromObject >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_ReplaceItemInArray'
;------------------------------------------------------------
;which                     Allocated to stack - sp -22
;newitem                   Allocated to stack - sp -25
;array                     Allocated to registers r5 r6 r7 
;c                         Allocated to stack - sp -17
;sloc0                     Allocated to stack - sp -14
;sloc1                     Allocated to stack - sp -8
;sloc2                     Allocated to stack - sp -11
;sloc3                     Allocated to stack - sp -8
;sloc4                     Allocated to stack - sp -5
;sloc5                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:517: void   cJSON_ReplaceItemInArray(cJSON *array,int which,cJSON *newitem)		{cJSON *c=array->child;while (c && which>0) c=c->next,which--;if (!c) return;
;	-----------------------------------------
;	 function cJSON_ReplaceItemInArray
;	-----------------------------------------
_cJSON_ReplaceItemInArray:
	mov	a,sp
	add	a,#0x12
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf2
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
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xef
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
	add	a,#0xea
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
00102$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
	clr	c
	clr	a
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	dec	r4
	cjne	r4,#0xFF,00129$
	dec	r3
00129$:
	sjmp	00102$
00104$:
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
	ljmp	00112$
00106$:
;	cJSON.c:518: newitem->next=c->next;newitem->prev=c->prev;if (newitem->next) newitem->next->prev=newitem;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xe4
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
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
	add	a,#0xec
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xf5
	mov	r1,a
	mov	a,#0x03
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
	add	a,#0xec
	mov	r0,a
	mov	a,sp
	add	a,#0xf8
	mov	r1,a
	mov	a,#0x03
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf2
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
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r2
	orl	a,r3
	jz	00108$
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00108$:
;	cJSON.c:519: if (c==array->child) array->child=newitem; else newitem->prev->next=newitem;c->next=c->prev=0;cJSON_Delete(c);}
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	a,sp
	add	a,#0xf2
	mov	r1,a
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
	jz	00133$
	sjmp	00110$
00133$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	sjmp	00111$
00110$:
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00111$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
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
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xef
	mov	r0,a
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
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xef
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
00112$:
	mov	a,sp
	add	a,#0xEE
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_ReplaceItemInObject'
;------------------------------------------------------------
;string                    Allocated to stack - sp -13
;newitem                   Allocated to stack - sp -16
;object                    Allocated to stack - sp -7
;i                         Allocated to stack - sp -4
;c                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:520: void   cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem){int i=0;cJSON *c=object->child;while(c && cJSON_strcasecmp(c->string,string))i++,c=c->next;if(c){newitem->string=cJSON_strdup(string);cJSON_ReplaceItemInArray(object,i,newitem);}}
;	-----------------------------------------
;	 function cJSON_ReplaceItemInObject
;	-----------------------------------------
_cJSON_ReplaceItemInObject:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	add	a,#0xf9
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
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00102$:
	mov	a,r2
	orl	a,r3
	jz	00104$
	mov	a,#0x14
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
	push	ar4
	push	ar3
	push	ar2
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_strcasecmp
	mov	r1,#(_cJSON_strcasecmp >> 8)
	mov	r2,#(_cJSON_strcasecmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00104$
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00120$
	inc	r0
	inc	@r0
00120$:
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
	sjmp	00102$
00104$:
	mov	a,r2
	orl	a,r3
	jnz	00121$
	ljmp	00107$
00121$:
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	pop	ar4
	pop	ar5
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
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_ReplaceItemInArray
	mov	r1,#(_cJSON_ReplaceItemInArray >> 8)
	mov	r2,#(_cJSON_ReplaceItemInArray >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00107$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateNull'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:523: cJSON *cJSON_CreateNull(void)					{cJSON *item=cJSON_New_Item();if(item)item->type=cJSON_NULL;return item;}
;	-----------------------------------------
;	 function cJSON_CreateNull
;	-----------------------------------------
_cJSON_CreateNull:
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00102$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateTrue'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:524: cJSON *cJSON_CreateTrue(void)					{cJSON *item=cJSON_New_Item();if(item)item->type=cJSON_True;return item;}
;	-----------------------------------------
;	 function cJSON_CreateTrue
;	-----------------------------------------
_cJSON_CreateTrue:
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00102$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateFalse'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:525: cJSON *cJSON_CreateFalse(void)					{cJSON *item=cJSON_New_Item();if(item)item->type=cJSON_False;return item;}
;	-----------------------------------------
;	 function cJSON_CreateFalse
;	-----------------------------------------
_cJSON_CreateFalse:
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00102$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateBool'
;------------------------------------------------------------
;b                         Allocated to stack - sp -4
;item                      Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	cJSON.c:526: cJSON *cJSON_CreateBool(int b)					{cJSON *item=cJSON_New_Item();if(item)item->type=b?cJSON_True:cJSON_False;return item;}
;	-----------------------------------------
;	 function cJSON_CreateBool
;	-----------------------------------------
_cJSON_CreateBool:
	push	dpl
	push	dph
	inc	sp
	inc	sp
	inc	sp
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00105$
	mov	r5,#0x01
	sjmp	00106$
00105$:
	mov	r5,#0x00
00106$:
	mov	ar4,r5
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00102$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateNumber'
;------------------------------------------------------------
;num                       Allocated to stack - sp -6
;item                      Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:527: cJSON *cJSON_CreateNumber(float num)			{cJSON *item=cJSON_New_Item();if(item){item->type=cJSON_Number;item->valuefloat=num;item->valueint=(int)num;}return item;}
;	-----------------------------------------
;	 function cJSON_CreateNumber
;	-----------------------------------------
_cJSON_CreateNumber:
	push	dpl
	push	dph
	push	b
	push	acc
	inc	sp
	inc	sp
	inc	sp
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00107$
	ljmp	00102$
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	mov	a,#0x03
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0E
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2sint
	mov	r3,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00102$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateString'
;------------------------------------------------------------
;string                    Allocated to stack - sp -5
;item                      Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:528: cJSON *cJSON_CreateString(const char *string)	{cJSON *item=cJSON_New_Item();if(item){item->type=cJSON_String;item->valuestring=cJSON_strdup(string);}return item;}
;	-----------------------------------------
;	 function cJSON_CreateString
;	-----------------------------------------
_cJSON_CreateString:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x09
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
	mov	a,#0x04
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00102$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateArray'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:529: cJSON *cJSON_CreateArray(void)					{cJSON *item=cJSON_New_Item();if(item)item->type=cJSON_Array;return item;}
;	-----------------------------------------
;	 function cJSON_CreateArray
;	-----------------------------------------
_cJSON_CreateArray:
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00102$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x05
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateObject'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	cJSON.c:530: cJSON *cJSON_CreateObject(void)					{cJSON *item=cJSON_New_Item();if(item)item->type=cJSON_Object;return item;}
;	-----------------------------------------
;	 function cJSON_CreateObject
;	-----------------------------------------
_cJSON_CreateObject:
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	00102$
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x06
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateIntArray'
;------------------------------------------------------------
;count                     Allocated to stack - sp -13
;numbers                   Allocated to stack - sp -8
;i                         Allocated to registers r6 r7 
;n                         Allocated to stack - sp -5
;p                         Allocated to stack - sp -2
;a                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	cJSON.c:533: cJSON *cJSON_CreateIntArray(const int *numbers,int count)		{int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateNumber(numbers[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
;	-----------------------------------------
;	 function cJSON_CreateIntArray
;	-----------------------------------------
_cJSON_CreateIntArray:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	r0,#_cJSON_CreateArray
	mov	r1,#(_cJSON_CreateArray >> 8)
	mov	r2,#(_cJSON_CreateArray >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	a,r2
	orl	a,r3
	jnz	00120$
	ljmp	00108$
00120$:
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ljmp	00108$
00121$:
	push	ar2
	push	ar3
	push	ar4
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	___sint2fs
	mov	r2,dpl
	push	ar2
	mov	r0,#_cJSON_CreateNumber
	mov	r1,#(_cJSON_CreateNumber >> 8)
	mov	r2,#(_cJSON_CreateNumber >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	orl	a,r7
	jnz	00102$
	push	ar6
	push	ar7
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	pop	ar7
	pop	ar6
	sjmp	00103$
00102$:
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_suffix_object
	mov	r1,#(_suffix_object >> 8)
	mov	r2,#(_suffix_object >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
00103$:
	mov	a,sp
	add	a,#0xfb
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
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	ljmp	00105$
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateFloatArray'
;------------------------------------------------------------
;count                     Allocated to stack - sp -13
;numbers                   Allocated to stack - sp -8
;i                         Allocated to registers r6 r7 
;n                         Allocated to stack - sp -5
;p                         Allocated to stack - sp -2
;a                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	cJSON.c:534: cJSON *cJSON_CreateFloatArray(const float *numbers,int count)	{int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateNumber(numbers[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
;	-----------------------------------------
;	 function cJSON_CreateFloatArray
;	-----------------------------------------
_cJSON_CreateFloatArray:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	r0,#_cJSON_CreateArray
	mov	r1,#(_cJSON_CreateArray >> 8)
	mov	r2,#(_cJSON_CreateArray >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	a,r2
	orl	a,r3
	jnz	00120$
	ljmp	00108$
00120$:
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ljmp	00108$
00121$:
	push	ar2
	push	ar3
	push	ar4
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar7
	push	ar6
	push	ar2
	mov	r0,#_cJSON_CreateNumber
	mov	r1,#(_cJSON_CreateNumber >> 8)
	mov	r2,#(_cJSON_CreateNumber >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	orl	a,r7
	jnz	00102$
	push	ar6
	push	ar7
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	pop	ar7
	pop	ar6
	sjmp	00103$
00102$:
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_suffix_object
	mov	r1,#(_suffix_object >> 8)
	mov	r2,#(_suffix_object >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
00103$:
	mov	a,sp
	add	a,#0xfb
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
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	ljmp	00105$
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateDoubleArray'
;------------------------------------------------------------
;count                     Allocated to stack - sp -13
;numbers                   Allocated to stack - sp -8
;i                         Allocated to registers r6 r7 
;n                         Allocated to stack - sp -5
;p                         Allocated to stack - sp -2
;a                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	cJSON.c:535: cJSON *cJSON_CreateDoubleArray(const float *numbers,int count)	{int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateNumber(numbers[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
;	-----------------------------------------
;	 function cJSON_CreateDoubleArray
;	-----------------------------------------
_cJSON_CreateDoubleArray:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	r0,#_cJSON_CreateArray
	mov	r1,#(_cJSON_CreateArray >> 8)
	mov	r2,#(_cJSON_CreateArray >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	ar2,r7
	mov	ar3,r6
	mov	ar4,r5
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	a,r2
	orl	a,r3
	jnz	00120$
	ljmp	00108$
00120$:
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ljmp	00108$
00121$:
	push	ar2
	push	ar3
	push	ar4
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar7
	push	ar6
	push	ar2
	mov	r0,#_cJSON_CreateNumber
	mov	r1,#(_cJSON_CreateNumber >> 8)
	mov	r2,#(_cJSON_CreateNumber >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	orl	a,r7
	jnz	00102$
	push	ar6
	push	ar7
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	pop	ar7
	pop	ar6
	sjmp	00103$
00102$:
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,sp
	add	a,#0xf6
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
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_suffix_object
	mov	r1,#(_suffix_object >> 8)
	mov	r2,#(_suffix_object >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
00103$:
	mov	a,sp
	add	a,#0xfb
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
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	ljmp	00105$
00108$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_CreateStringArray'
;------------------------------------------------------------
;count                     Allocated to stack - sp -15
;strings                   Allocated to stack - sp -10
;i                         Allocated to stack - sp -7
;n                         Allocated to registers r3 r6 r7 
;p                         Allocated to stack - sp -5
;a                         Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:536: cJSON *cJSON_CreateStringArray(const char **strings,int count)	{int i;cJSON *n=0,*p=0,*a=cJSON_CreateArray();for(i=0;a && i<count;i++){n=cJSON_CreateString(strings[i]);if(!i)a->child=n;else suffix_object(p,n);p=n;}return a;}
;	-----------------------------------------
;	 function cJSON_CreateStringArray
;	-----------------------------------------
_cJSON_CreateStringArray:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x08
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	mov	r0,#_cJSON_CreateArray
	mov	r1,#(_cJSON_CreateArray >> 8)
	mov	r2,#(_cJSON_CreateArray >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00120$
	ljmp	00108$
00120$:
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,sp
	add	a,#0xf1
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	inc	r1
	mov	b,@r1
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ljmp	00108$
00121$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	mov	a,r5
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar5
	push	ar4
	mov	r0,#_cJSON_CreateString
	mov	r1,#(_cJSON_CreateString >> 8)
	mov	r2,#(_cJSON_CreateString >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar5
	pop	ar4
	sjmp	00103$
00102$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_suffix_object
	mov	r1,#(_suffix_object >> 8)
	mov	r2,#(_suffix_object >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00103$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00123$
	inc	r0
	inc	@r0
00123$:
	ljmp	00105$
00108$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_Duplicate'
;------------------------------------------------------------
;recurse                   Allocated to stack - sp -16
;item                      Allocated to stack - sp -11
;newitem                   Allocated to stack - sp -8
;cptr                      Allocated to registers r5 r6 r7 
;nptr                      Allocated to stack - sp -5
;newchild                  Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:539: cJSON *cJSON_Duplicate(cJSON *item,int recurse)
;	-----------------------------------------
;	 function cJSON_Duplicate
;	-----------------------------------------
_cJSON_Duplicate:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
;	cJSON.c:541: cJSON *newitem,*cptr,*nptr=0,*newchild;
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	cJSON.c:543: if (!item) return 0;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00123$
00102$:
;	cJSON.c:545: newitem=cJSON_New_Item();
	mov	r0,#_cJSON_New_Item
	mov	r1,#(_cJSON_New_Item >> 8)
	mov	r2,#(_cJSON_New_Item >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	cJSON.c:546: if (!newitem) return 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00123$
00104$:
;	cJSON.c:548: newitem->type=item->type&(~cJSON_IsReference),newitem->valueint=item->valueint,newitem->valuefloat=item->valuefloat;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x09
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
	anl	ar6,#0xFE
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x0E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf8
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
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x10
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	cJSON.c:549: if (item->valuestring)	{newitem->valuestring=cJSON_strdup(item->valuestring);	if (!newitem->valuestring)	{cJSON_Delete(newitem);return 0;}}
	mov	a,sp
	add	a,#0xf5
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r4
	orl	a,r3
	jz	00108$
	mov	a,sp
	add	a,#0xf8
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
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,r2
	orl	a,r3
	jnz	00108$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00123$
00108$:
;	cJSON.c:550: if (item->string)		{newitem->string=cJSON_strdup(item->string);			if (!newitem->string)		{cJSON_Delete(newitem);return 0;}}
	mov	a,sp
	add	a,#0xf5
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
	mov	a,r5
	orl	a,r6
	jz	00112$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_cJSON_strdup
	mov	r1,#(_cJSON_strdup >> 8)
	mov	r2,#(_cJSON_strdup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,r5
	orl	a,r6
	jnz	00112$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00123$
00112$:
;	cJSON.c:552: if (!recurse) return newitem;
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ljmp	00123$
00114$:
;	cJSON.c:554: cptr=item->child;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x06
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
;	cJSON.c:555: while (cptr)
00120$:
	mov	a,r5
	orl	a,r6
	jnz	00154$
	ljmp	00122$
00154$:
;	cJSON.c:557: newchild=cJSON_Duplicate(cptr,1);		/* Duplicate (with recurse) each item in the ->next chain */
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_cJSON_Duplicate
	mov	r1,#(_cJSON_Duplicate >> 8)
	mov	r2,#(_cJSON_Duplicate >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	cJSON.c:558: if (!newchild) {cJSON_Delete(newitem);return 0;}
	mov	a,r2
	orl	a,r3
	jnz	00116$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_cJSON_Delete
	mov	r1,#(_cJSON_Delete >> 8)
	mov	r2,#(_cJSON_Delete >> 16)
	lcall	__sdcc_banked_call
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	00123$
00116$:
;	cJSON.c:559: if (nptr)	{nptr->next=newchild,newchild->prev=nptr;nptr=newchild;}	/* If newitem->child already set, then crosswire ->prev and ->next and move on */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00118$
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
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
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00119$
00118$:
;	cJSON.c:560: else		{newitem->child=newchild;nptr=newchild;}					/* Set newitem->child and move to it */
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	a,#0x06
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	cJSON.c:563: return newitem;
	pop	ar7
	pop	ar6
	pop	ar5
;	cJSON.c:560: else		{newitem->child=newchild;nptr=newchild;}					/* Set newitem->child and move to it */
00119$:
;	cJSON.c:561: cptr=cptr->next;
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
	ljmp	00120$
00122$:
;	cJSON.c:563: return newitem;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00123$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cJSON_Minify'
;------------------------------------------------------------
;json                      Allocated to registers r5 r6 r7 
;into                      Allocated to stack - sp -6
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -2
;------------------------------------------------------------
;	cJSON.c:566: void cJSON_Minify(char *json)
;	-----------------------------------------
;	 function cJSON_Minify
;	-----------------------------------------
_cJSON_Minify:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	cJSON.c:568: char *into=json;
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	cJSON.c:569: while (*json)
00139$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00185$
	ljmp	00141$
00185$:
;	cJSON.c:571: if (*json==' ') json++;
	cjne	r4,#0x20,00137$
	inc	r5
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00137$:
;	cJSON.c:572: else if (*json=='\t') json++;	/* Whitespace characters. */
	cjne	r4,#0x09,00134$
	inc	r5
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00134$:
;	cJSON.c:573: else if (*json=='\r') json++;
	cjne	r4,#0x0D,00131$
	inc	r5
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00131$:
;	cJSON.c:574: else if (*json=='\n') json++;
	cjne	r4,#0x0A,00128$
	inc	r5
	cjne	r5,#0x00,00139$
	inc	r6
	sjmp	00139$
00128$:
;	cJSON.c:575: else if (*json=='/' && json[1]=='/')  while (*json && *json!='\n') json++;	/* float-slash comments, to end of line. */
	cjne	r4,#0x2F,00124$
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
	cjne	r2,#0x2F,00124$
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00102$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00202$
	ljmp	00139$
00202$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x0A,00203$
	ljmp	00139$
00203$:
	inc	r2
	cjne	r2,#0x00,00204$
	inc	r3
00204$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00102$
00124$:
;	cJSON.c:576: else if (*json=='/' && json[1]=='*') {while (*json && !(*json=='*' && json[1]=='/')) json++;json+=2;}	/* multiline comments. */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2F,00205$
	sjmp	00206$
00205$:
	ljmp	00120$
00206$:
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
	cjne	r2,#0x2A,00120$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	jz	00109$
	cjne	r7,#0x2A,00108$
	mov	r0,sp
	dec	r0
	dec	r0
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
	cjne	r2,#0x2F,00212$
	sjmp	00109$
00212$:
00108$:
	mov	r0,sp
	dec	r0
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00213$
	inc	r0
	inc	@r0
00213$:
	sjmp	00107$
00109$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	ljmp	00139$
00120$:
;	cJSON.c:577: else if (*json=='\"'){*into++=*json++;while (*json && *json!='\"'){if (*json=='\\') *into++=*json++;*into++=*json++;}*into++=*json++;} /* string literals, which are \" sensitive. */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x22,00214$
	sjmp	00215$
00214$:
	ljmp	00117$
00215$:
	inc	r5
	cjne	r5,#0x00,00216$
	inc	r6
00216$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
00113$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	jz	00115$
	cjne	r3,#0x22,00218$
	sjmp	00115$
00218$:
	cjne	r3,#0x5C,00111$
	inc	r5
	cjne	r5,#0x00,00221$
	inc	r6
00221$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
00111$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	sjmp	00113$
00115$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00139$
00117$:
;	cJSON.c:578: else *into++=*json++;			/* All other characters. */
	inc	r5
	cjne	r5,#0x00,00222$
	inc	r6
00222$:
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	ljmp	00139$
00141$:
;	cJSON.c:580: *into=0;	/* and null-terminate. */
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "%d"
	.db 0x00
__str_1:
	.ascii "%f"
	.db 0x00
_firstByteMark:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF8	; 248
	.db #0xFC	; 252
__str_2:
	.db 0x00
__str_3:
	.db 0x22
	.db 0x5C
	.db 0x08
	.db 0x0C
	.db 0x0A
	.db 0x0D
	.db 0x09
	.db 0x00
__str_4:
	.ascii "u%04x"
	.db 0x00
__str_5:
	.ascii "null"
	.db 0x00
__str_6:
	.ascii "false"
	.db 0x00
__str_7:
	.ascii "true"
	.db 0x00
__str_8:
	.ascii "[]"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
