;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Wed Dec  2 18:10:56 2015
;--------------------------------------------------------
	.module etimer
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _process_poll
	.globl _process_post
	.globl _timer_expired
	.globl _timer_restart
	.globl _timer_reset
	.globl _timer_set
	.globl _clock_time
	.globl _etimer_process
	.globl _etimer_request_poll
	.globl _etimer_set
	.globl _etimer_reset
	.globl _etimer_restart
	.globl _etimer_adjust
	.globl _etimer_expired
	.globl _etimer_expiration_time
	.globl _etimer_start_time
	.globl _etimer_pending
	.globl _etimer_next_expiration_time
	.globl _etimer_stop
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
_timerlist:
	.ds 3
_next_expiration:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_etimer_process::
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
;Allocation info for local variables in function 'update_time'
;------------------------------------------------------------
;tdist                     Allocated to stack - sp -6
;now                       Allocated to stack - sp -4
;t                         Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:58: update_time(void)
;	-----------------------------------------
;	 function update_time
;	-----------------------------------------
_update_time:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	../../../contiki-sensinode//core/sys/etimer.c:64: if (timerlist == NULL) {
	mov	dptr,#_timerlist
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
	jnz	00104$
;	../../../contiki-sensinode//core/sys/etimer.c:65: next_expiration = 0;
	mov	dptr,#_next_expiration
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00110$
00104$:
;	../../../contiki-sensinode//core/sys/etimer.c:67: now = clock_time();
	mov	r0,#_clock_time
	mov	r1,#(_clock_time >> 8)
	mov	r2,#(_clock_time >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../../contiki-sensinode//core/sys/etimer.c:68: t = timerlist;
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../../../contiki-sensinode//core/sys/etimer.c:70: tdist = t->timer.start + t->timer.interval - now;
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
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
;	../../../contiki-sensinode//core/sys/etimer.c:71: for(t = t->next; t != NULL; t = t->next) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00106$:
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
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
	jnz	00121$
	ljmp	00109$
00121$:
;	../../../contiki-sensinode//core/sys/etimer.c:72: if(t->timer.start + t->timer.interval - now < tdist) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	add	a,r4
	mov	r2,a
	mov	a,r7
	addc	a,r5
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	r3,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	jnc	00108$
;	../../../contiki-sensinode//core/sys/etimer.c:73: tdist = t->timer.start + t->timer.interval - now;
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00108$:
;	../../../contiki-sensinode//core/sys/etimer.c:71: for(t = t->next; t != NULL; t = t->next) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00106$
00109$:
;	../../../contiki-sensinode//core/sys/etimer.c:76: next_expiration = now + tdist;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	mov	dptr,#_next_expiration
	mov	a,@r1
	add	a,@r0
	movx	@dptr,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	inc	dptr
	movx	@dptr,a
00110$:
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_etimer_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -15
;data                      Allocated to stack - sp -18
;process_pt                Allocated to registers r5 r6 r7 
;t                         Allocated to stack - sp -11
;u                         Allocated to stack - sp -8
;PT_YIELD_FLAG             Allocated to registers r4 
;p                         Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:80: PROCESS_THREAD(etimer_process, ev, data)
;	-----------------------------------------
;	 function process_thread_etimer_process
;	-----------------------------------------
_process_thread_etimer_process:
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	../../../contiki-sensinode//core/sys/etimer.c:84: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00180$
	cjne	r3,#0x00,00180$
	sjmp	00101$
00180$:
	cjne	r2,#0x59,00181$
	cjne	r3,#0x00,00181$
	sjmp	00102$
00181$:
	ljmp	00137$
00101$:
;	../../../contiki-sensinode//core/sys/etimer.c:86: timerlist = NULL;
	mov	dptr,#_timerlist
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//core/sys/etimer.c:88: while(1) {
00135$:
;	../../../contiki-sensinode//core/sys/etimer.c:89: PROCESS_YIELD();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x59
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00106$
	mov	dpl,#0x01
	ljmp	00142$
00106$:
;	../../../contiki-sensinode//core/sys/etimer.c:91: if(ev == PROCESS_EVENT_EXITED) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	cjne	@r0,#0x87,00183$
	sjmp	00184$
00183$:
	ljmp	00123$
