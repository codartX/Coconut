/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stdio.h>  
#include <string.h> 
#include "message.h"

static uint16_t get_new_msg_id()
{
    static uint16_t msg_id = 0;
    return msg_id++;
}

static uint32_t build_msg_header(uint8_t *buf, uint32_t len, msg_type_e msg_type,
                                 msg_method_e method, uint8_t *device_id)
{
    msg_header_t *msg_header = NULL;
    
    msg_header = (msg_header_t *)buf;
    msg_header->version = MESSAGE_VERSION;
    msg_header->msg_type = msg_type;
    msg_header->method = method;
    msg_header->msg_id = get_new_msg_id();
    msg_header->len = len;
    memcpy(msg_header->device_id, device_id, DEVICE_ID_SIZE);
    
    return sizeof(msg_header_t);
}

uint32_t build_msg(uint8_t *buf, msg_type_e msg_type,
                   msg_method_e method, uint8_t *device_id, uint8_t *parameters)
{
    uint32_t msg_len = 0;
    msg_header_t *msg_header = NULL;
    
    msg_header = (msg_header_t *)buf;
    msg_header->version = MESSAGE_VERSION;
    msg_header->msg_type = msg_type;
    msg_header->method = method;
    msg_header->msg_id = get_new_msg_id();
    msg_header->len = strlen(parameters);
    memcpy(msg_header->device_id, device_id, DEVICE_ID_SIZE);
    strncpy(buf + sizeof(msg_header_t), parameters, strlen(parameters));
    
    return sizeof(msg_header_t) + strlen(parameters);
}
