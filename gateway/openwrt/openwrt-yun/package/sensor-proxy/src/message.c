/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include "message.h"

uint32_t build_msg_header(uint8_t *buf, uint32_t len, msg_type_e msg_type,
                          msg_method_e method)
{
    msg_header_t *msg_header = NULL;
    
    /*check buf len*/
    if (len < (sizeof(msg_header_t))) {
        return 0;
    }
    
    msg_header = (msg_header_t *)buf;
    msg_header->version = MESSAGE_VERSION;
    msg_header->msg_type = msg_type;
    msg_header->method = method;
    msg_header->msg_id = get_new_msg_id();
    memcpy(msg_header->device_id, uip_lladdr.addr, 8);
    
    return sizeof(msg_header_t);
}

uint32_t build_msg(uint8_t *buf, uint32_t len, msg_type_e msg_type,
                   msg_method_e method, uint8_t *parameters)
{
    uint32_t msg_len = 0;
    msg_header_t *msg_header = NULL;
    
    /*check buf len*/
    if (len < (sizeof(msg_header_t) + strlen(parameters))) {
        return 0;
    }
    
    msg_header = (msg_header_t *)buf;
    msg_header->version = MESSAGE_VERSION;
    msg_header->msg_type = msg_type;
    msg_header->method = method;
    msg_header->msg_id = get_new_msg_id();
    memcpy(msg_header->device_id, uip_lladdr.addr, 8);
    strncpy(buf + sizeof(msg_header_t), parameters, strlen(parameters));
    
    return sizeof(msg_header_t) + strlen(parameters);
}