00184$:
;	../../../contiki-sensinode//core/sys/etimer.c:92: struct process *p = data;
	mov	a,sp
	add	a,#0xee
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
;	../../../contiki-sensinode//core/sys/etimer.c:94: while(timerlist != NULL && timerlist->p == p) {
00109$:
	mov	dptr,#_timerlist
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
	jz	00111$
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x07
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
	mov	a,sp
	add	a,#0xf8
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
	jz	00187$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00111$
00187$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../../../contiki-sensinode//core/sys/etimer.c:95: timerlist = timerlist->next;
	mov	a,#0x04
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_timerlist
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	ljmp	00109$
00111$:
;	../../../contiki-sensinode//core/sys/etimer.c:98: if(timerlist != NULL) {
	mov	dptr,#_timerlist
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
	jnz	00188$
	ljmp	00135$
00188$:
;	../../../contiki-sensinode//core/sys/etimer.c:99: t = timerlist;
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../../contiki-sensinode//core/sys/etimer.c:100: while(t->next != NULL) {
00115$:
	mov	a,sp
	add	a,#0xf5
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
	mov	r0,sp
	dec	r0
	dec	r0
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
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00189$
	ljmp	00135$
00189$:
;	../../../contiki-sensinode//core/sys/etimer.c:101: if(t->next->p == p) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x07
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
	mov	a,sp
	add	a,#0xf8
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
	jz	00191$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00113$
00191$:
;	../../../contiki-sensinode//core/sys/etimer.c:102: t->next = t->next->next;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x04
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
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00115$
00113$:
;	../../../contiki-sensinode//core/sys/etimer.c:104: t = t->next;
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
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00115$
;	../../../contiki-sensinode//core/sys/etimer.c:107: continue;
00123$:
;	../../../contiki-sensinode//core/sys/etimer.c:108: } else if(ev != PROCESS_EVENT_POLL) {
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	cjne	@r0,#0x82,00192$
	sjmp	00193$
00192$:
	ljmp	00135$
00193$:
;	../../../contiki-sensinode//core/sys/etimer.c:112: again:
00125$:
;	../../../contiki-sensinode//core/sys/etimer.c:114: u = NULL;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../../../contiki-sensinode//core/sys/etimer.c:116: for(t = timerlist; t != NULL; t = t->next) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00138$:
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
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
	jnz	00194$
	ljmp	00135$
00194$:
;	../../../contiki-sensinode//core/sys/etimer.c:117: if(timer_expired(&t->timer)) {
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_timer_expired
	mov	r1,#(_timer_expired >> 8)
	mov	r2,#(_timer_expired >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00195$
	ljmp	00133$
00195$:
;	../../../contiki-sensinode//core/sys/etimer.c:118: if(process_post(t->p, PROCESS_EVENT_TIMER, t) == PROCESS_ERR_OK) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x07
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
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x88
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_process_post
	mov	r1,#(_process_post >> 8)
	mov	r2,#(_process_post >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00196$
	ljmp	00130$
00196$:
;	../../../contiki-sensinode//core/sys/etimer.c:123: t->p = PROCESS_NONE;
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
;	../../../contiki-sensinode//core/sys/etimer.c:124: if(u != NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00127$
;	../../../contiki-sensinode//core/sys/etimer.c:125: u->next = t->next;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf5
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
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,#0x04
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
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00128$
00127$:
;	../../../contiki-sensinode//core/sys/etimer.c:127: timerlist = t->next;
	mov	a,sp
	add	a,#0xf5
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_timerlist
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00128$:
;	../../../contiki-sensinode//core/sys/etimer.c:129: t->next = NULL;
	mov	a,sp
	add	a,#0xf5
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
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../contiki-sensinode//core/sys/etimer.c:130: update_time();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_update_time
	mov	r1,#(_update_time >> 8)
	mov	r2,#(_update_time >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/sys/etimer.c:131: goto again;
	ljmp	00125$
00130$:
;	../../../contiki-sensinode//core/sys/etimer.c:133: etimer_request_poll();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_etimer_request_poll
	mov	r1,#(_etimer_request_poll >> 8)
	mov	r2,#(_etimer_request_poll >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00133$:
;	../../../contiki-sensinode//core/sys/etimer.c:136: u = t;
	mov	a,sp
	add	a,#0xf5
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
;	../../../contiki-sensinode//core/sys/etimer.c:116: for(t = timerlist; t != NULL; t = t->next) {
	mov	a,sp
	add	a,#0xf5
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00138$
;	../../../contiki-sensinode//core/sys/etimer.c:141: PROCESS_END();
00137$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x03
00142$:
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_request_poll'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:145: etimer_request_poll(void)
;	-----------------------------------------
;	 function etimer_request_poll
;	-----------------------------------------
_etimer_request_poll:
;	../../../contiki-sensinode//core/sys/etimer.c:147: process_poll(&etimer_process);
	mov	dptr,#_etimer_process
	mov	b,#0x00
	mov	r0,#_process_poll
	mov	r1,#(_process_poll >> 8)
	mov	r2,#(_process_poll >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_timer'
