;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Oct 29 2014) (Linux)
; This file was generated Wed Dec  2 18:11:05 2015
;--------------------------------------------------------
	.module usb_core
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usb_class_get_string_descriptor
	.globl _usb_arch_send_pending
	.globl _usb_arch_get_global_events
	.globl _usb_arch_set_global_event_process
	.globl _usb_arch_set_address
	.globl _usb_arch_get_ep_status
	.globl _usb_arch_set_configuration
	.globl _usb_arch_halt_endpoint
	.globl _usb_arch_control_stall
	.globl _usb_arch_discard_all_buffers
	.globl _usb_arch_disable_endpoint
	.globl _usb_arch_setup_interrupt_endpoint
	.globl _usb_arch_setup_bulk_endpoint
	.globl _usb_arch_setup
	.globl _usb_get_ep_events
	.globl _usb_set_ep_event_process
	.globl _usb_submit_xmit_buffer
	.globl _usb_submit_recv_buffer
	.globl _process_poll
	.globl _process_start
	.globl _usb_process
	.globl _usb_setup_buffer
	.globl _usb_set_global_event_process
	.globl _usb_get_global_events
	.globl _usb_send_ctrl_response
	.globl _usb_error_stall
	.globl _usb_send_ctrl_status
	.globl _usb_get_ctrl_data
	.globl _usb_setup
	.globl _usb_register_request_handler
	.globl _usb_prepend_request_handler
	.globl _usb_get_current_configuration
	.globl _usb_setup_bulk_endpoint
	.globl _usb_setup_interrupt_endpoint
	.globl _usb_disable_endpoint
	.globl _usb_discard_all_buffers
	.globl _usb_halt_endpoint
	.globl _usb_send_pending
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
_usb_setup_buffer::
	.ds 8
_ctrl_buffer:
	.ds 14
_usb_device_status:
	.ds 2
_usb_configuration_value:
	.ds 1
_get_endpoint_status_status_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_usb_request_handler_hooks:
	.ds 3
_usb_flags:
	.ds 1
_global_user_event_pocess:
	.ds 3
_global_user_events:
	.ds 2
_error_stall:
	.ds 1
_data_callback:
	.ds 3
_ctrl_data:
	.ds 3
_ctrl_data_len:
	.ds 2
_standard_request_hook:
	.ds 6
