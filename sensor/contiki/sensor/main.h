/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _MAIN_H
#define _MAIN_H

#include <stdint.h>
#include "net/uip.h"
#include "device_profile.h"

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"

#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])

#define SUCCESS    1
#define FAIL       0

#define DEV_ID_SIZE         8

#define MAX_PAYLOAD_LEN		80

extern uint8_t auth_success;

extern uint8_t output_buf[MAX_PAYLOAD_LEN];

void send_msg(uint8_t *data, uint32_t len, uip_ipaddr_t *peer_ipaddr);

void send_msg_to_gateway(uint8_t *data, uint32_t len);

#endif