;------------------------------------------------------------
;timer                     Allocated to stack - sp -2
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:151: add_timer(struct etimer *timer)
;	-----------------------------------------
;	 function add_timer
;	-----------------------------------------
_add_timer:
	push	dpl
	push	dph
	push	b
;	../../../contiki-sensinode//core/sys/etimer.c:155: etimer_request_poll();
	mov	r0,#_etimer_request_poll
	mov	r1,#(_etimer_request_poll >> 8)
	mov	r2,#(_etimer_request_poll >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/sys/etimer.c:157: if(timer->p != PROCESS_NONE) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x07
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00119$
	ljmp	00104$
00119$:
;	../../../contiki-sensinode//core/sys/etimer.c:160: for(t = timerlist; t != NULL; t = t->next) {
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00105$:
	clr	a
	push	acc
	clr	a
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
	jz	00104$
;	../../../contiki-sensinode//core/sys/etimer.c:161: if(t == timer) {
	mov	r0,sp
	dec	r0
	dec	r0
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
	jz	00122$
	sjmp	00107$
00122$:
;	../../../contiki-sensinode//core/sys/etimer.c:163: update_time();
	mov	r0,#_update_time
	mov	r1,#(_update_time >> 8)
	mov	r2,#(_update_time >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//core/sys/etimer.c:164: return;
	ljmp	00109$
00107$:
;	../../../contiki-sensinode//core/sys/etimer.c:160: for(t = timerlist; t != NULL; t = t->next) {
	push	ar2
	push	ar3
	push	ar4
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00105$
00104$:
;	../../../contiki-sensinode//core/sys/etimer.c:169: timer->p = PROCESS_CURRENT();
	mov	dptr,#_process_current
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	../../../contiki-sensinode//core/sys/etimer.c:170: timer->next = timerlist;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
;	../../../contiki-sensinode//core/sys/etimer.c:171: timerlist = timer;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_timerlist
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
;	../../../contiki-sensinode//core/sys/etimer.c:173: update_time();
	mov	r0,#_update_time
	mov	r1,#(_update_time >> 8)
	mov	r2,#(_update_time >> 16)
	lcall	__sdcc_banked_call
00109$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_set'
;------------------------------------------------------------
;interval                  Allocated to stack - sp -4
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:177: etimer_set(struct etimer *et, clock_time_t interval)
;	-----------------------------------------
;	 function etimer_set
;	-----------------------------------------
_etimer_set:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/sys/etimer.c:179: timer_set(&et->timer, interval);
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_timer_set
	mov	r1,#(_timer_set >> 8)
	mov	r2,#(_timer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/sys/etimer.c:180: add_timer(et);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_add_timer
	mov	r1,#(_add_timer >> 8)
	mov	r2,#(_add_timer >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_reset'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:184: etimer_reset(struct etimer *et)
;	-----------------------------------------
;	 function etimer_reset
;	-----------------------------------------
_etimer_reset:
;	../../../contiki-sensinode//core/sys/etimer.c:186: timer_reset(&et->timer);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_timer_reset
	mov	r1,#(_timer_reset >> 8)
	mov	r2,#(_timer_reset >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/sys/etimer.c:187: add_timer(et);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_add_timer
	mov	r1,#(_add_timer >> 8)
	mov	r2,#(_add_timer >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_restart'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:191: etimer_restart(struct etimer *et)
;	-----------------------------------------
;	 function etimer_restart
;	-----------------------------------------
_etimer_restart:
;	../../../contiki-sensinode//core/sys/etimer.c:193: timer_restart(&et->timer);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_timer_restart
	mov	r1,#(_timer_restart >> 8)
	mov	r2,#(_timer_restart >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../contiki-sensinode//core/sys/etimer.c:194: add_timer(et);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_add_timer
	mov	r1,#(_add_timer >> 8)
	mov	r2,#(_add_timer >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_adjust'
