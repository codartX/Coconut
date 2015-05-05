/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <malloc.h>
#include <string.h>
#include "net/uip.h"
#include "message.h"

static inline short get_new_msg_id()
{
    static short g_msg_id = 0;
    g_msg_id++;

    return g_msg_id;
}

int build_msg(char *buf, int len, msg_type_e msg_type, 
              msg_method_e method, char *parameters)
{
    int msg_len = 0;
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

