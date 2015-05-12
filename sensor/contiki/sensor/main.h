/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _MAIN_H
#define _MAIN_H

#define SUCCESS    1
#define FAIL       0

#define MAX_PAYLOAD_LEN		80

extern uint8_t buf[MAX_PAYLOAD_LEN];

#define PRINTF    

void send_msg(uint8_t *data, uint32_t len, uip_ipaddr_t *peer_ipaddr);

void send_msg_to_gateway(uint8_t *data, uint32_t len);

#endif