;------------------------------------------------------------
;timediff                  Allocated to stack - sp -7
;et                        Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:198: etimer_adjust(struct etimer *et, int timediff)
;	-----------------------------------------
;	 function etimer_adjust
;	-----------------------------------------
_etimer_adjust:
	push	dpl
	push	dph
	push	b
;	../../../contiki-sensinode//core/sys/etimer.c:200: et->timer.start += timediff;
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
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
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../../../contiki-sensinode//core/sys/etimer.c:201: update_time();
	mov	r0,#_update_time
	mov	r1,#(_update_time >> 8)
	mov	r2,#(_update_time >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_expired'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:205: etimer_expired(struct etimer *et)
;	-----------------------------------------
;	 function etimer_expired
;	-----------------------------------------
_etimer_expired:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//core/sys/etimer.c:207: return et->p == PROCESS_NONE;
	mov	a,#0x07
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
	clr	a
	push	acc
	clr	a
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
	jnz	00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_expiration_time'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:211: etimer_expiration_time(struct etimer *et)
;	-----------------------------------------
;	 function etimer_expiration_time
;	-----------------------------------------
_etimer_expiration_time:
;	../../../contiki-sensinode//core/sys/etimer.c:213: return et->timer.start + et->timer.interval;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
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
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_start_time'
;------------------------------------------------------------
;et                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:217: etimer_start_time(struct etimer *et)
;	-----------------------------------------
;	 function etimer_start_time
;	-----------------------------------------
_etimer_start_time:
;	../../../contiki-sensinode//core/sys/etimer.c:219: return et->timer.start;
	mov	r7,b
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_pending'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:223: etimer_pending(void)
;	-----------------------------------------
;	 function etimer_pending
;	-----------------------------------------
_etimer_pending:
;	../../../contiki-sensinode//core/sys/etimer.c:225: return timerlist != NULL;
	mov	dptr,#_timerlist
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	clr	a
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
	jnz	00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	r5,a
	cjne	a,#0x01,00105$
00105$:
	clr	a
	rlc	a
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_next_expiration_time'
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:229: etimer_next_expiration_time(void)
;	-----------------------------------------
;	 function etimer_next_expiration_time
;	-----------------------------------------
_etimer_next_expiration_time:
;	../../../contiki-sensinode//core/sys/etimer.c:231: return etimer_pending() ? next_expiration : 0;
	mov	r0,#_etimer_pending
	mov	r1,#(_etimer_pending >> 8)
	mov	r2,#(_etimer_pending >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00103$
	mov	dptr,#_next_expiration
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'etimer_stop'
;------------------------------------------------------------
;et                        Allocated to stack - sp -2
;t                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../../../contiki-sensinode//core/sys/etimer.c:235: etimer_stop(struct etimer *et)
;	-----------------------------------------
;	 function etimer_stop
;	-----------------------------------------
_etimer_stop:
	push	dpl
	push	dph
	push	b
;	../../../contiki-sensinode//core/sys/etimer.c:240: if(et == timerlist) {
	mov	dptr,#_timerlist
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
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00124$
	sjmp	00104$
00124$:
;	../../../contiki-sensinode//core/sys/etimer.c:241: timerlist = timerlist->next;
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_timerlist
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//core/sys/etimer.c:242: update_time();
	mov	r0,#_update_time
	mov	r1,#(_update_time >> 8)
	mov	r2,#(_update_time >> 16)
	lcall	__sdcc_banked_call
	ljmp	00105$
00104$:
;	../../../contiki-sensinode//core/sys/etimer.c:246: for(t = timerlist; t != NULL && t->next != et; t = t->next);
00107$:
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00110$
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
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
	jz	00110$
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00107$
00110$:
;	../../../contiki-sensinode//core/sys/etimer.c:248: if(t != NULL) {
	mov	a,r2
	orl	a,r3
	jz	00105$
;	../../../contiki-sensinode//core/sys/etimer.c:252: t->next = et->next;
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
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
;	../../../contiki-sensinode//core/sys/etimer.c:254: update_time();
	mov	r0,#_update_time
	mov	r1,#(_update_time >> 8)
	mov	r2,#(_update_time >> 16)
	lcall	__sdcc_banked_call
00105$:
;	../../../contiki-sensinode//core/sys/etimer.c:259: et->next = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x04
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
;	../../../contiki-sensinode//core/sys/etimer.c:261: et->p = PROCESS_NONE;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x07
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
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__etimer_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_etimer_process,(_process_thread_etimer_process >> 8),(_process_thread_etimer_process >> 16)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