_usb_process::
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
;Allocation info for local variables in function 'usb_set_global_event_process'
;------------------------------------------------------------
;p                         Allocated to registers 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:42: usb_set_global_event_process(struct process *p)
;	-----------------------------------------
;	 function usb_set_global_event_process
;	-----------------------------------------
_usb_set_global_event_process:
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
	mov	dptr,#_global_user_event_pocess
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:44: global_user_event_pocess = p;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_global_events'
;------------------------------------------------------------
;e                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:47: usb_get_global_events(void)
;	-----------------------------------------
;	 function usb_get_global_events
;	-----------------------------------------
_usb_get_global_events:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:49: unsigned int e = global_user_events;
	mov	dptr,#_global_user_events
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:50: global_user_events = 0;
	mov	dptr,#_global_user_events
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:51: return e;
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'notify_user'
;------------------------------------------------------------
;e                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:55: notify_user(unsigned int e)
;	-----------------------------------------
;	 function notify_user
;	-----------------------------------------
_notify_user:
	mov	r6,dpl
	mov	r7,dph
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:57: global_user_events |= e;
	mov	dptr,#_global_user_events
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_global_user_events
	mov	a,r6
	orl	a,r4
	movx	@dptr,a
	mov	a,r7
	orl	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:58: if(global_user_event_pocess) {
	mov	dptr,#_global_user_event_pocess
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
	jz	00103$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:59: process_poll(global_user_event_pocess);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_process_poll
	mov	r1,#(_process_poll >> 8)
	mov	r2,#(_process_poll >> 16)
	lcall	__sdcc_banked_call
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_send_ctrl_response'
;------------------------------------------------------------
;len                       Allocated to stack - sp -4
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:64: usb_send_ctrl_response(const uint8_t * data, unsigned int len)
;	-----------------------------------------
;	 function usb_send_ctrl_response
;	-----------------------------------------
_usb_send_ctrl_response:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:66: if(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	jnb	acc.0,00102$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:67: return;
	ljmp	00107$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:68: if(len >= usb_setup_buffer.wLength) {
	mov	dptr,#(_usb_setup_buffer + 0x0006)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00104$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:69: len = usb_setup_buffer.wLength;     /* Truncate if too long */
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00104$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:71: ctrl_buffer.flags = USB_BUFFER_NOTIFY | USB_BUFFER_IN;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x48
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:72: if(len < usb_setup_buffer.wLength) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00106$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:73: ctrl_buffer.flags |= USB_BUFFER_SHORT_END;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	ar3,#0x02
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00106$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:75: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:76: ctrl_buffer.data = (uint8_t *) data;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:77: ctrl_buffer.left = len;
	mov	dptr,#(_ctrl_buffer + 0x0006)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:78: ctrl_buffer.id = IN_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x03
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:79: usb_submit_xmit_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_usb_submit_xmit_buffer
	mov	r1,#(_usb_submit_xmit_buffer >> 8)
	mov	r2,#(_usb_submit_xmit_buffer >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00107$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_error_stall'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:85: usb_error_stall()
;	-----------------------------------------
;	 function usb_error_stall
;	-----------------------------------------
_usb_error_stall:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:87: error_stall = 1;
	mov	dptr,#_error_stall
	mov	a,#0x01
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:88: usb_arch_control_stall(0);
	mov	dpl,#0x00
	mov	r0,#_usb_arch_control_stall
	mov	r1,#(_usb_arch_control_stall >> 8)
	mov	r2,#(_usb_arch_control_stall >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_send_ctrl_status'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:92: usb_send_ctrl_status()
;	-----------------------------------------
;	 function usb_send_ctrl_status
;	-----------------------------------------
_usb_send_ctrl_status:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:94: if(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	jnb	acc.0,00102$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:95: return;
	sjmp	00103$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:96: ctrl_buffer.flags = USB_BUFFER_NOTIFY | USB_BUFFER_IN;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x48
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:97: ctrl_buffer.next = NULL;
	clr	a
	movx	@dptr,a
	mov	dptr,#_ctrl_buffer
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:98: ctrl_buffer.data = NULL;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_ctrl_buffer + 0x0003)
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:99: ctrl_buffer.left = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_ctrl_buffer + 0x0006)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:100: ctrl_buffer.id = STATUS_IN_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x05
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:101: usb_submit_xmit_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_usb_submit_xmit_buffer
	mov	r1,#(_usb_submit_xmit_buffer >> 8)
	mov	r2,#(_usb_submit_xmit_buffer >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_ctrl_data'
;------------------------------------------------------------
;length                    Allocated to stack - sp -4
;cb                        Allocated to stack - sp -7
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:111: usb_get_ctrl_data(uint8_t * data, unsigned int length,
;	-----------------------------------------
;	 function usb_get_ctrl_data
;	-----------------------------------------
_usb_get_ctrl_data:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:114: if(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	jnb	acc.0,00102$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:115: return;
	ljmp	00103$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:117: data_callback = cb;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_data_callback
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
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:118: ctrl_data = data;
	mov	dptr,#_ctrl_data
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:119: ctrl_data_len = length;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_ctrl_data_len
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:120: ctrl_buffer.flags = USB_BUFFER_NOTIFY;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:121: ctrl_buffer.next = NULL;
	clr	a
	movx	@dptr,a
	mov	dptr,#_ctrl_buffer
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:122: ctrl_buffer.data = data;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:123: ctrl_buffer.left = length;
	mov	dptr,#(_ctrl_buffer + 0x0006)
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:124: ctrl_buffer.id = OUT_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x02
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:125: usb_submit_recv_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_usb_submit_recv_buffer
	mov	r1,#(_usb_submit_recv_buffer >> 8)
	mov	r2,#(_usb_submit_recv_buffer >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_device_descriptor'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:138: get_device_descriptor()
;	-----------------------------------------
;	 function get_device_descriptor
;	-----------------------------------------
_get_device_descriptor:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:140: usb_send_ctrl_response((unsigned char *)&device_descriptor,
	mov	r6,#_device_descriptor
	mov	r7,#(_device_descriptor >> 8)
	mov	r5,#0x80
	mov	a,#0x12
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_string_descriptor'
;------------------------------------------------------------
;descriptor                Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:145: get_string_descriptor()
;	-----------------------------------------
;	 function get_string_descriptor
;	-----------------------------------------
_get_string_descriptor:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:186: LOW_BYTE(usb_setup_buffer.wValue));
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:185: usb_class_get_string_descriptor(usb_setup_buffer.wIndex,
	mov	dptr,#(_usb_setup_buffer + 0x0004)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	mov	dpl,r5
	mov	dph,r7
	mov	r0,#_usb_class_get_string_descriptor
	mov	r1,#(_usb_class_get_string_descriptor >> 8)
	mov	r2,#(_usb_class_get_string_descriptor >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:187: if(!descriptor) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:188: usb_error_stall();
	mov	r0,#_usb_error_stall
	mov	r1,#(_usb_error_stall >> 8)
	mov	r2,#(_usb_error_stall >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:189: return;
	sjmp	00103$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:192: descriptor->bLength);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:191: usb_send_ctrl_response((const unsigned char *)descriptor,
	push	ar4
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_configuration_descriptor'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:197: get_configuration_descriptor()
;	-----------------------------------------
;	 function get_configuration_descriptor
;	-----------------------------------------
_get_configuration_descriptor:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:200: configuration_head->wTotalLength);
	mov	dptr,#_configuration_head
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:199: usb_send_ctrl_response((unsigned char *)configuration_head,
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_configuration'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:204: get_configuration()
;	-----------------------------------------
;	 function get_configuration
;	-----------------------------------------
_get_configuration:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:206: usb_send_ctrl_response((unsigned char *)&usb_configuration_value,
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_usb_configuration_value
	mov	b,#0x00
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_configuration'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:212: set_configuration()
;	-----------------------------------------
;	 function set_configuration
;	-----------------------------------------
_set_configuration:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:214: notify_user(USB_EVENT_CONFIG);
	mov	dptr,#0x0001
	mov	r0,#_notify_user
	mov	r1,#(_notify_user >> 8)
	mov	r2,#(_notify_user >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:215: if(usb_configuration_value != LOW_BYTE(usb_setup_buffer.wValue)) {
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_usb_configuration_value
	movx	a,@dptr
	mov	r7,a
	cjne	a,ar6,00108$
	sjmp	00102$
00108$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:216: usb_configuration_value = LOW_BYTE(usb_setup_buffer.wValue);
	mov	dptr,#_usb_configuration_value
	mov	a,r6
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:217: usb_arch_set_configuration(usb_configuration_value);
	mov	dpl,r6
	mov	r0,#_usb_arch_set_configuration
	mov	r1,#(_usb_arch_set_configuration >> 8)
	mov	r2,#(_usb_arch_set_configuration >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:218: usb_send_ctrl_status();
	mov	r0,#_usb_send_ctrl_status
	mov	r1,#(_usb_send_ctrl_status >> 8)
	mov	r2,#(_usb_send_ctrl_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:219: return 1;
	mov	dptr,#0x0001
	sjmp	00104$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:221: usb_send_ctrl_status();
	mov	r0,#_usb_send_ctrl_status
	mov	r1,#(_usb_send_ctrl_status >> 8)
	mov	r2,#(_usb_send_ctrl_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:222: return 0;
	mov	dptr,#0x0000
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_device_status'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:227: get_device_status()
;	-----------------------------------------
;	 function get_device_status
;	-----------------------------------------
_get_device_status:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:230: usb_send_ctrl_response((const unsigned char *)&usb_device_status,
	mov	r6,#_usb_device_status
	mov	r7,#(_usb_device_status >> 8)
	mov	r5,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_endpoint_status'
;------------------------------------------------------------
;status                    Allocated with name '_get_endpoint_status_status_1_1'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:235: get_endpoint_status()
;	-----------------------------------------
;	 function get_endpoint_status
;	-----------------------------------------
_get_endpoint_status:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:240: if((usb_setup_buffer.wIndex & 0x7f) == 0) {
	mov	dptr,#(_usb_setup_buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	anl	a,#0x7F
	jz	00109$
	sjmp	00102$
00109$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:241: usb_send_ctrl_response((const unsigned char *)&zero_word,
	mov	r4,#_zero_word
	mov	r5,#(_zero_word >> 8)
	mov	r3,#0x80
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	sjmp	00104$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:244: status = usb_arch_get_ep_status(usb_setup_buffer.wIndex);
	mov	dpl,r6
	mov	r0,#_usb_arch_get_ep_status
	mov	r1,#(_usb_arch_get_ep_status >> 8)
	mov	r2,#(_usb_arch_get_ep_status >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_get_endpoint_status_status_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:245: usb_send_ctrl_response((uint8_t *) & status, sizeof(status));
	mov	r6,#_get_endpoint_status_status_1_1
	mov	r7,#(_get_endpoint_status_status_1_1 >> 8)
	mov	r5,#0x00
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_interface_status'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:250: get_interface_status()
;	-----------------------------------------
;	 function get_interface_status
;	-----------------------------------------
_get_interface_status:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:253: usb_send_ctrl_response((const unsigned char *)&zero_word,
	mov	r6,#_zero_word
	mov	r7,#(_zero_word >> 8)
	mov	r5,#0x80
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_interface'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:258: get_interface()
;	-----------------------------------------
;	 function get_interface
;	-----------------------------------------
_get_interface:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:261: if(usb_configuration_value == 0)
	mov	dptr,#_usb_configuration_value
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:262: usb_error_stall();
	mov	r0,#_usb_error_stall
	mov	r1,#(_usb_error_stall >> 8)
	mov	r2,#(_usb_error_stall >> 16)
	lcall	__sdcc_banked_call
	sjmp	00104$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:264: usb_send_ctrl_response(&zero_byte, sizeof(zero_byte));
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_zero_byte
	mov	b,#0x80
	mov	r0,#_usb_send_ctrl_response
	mov	r1,#(_usb_send_ctrl_response >> 8)
	mov	r2,#(_usb_send_ctrl_response >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
00104$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_standard_requests'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:270: handle_standard_requests()
;	-----------------------------------------
;	 function handle_standard_requests
;	-----------------------------------------
_handle_standard_requests:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:272: switch (usb_setup_buffer.bmRequestType) {
	mov	dptr,#_usb_setup_buffer
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x00,00184$
	ljmp	00121$
00184$:
	cjne	r7,#0x01,00185$
	ljmp	00128$
00185$:
	cjne	r7,#0x02,00186$
	ljmp	00132$
00186$:
	cjne	r7,#0x80,00187$
	sjmp	00101$
00187$:
	cjne	r7,#0x81,00188$
	ljmp	00113$
00188$:
	cjne	r7,#0x82,00189$
	ljmp	00117$
00189$:
	ljmp	00140$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:273: case 0x80:                   /* standard device IN requests */
00101$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:274: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jz	00109$
	cjne	r7,#0x06,00191$
	sjmp	00102$
00191$:
	cjne	r7,#0x08,00192$
	sjmp	00108$
00192$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:275: case GET_DESCRIPTOR:
	cjne	r7,#0x0A,00111$
	sjmp	00110$
00102$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:276: switch (HIGH_BYTE(usb_setup_buffer.wValue)) {
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00194$
	sjmp	00103$
00194$:
	cjne	r7,#0x02,00195$
	sjmp	00104$
00195$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:277: case DEVICE:
	cjne	r7,#0x03,00106$
	sjmp	00105$
00103$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:278: get_device_descriptor();
	mov	r0,#_get_device_descriptor
	mov	r1,#(_get_device_descriptor >> 8)
	mov	r2,#(_get_device_descriptor >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:279: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:280: case CONFIGURATION:
00104$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:281: get_configuration_descriptor();
	mov	r0,#_get_configuration_descriptor
	mov	r1,#(_get_configuration_descriptor >> 8)
	mov	r2,#(_get_configuration_descriptor >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:282: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:283: case STRING:
00105$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:284: get_string_descriptor();
	mov	r0,#_get_string_descriptor
	mov	r1,#(_get_string_descriptor >> 8)
	mov	r2,#(_get_string_descriptor >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:285: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:286: default:
00106$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:288: return 0;
	mov	dptr,#0x0000
	ljmp	00142$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:291: case GET_CONFIGURATION:
00108$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:292: get_configuration();
	mov	r0,#_get_configuration
	mov	r1,#(_get_configuration >> 8)
	mov	r2,#(_get_configuration >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:293: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:294: case GET_STATUS:
00109$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:295: get_device_status();
	mov	r0,#_get_device_status
	mov	r1,#(_get_device_status >> 8)
	mov	r2,#(_get_device_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:296: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:297: case GET_INTERFACE:
00110$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:298: get_interface();
	mov	r0,#_get_interface
	mov	r1,#(_get_interface >> 8)
	mov	r2,#(_get_interface >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:299: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:300: default:
00111$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:301: return 0;
	mov	dptr,#0x0000
	ljmp	00142$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:304: case 0x81:                   /* standard interface IN requests */
00113$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:305: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jz	00198$
	sjmp	00115$
00198$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:307: get_interface_status();
	mov	r0,#_get_interface_status
	mov	r1,#(_get_interface_status >> 8)
	mov	r2,#(_get_interface_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:308: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:318: default:
00115$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:319: return 0;
	mov	dptr,#0x0000
	ljmp	00142$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:322: case 0x82:                   /* standard endpoint IN requests */
00117$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:323: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jz	00200$
	sjmp	00119$
00200$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:325: get_endpoint_status();
	mov	r0,#_get_endpoint_status
	mov	r1,#(_get_endpoint_status >> 8)
	mov	r2,#(_get_endpoint_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:326: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:327: default:
00119$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:328: return 0;
	mov	dptr,#0x0000
	ljmp	00142$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:331: case 0x00:                   /* standard device OUT requests */
00121$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:332: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00201$
	sjmp	00122$
00201$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:333: case SET_ADDRESS:
	cjne	r7,#0x09,00126$
	sjmp	00123$
00122$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:335: usb_flags |= USB_FLAG_ADDRESS_PENDING;
	mov	dptr,#_usb_flags
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:338: usb_send_ctrl_status();
	mov	r0,#_usb_send_ctrl_status
	mov	r1,#(_usb_send_ctrl_status >> 8)
	mov	r2,#(_usb_send_ctrl_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:339: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:349: case SET_CONFIGURATION:
00123$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:350: if(set_configuration()) {
	mov	r0,#_set_configuration
	mov	r1,#(_set_configuration >> 8)
	mov	r2,#(_set_configuration >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:356: break;
	ljmp	00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:357: default:
00126$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:358: return 0;
	mov	dptr,#0x0000
	ljmp	00142$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:361: case 0x01:                   /* standard interface OUT requests */
00128$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:362: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0B,00130$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:365: usb_send_ctrl_status();
	mov	r0,#_usb_send_ctrl_status
	mov	r1,#(_usb_send_ctrl_status >> 8)
	mov	r2,#(_usb_send_ctrl_status >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:366: break;
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:367: default:
	sjmp	00141$
00130$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:368: return 0;
	mov	dptr,#0x0000
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:371: case 0x02:                   /* standard endpoint OUT requests */
	sjmp	00142$
00132$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:372: switch (usb_setup_buffer.bRequest) {
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00205$
	sjmp	00134$
00205$:
	cjne	r7,#0x03,00138$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:374: case CLEAR_FEATURE:
00134$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:375: if(usb_setup_buffer.wValue == ENDPOINT_HALT_FEATURE) {
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:377: usb_setup_buffer.bRequest == SET_FEATURE);
	jnz	00136$
	cjne	r7,#0x03,00209$
	inc	a
00209$:
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:376: usb_arch_halt_endpoint(usb_setup_buffer.wIndex,
	mov	dptr,#(_usb_setup_buffer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	push	ar7
	push	ar6
	mov	dpl,r4
	mov	r0,#_usb_arch_halt_endpoint
	mov	r1,#(_usb_arch_halt_endpoint >> 8)
	mov	r2,#(_usb_arch_halt_endpoint >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:378: usb_send_ctrl_status();
	mov	r0,#_usb_send_ctrl_status
	mov	r1,#(_usb_send_ctrl_status >> 8)
	mov	r2,#(_usb_send_ctrl_status >> 16)
	lcall	__sdcc_banked_call
	sjmp	00141$
00136$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:380: usb_error_stall();
	mov	r0,#_usb_error_stall
	mov	r1,#(_usb_error_stall >> 8)
	mov	r2,#(_usb_error_stall >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:382: break;
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:383: default:
	sjmp	00141$
00138$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:384: return 0;
	mov	dptr,#0x0000
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:413: default:
	sjmp	00142$
00140$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:414: return 0;
	mov	dptr,#0x0000
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:415: }
	sjmp	00142$
00141$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:416: return 1;
	mov	dptr,#0x0001
00142$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'submit_setup'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:433: submit_setup(void)
;	-----------------------------------------
;	 function submit_setup
;	-----------------------------------------
_submit_setup:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:435: ctrl_buffer.next = NULL;
	mov	dptr,#_ctrl_buffer
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:436: ctrl_buffer.data = (uint8_t *) & usb_setup_buffer;
	mov	dptr,#(_ctrl_buffer + 0x0003)
	mov	a,#_usb_setup_buffer
	movx	@dptr,a
	inc	dptr
	mov	a,#(_usb_setup_buffer >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:437: ctrl_buffer.left = sizeof(usb_setup_buffer);
	mov	dptr,#(_ctrl_buffer + 0x0006)
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:438: ctrl_buffer.flags = (USB_BUFFER_PACKET_END | USB_BUFFER_SETUP
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x2C
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:440: ctrl_buffer.id = SETUP_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:441: usb_submit_recv_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_usb_submit_recv_buffer
	mov	r1,#(_usb_submit_recv_buffer >> 8)
	mov	r2,#(_usb_submit_recv_buffer >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_usb_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -9
;data                      Allocated to stack - sp -12
;process_pt                Allocated to stack - sp -5
;PT_YIELD_FLAG             Allocated to registers r4 
;events                    Allocated to registers r3 r4 
;hook                      Allocated to registers r2 r3 r4 
;i                         Allocated to registers r6 r7 
;handler                   Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:446: PROCESS_THREAD(usb_process, ev, data)
;	-----------------------------------------
;	 function process_thread_usb_process
;	-----------------------------------------
_process_thread_usb_process:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:448: PROCESS_BEGIN();
	mov	r4,#0x01
	mov	a,sp
	add	a,#0xfb
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
	cjne	r2,#0x00,00232$
	cjne	r3,#0x00,00232$
	sjmp	00163$
00232$:
	cjne	r2,#0xC3,00233$
	cjne	r3,#0x01,00233$
	sjmp	00102$
00233$:
	ljmp	00165$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:450: while(1) {
00163$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:451: PROCESS_WAIT_EVENT();
	mov	r4,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0xC3
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00106$
	mov	dpl,#0x01
	ljmp	00169$
00106$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:452: if(ev == PROCESS_EVENT_EXIT)
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0x83,00235$
	ljmp	00165$
00235$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:454: if(ev == PROCESS_EVENT_POLL) {
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0x82,00163$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:455: unsigned int events = usb_arch_get_global_events();
	mov	r0,#_usb_arch_get_global_events
	mov	r1,#(_usb_arch_get_global_events >> 8)
	mov	r2,#(_usb_arch_get_global_events >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:457: if(events) {
	mov	a,r3
	orl	a,r4
	jz	00117$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:458: if(events & USB_EVENT_RESET) {
	mov	a,r3
	jnb	acc.3,00111$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:459: submit_setup();
	push	ar4
	push	ar3
	mov	r0,#_submit_setup
	mov	r1,#(_submit_setup >> 8)
	mov	r2,#(_submit_setup >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:460: usb_configuration_value = 0;
	mov	dptr,#_usb_configuration_value
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:461: notify_user(USB_EVENT_RESET);
	mov	dptr,#0x0008
	mov	r0,#_notify_user
	mov	r1,#(_notify_user >> 8)
	mov	r2,#(_notify_user >> 16)
	lcall	__sdcc_banked_call
	pop	ar3
	pop	ar4
00111$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:463: if(events & USB_EVENT_SUSPEND) {
	mov	a,r3
	jnb	acc.1,00113$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:464: notify_user(USB_EVENT_SUSPEND);
	mov	dptr,#0x0002
	push	ar4
	push	ar3
	mov	r0,#_notify_user
	mov	r1,#(_notify_user >> 8)
	mov	r2,#(_notify_user >> 16)
	lcall	__sdcc_banked_call
	pop	ar3
	pop	ar4
00113$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:466: if(events & USB_EVENT_RESUME) {
	mov	a,r3
	jnb	acc.2,00117$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:467: notify_user(USB_EVENT_RESUME);
	mov	dptr,#0x0004
	mov	r0,#_notify_user
	mov	r1,#(_notify_user >> 8)
	mov	r2,#(_notify_user >> 16)
	lcall	__sdcc_banked_call
00117$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:471: events = usb_get_ep_events(0);
	mov	dpl,#0x00
	mov	r0,#_usb_get_ep_events
	mov	r1,#(_usb_get_ep_events >> 8)
	mov	r2,#(_usb_get_ep_events >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r7,dph
	mov	ar3,r2
	mov	ar4,r7
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:472: if(events) {
	mov	a,r3
	orl	a,r4
	jnz	00242$
	ljmp	00163$
00242$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:473: if((events & USB_EP_EVENT_NOTIFICATION)
	mov	a,r3
	jb	acc.0,00243$
	ljmp	00163$
00243$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:474: && !(ctrl_buffer.flags & USB_BUFFER_SUBMITTED)) {
	mov	dptr,#(_ctrl_buffer + 0x0008)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	jnb	acc.0,00244$
	ljmp	00163$
00244$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:476: if(ctrl_buffer.flags & USB_BUFFER_FAILED) {
	mov	a,r3
	jnb	acc.7,00153$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:480: submit_setup();
	mov	r0,#_submit_setup
	mov	r1,#(_submit_setup >> 8)
	mov	r2,#(_submit_setup >> 16)
	lcall	__sdcc_banked_call
	ljmp	00163$
00153$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:481: } else if(ctrl_buffer.flags & USB_BUFFER_SETUP) {
	mov	a,r3
	jb	acc.5,00246$
	ljmp	00150$
00246$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:482: struct USBRequestHandlerHook *hook = usb_request_handler_hooks;
	mov	dptr,#_usb_request_handler_hooks
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:488: for(i = 0; i < 8; i++)
	mov	r6,#0x08
	mov	r7,#0x00
00168$:
	dec	r6
	cjne	r6,#0xFF,00247$
	dec	r7
00247$:
	mov	a,r6
	orl	a,r7
	jnz	00168$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:493: while(hook) {
00123$:
	mov	a,r2
	orl	a,r3
	jnz	00249$
	ljmp	00125$
00249$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:494: const struct USBRequestHandler *handler = hook->handler;
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
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:497: if(((handler->request_type ^ usb_setup_buffer.bmRequestType)
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_usb_setup_buffer
	movx	a,@dptr
	xrl	ar4,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:498: & handler->request_type_mask) == 0
	mov	a,sp
	add	a,#0xfb
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
	anl	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00250$
	ljmp	00121$
00250$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:499: && ((handler->request ^ usb_setup_buffer.bRequest)
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x02
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
	mov	dptr,#(_usb_setup_buffer + 0x0001)
	movx	a,@dptr
	xrl	ar5,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:500: & handler->request_mask) == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x03
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
	anl	a,r5
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00121$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:501: if(handler->handler_func())
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
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,r5
	orl	a,r6
	jnz	00125$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:502: break;
00121$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:504: hook = hook->next;
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
	ljmp	00123$
00125$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:506: if(!hook) {
	mov	a,r2
	orl	a,r3
	jnz	00127$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:508: usb_error_stall();
	mov	r0,#_usb_error_stall
	mov	r1,#(_usb_error_stall >> 8)
	mov	r2,#(_usb_error_stall >> 16)
	lcall	__sdcc_banked_call
00127$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:516: if(error_stall) {
	mov	dptr,#_error_stall
	movx	a,@dptr
	mov	r7,a
	jnz	00255$
	ljmp	00163$
00255$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:517: error_stall = 0;
	mov	dptr,#_error_stall
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:518: submit_setup();
	mov	r0,#_submit_setup
	mov	r1,#(_submit_setup >> 8)
	mov	r2,#(_submit_setup >> 16)
	lcall	__sdcc_banked_call
	ljmp	00163$
00150$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:521: if(ctrl_buffer.id == IN_ID) {
	mov	dptr,#(_ctrl_buffer + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r4,#0x03,00147$
	cjne	r5,#0x00,00147$
	cjne	r6,#0x00,00147$
	cjne	r7,#0x00,00147$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:524: ctrl_buffer.flags = USB_BUFFER_NOTIFY;
	mov	dptr,#(_ctrl_buffer + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:525: ctrl_buffer.next = NULL;
	clr	a
	movx	@dptr,a
	mov	dptr,#_ctrl_buffer
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:526: ctrl_buffer.data = NULL;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_ctrl_buffer + 0x0003)
	movx	@dptr,a
	inc	dptr
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:527: ctrl_buffer.left = 0;
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_ctrl_buffer + 0x0006)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:528: ctrl_buffer.id = STATUS_OUT_ID;
	mov	dptr,#(_ctrl_buffer + 0x000a)
	mov	a,#0x04
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:529: usb_submit_recv_buffer(0, &ctrl_buffer);
	mov	a,#_ctrl_buffer
	push	acc
	mov	a,#(_ctrl_buffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_usb_submit_recv_buffer
	mov	r1,#(_usb_submit_recv_buffer >> 8)
	mov	r2,#(_usb_submit_recv_buffer >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	00163$
00147$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:530: } else if(ctrl_buffer.id == STATUS_OUT_ID) {
	mov	dptr,#(_ctrl_buffer + 0x000a)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r4,#0x04,00144$
	cjne	r5,#0x00,00144$
	cjne	r6,#0x00,00144$
	cjne	r7,#0x00,00144$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:532: submit_setup();
	mov	r0,#_submit_setup
	mov	r1,#(_submit_setup >> 8)
	mov	r2,#(_submit_setup >> 16)
	lcall	__sdcc_banked_call
	ljmp	00163$
00144$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:533: } else if(ctrl_buffer.id == STATUS_IN_ID) {
	cjne	r4,#0x05,00141$
	cjne	r5,#0x00,00141$
	cjne	r6,#0x00,00141$
	cjne	r7,#0x00,00141$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:535: if(usb_flags & USB_FLAG_ADDRESS_PENDING) {
	mov	dptr,#_usb_flags
	movx	a,@dptr
	mov	r3,a
	jnb	acc.0,00134$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:536: while(usb_send_pending(0));
00130$:
	mov	dpl,#0x00
	mov	r0,#_usb_send_pending
	mov	r1,#(_usb_send_pending >> 8)
	mov	r2,#(_usb_send_pending >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00130$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:537: usb_arch_set_address(LOW_BYTE(usb_setup_buffer.wValue));
	mov	dptr,#(_usb_setup_buffer + 0x0002)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	r0,#_usb_arch_set_address
	mov	r1,#(_usb_arch_set_address >> 8)
	mov	r2,#(_usb_arch_set_address >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:538: usb_flags &= ~USB_FLAG_ADDRESS_PENDING;
	mov	dptr,#_usb_flags
	movx	a,@dptr
	anl	a,#0xFE
	mov	r3,a
	movx	@dptr,a
00134$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:540: submit_setup();
	mov	r0,#_submit_setup
	mov	r1,#(_submit_setup >> 8)
	mov	r2,#(_submit_setup >> 16)
	lcall	__sdcc_banked_call
	ljmp	00163$
00141$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:541: } else if(ctrl_buffer.id == OUT_ID) {
	cjne	r4,#0x02,00264$
	cjne	r5,#0x00,00264$
	cjne	r6,#0x00,00264$
	cjne	r7,#0x00,00264$
	sjmp	00265$
00264$:
	ljmp	00163$
00265$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:543: if(data_callback) {
	mov	dptr,#_data_callback
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
	jz	00136$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:544: data_callback(ctrl_data, ctrl_data_len - ctrl_buffer.left);
	mov	dptr,#(_ctrl_buffer + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ctrl_data_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r5
	subb	a,r7
	mov	r7,a
	mov	dptr,#_ctrl_data
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	mov	dptr,#_data_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	00163$
00136$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:546: usb_send_ctrl_status();
	mov	r0,#_usb_send_ctrl_status
	mov	r1,#(_usb_send_ctrl_status >> 8)
	mov	r2,#(_usb_send_ctrl_status >> 16)
	lcall	__sdcc_banked_call
	ljmp	00163$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:554: PROCESS_END();
00165$:
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
	mov	dpl,#0x03
00169$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_setup'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:559: usb_setup(void)
;	-----------------------------------------
;	 function usb_setup
;	-----------------------------------------
_usb_setup:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:561: usb_arch_setup();
	mov	r0,#_usb_arch_setup
	mov	r1,#(_usb_arch_setup >> 8)
	mov	r2,#(_usb_arch_setup >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:562: process_start(&usb_process, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_usb_process
	mov	b,#0x00
	mov	r0,#_process_start
	mov	r1,#(_process_start >> 8)
	mov	r2,#(_process_start >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:563: usb_arch_set_global_event_process(&usb_process);
	mov	dptr,#_usb_process
	mov	b,#0x00
	mov	r0,#_usb_arch_set_global_event_process
	mov	r1,#(_usb_arch_set_global_event_process >> 8)
	mov	r2,#(_usb_arch_set_global_event_process >> 16)
	lcall	__sdcc_banked_call
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:564: usb_set_ep_event_process(0, &usb_process);
	mov	a,#_usb_process
	push	acc
	mov	a,#(_usb_process >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x00
	mov	r0,#_usb_set_ep_event_process
	mov	r1,#(_usb_set_ep_event_process >> 8)
	mov	r2,#(_usb_set_ep_event_process >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:566: usb_register_request_handler(&standard_request_hook);
	mov	dptr,#_standard_request_hook
	mov	b,#0x00
	mov	r0,#_usb_register_request_handler
	mov	r1,#(_usb_register_request_handler >> 8)
	mov	r2,#(_usb_register_request_handler >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_register_request_handler'
;------------------------------------------------------------
;hook                      Allocated to stack - sp -2
;prevp                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:570: usb_register_request_handler(struct USBRequestHandlerHook *hook)
;	-----------------------------------------
;	 function usb_register_request_handler
;	-----------------------------------------
_usb_register_request_handler:
	push	dpl
	push	dph
	push	b
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:572: struct USBRequestHandlerHook **prevp = &usb_request_handler_hooks;
	mov	r2,#_usb_request_handler_hooks
	mov	r3,#(_usb_request_handler_hooks >> 8)
	mov	r4,#0x00
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:574: while(*prevp) {
00101$:
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
	jz	00103$
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:575: prevp = &(*prevp)->next;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00101$
00103$:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:578: *prevp = hook;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
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
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:579: hook->next = NULL;
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
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_prepend_request_handler'
;------------------------------------------------------------
;hook                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:583: usb_prepend_request_handler(struct USBRequestHandlerHook *hook)
;	-----------------------------------------
;	 function usb_prepend_request_handler
;	-----------------------------------------
_usb_prepend_request_handler:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:585: hook->next = usb_request_handler_hooks;
	mov	dptr,#_usb_request_handler_hooks
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
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:586: usb_request_handler_hooks = hook;
	mov	dptr,#_usb_request_handler_hooks
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_get_current_configuration'
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:591: usb_get_current_configuration(void)
;	-----------------------------------------
;	 function usb_get_current_configuration
;	-----------------------------------------
_usb_get_current_configuration:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:593: return usb_configuration_value;
	mov	dptr,#_usb_configuration_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_setup_bulk_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:597: usb_setup_bulk_endpoint(unsigned char addr)
;	-----------------------------------------
;	 function usb_setup_bulk_endpoint
;	-----------------------------------------
_usb_setup_bulk_endpoint:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:599: usb_arch_setup_bulk_endpoint(addr);
	mov	r0,#_usb_arch_setup_bulk_endpoint
	mov	r1,#(_usb_arch_setup_bulk_endpoint >> 8)
	mov	r2,#(_usb_arch_setup_bulk_endpoint >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_setup_interrupt_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:603: usb_setup_interrupt_endpoint(unsigned char addr)
;	-----------------------------------------
;	 function usb_setup_interrupt_endpoint
;	-----------------------------------------
_usb_setup_interrupt_endpoint:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:605: usb_arch_setup_interrupt_endpoint(addr);
	mov	r0,#_usb_arch_setup_interrupt_endpoint
	mov	r1,#(_usb_arch_setup_interrupt_endpoint >> 8)
	mov	r2,#(_usb_arch_setup_interrupt_endpoint >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_disable_endpoint'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:609: usb_disable_endpoint(uint8_t addr)
;	-----------------------------------------
;	 function usb_disable_endpoint
;	-----------------------------------------
_usb_disable_endpoint:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:611: usb_arch_discard_all_buffers(addr);
	mov  r7,dpl
	push	ar7
	mov	r0,#_usb_arch_discard_all_buffers
	mov	r1,#(_usb_arch_discard_all_buffers >> 8)
	mov	r2,#(_usb_arch_discard_all_buffers >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:612: usb_arch_disable_endpoint(addr);
	mov	dpl,r7
	mov	r0,#_usb_arch_disable_endpoint
	mov	r1,#(_usb_arch_disable_endpoint >> 8)
	mov	r2,#(_usb_arch_disable_endpoint >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_discard_all_buffers'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:616: usb_discard_all_buffers(uint8_t addr)
;	-----------------------------------------
;	 function usb_discard_all_buffers
;	-----------------------------------------
_usb_discard_all_buffers:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:618: usb_arch_discard_all_buffers(addr);
	mov	r0,#_usb_arch_discard_all_buffers
	mov	r1,#(_usb_arch_discard_all_buffers >> 8)
	mov	r2,#(_usb_arch_discard_all_buffers >> 16)
	lcall	__sdcc_banked_call
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_halt_endpoint'
;------------------------------------------------------------
;halt                      Allocated to stack - sp -4
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:622: usb_halt_endpoint(uint8_t addr, int halt)
;	-----------------------------------------
;	 function usb_halt_endpoint
;	-----------------------------------------
_usb_halt_endpoint:
	mov	r7,dpl
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:624: usb_arch_halt_endpoint(addr, halt);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	mov	r0,#_usb_arch_halt_endpoint
	mov	r1,#(_usb_arch_halt_endpoint >> 8)
	mov	r2,#(_usb_arch_halt_endpoint >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_send_pending'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:628: usb_send_pending(uint8_t addr)
;	-----------------------------------------
;	 function usb_send_pending
;	-----------------------------------------
_usb_send_pending:
;	../../../contiki-sensinode//cpu/cc253x/usb/common/usb-core.c:630: return usb_arch_send_pending(addr);
	mov	r0,#_usb_arch_send_pending
	mov	r1,#(_usb_arch_send_pending >> 8)
	mov	r2,#(_usb_arch_send_pending >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_zero_byte:
	.db #0x00	; 0
_zero_word:
	.byte #0x00,#0x00	; 0
_standard_request_handler:
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.byte _handle_standard_requests,(_handle_standard_requests >> 8),(_handle_standard_requests >> 16)
	.area XINIT   (CODE)
__xinit__usb_request_handler_hooks:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__usb_flags:
	.db #0x00	; 0
__xinit__global_user_event_pocess:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__global_user_events:
	.byte #0x00,#0x00	; 0
__xinit__error_stall:
	.db #0x00	; 0
__xinit__data_callback:
	.byte #0x00,#0x00,#0x00
__xinit__ctrl_data:
	.byte #0x00,#0x00,#0x00
__xinit__ctrl_data_len:
	.byte #0x00,#0x00	; 0
__xinit__standard_request_hook:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _standard_request_handler,(_standard_request_handler >> 8),#0x80
__xinit__usb_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_usb_process,(_process_thread_usb_process >> 8),(_process_thread_usb_process >> 16)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
