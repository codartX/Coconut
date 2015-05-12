/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <malloc.h>
#include <string.h>
#include "net/uip.h"
#include "message.h"
#include "resource.h"

static inline uint16_t get_new_msg_id()
{
    static uint16_t g_msg_id = 0;
    g_msg_id++;

    return g_msg_id;
}

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

uint32_t create_report_msg(uint8_t *buf, uint32_t len, resource_instance_t *resource)
{
    uint32_t header_len = 0, parameters_len = 0;
    
    if (!resource) {
        return 0;
    }
    
    msg_len = build_msg_header(buf, len, TYPE_REQUEST, METHOD_REPORT);
    if (resource->type == Integer) {
        parameters_len = sprintf(buf + msg_len, "[[[%s, [[%s, %d]]]], %d]", resource->parent_obj->name,
                                 resource->name, resource->value.integer_value);
    } else if (resource->type == Boolean) {
        if (resource->value.boolean_value) {
            parameters_len = sprintf(buf + msg_len, "[[[%s, [[%s, True]]]], %d]", resource->parent_obj->name, resource->name);
        } else {
            parameters_len = sprintf(buf + msg_len, "[[[%s, [[%s, False]]]], %d]", resource->parent_obj->name, resource->name);
        }
    } else if (resource->type == Float) {
        parameters_len = sprintf(buf + msg_len, "[[[%s, [[%s, %f]]]], %d]", resource->parent_obj->name,
                                 resource->name, resource->value.float_value);
    } else if (resource->type == String) {
        parameters_len = sprintf(buf + msg_len, "[[[%s, [[%s, %s]]]], %d]", resource->parent_obj->name,
                                 resource->name, resource->value.string_value);
    } else {
        return 0;
    }
        
    return (header_len + parameters_len - 1);

}

uint32_t create_new_device_msg(uint8_t *buf, uint32_t len)
{

}

