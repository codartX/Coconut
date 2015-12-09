/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <malloc.h>
#include <string.h>
#include <stdio.h>
#include "net/uip.h"
#include "device.h"
#include "message.h"
#include "resource.h"
#include "crypto.h"
#include <time.h>
#include "lib/random.h"

static inline uint16_t get_new_msg_id()
{
    static uint16_t g_msg_id = 0;
    g_msg_id++;

    return g_msg_id;
}

uint16_t build_msg_header(uint8_t *buf, uint16_t len, msg_type_e msg_type,
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
    memcpy(msg_header->device_id, g_device.device_id, DEV_ID_SIZE);
    
    return sizeof(msg_header_t);
}

uint16_t build_msg(uint8_t *buf, uint16_t len, msg_type_e msg_type, 
                   msg_method_e method, uint8_t *parameters)
{
    uint16_t msg_len = 0;
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
    memcpy(msg_header->device_id, g_device.device_id, DEV_ID_SIZE);
    strncpy(buf + sizeof(msg_header_t), parameters, strlen(parameters));

    return sizeof(msg_header_t) + strlen(parameters);
}

uint16_t create_report_msg(uint8_t *buf, uint16_t len, uint8_t *device_id, object_instance_t *obj)
{
    uint16_t header_len = 0, parameters_len = 0;
    resource_instance_t *resource = NULL;
    
    if (!obj) {
        return 0;
    }
    
    header_len = build_msg_header(buf, len, TYPE_REQUEST, METHOD_REPORT);
    resource = object_instance_find_resource(obj, 5700);
    if (resource->resource_type->type == Integer) {
        parameters_len = sprintf(buf + header_len, "[%02x%02x%02x%02x%02x%02x%02x%02x,[[\"%s\",%d]]]", 
                                 device_id[0],device_id[1],device_id[2],device_id[3],
                                 device_id[4],device_id[5],device_id[6],device_id[7],
                                 ((object_instance_t *)resource->parent_obj)->name,
                                 resource->value.int_value);
    } else if (resource->resource_type->type == Float) {
        parameters_len = sprintf(buf + header_len, "[%02x%02x%02x%02x%02x%02x%02x%02x,[[\"%s\",%f]]]", 
                                 device_id[0],device_id[1],device_id[2],device_id[3],
                                 device_id[4],device_id[5],device_id[6],device_id[7],
                                 ((object_instance_t *)resource->parent_obj)->name,
                                 resource->value.float_value);
    } else if (resource->resource_type->type == String) {
        parameters_len = sprintf(buf + header_len, "[%02x%02x%02x%02x%02x%02x%02x%02x,[[\"%s\",\"%s\"]]]", 
                                 device_id[0],device_id[1],device_id[2],device_id[3],
                                 device_id[4],device_id[5],device_id[6],device_id[7],
                                 ((object_instance_t *)resource->parent_obj)->name,
                                 resource->value.string_value);
    } else {
        return 0;
    }
        
    return (header_len + parameters_len);

}

uint16_t create_new_device_msg(uint8_t *buf, uint16_t len, msg_type_e msg_type)
{
    uint16_t data_len = 0;
    uint8_t *ptr = buf;
    object_instance_t *obj = g_device.obj_list;
    resource_instance_t *res = NULL;
    
    data_len = build_msg_header(buf, len, msg_type, METHOD_NEW_DEVICE);
    ptr = buf + data_len;
    
    data_len = sprintf(ptr, "[["); 
    ptr += data_len;
    
    while (obj) {
        data_len = sprintf(ptr, "[%d,\"%s\",[", obj->object_id, obj->name);
        ptr += data_len;
        
        res = obj->res_list;
        while (res) {
            data_len = sprintf(ptr, "[%d,", res->resource_type->resource_id);
            ptr += data_len;
            
            if (res->resource_type->type == String) {
                data_len = sprintf(ptr, "\"%s\"", res->value.string_value);
            } else if (res->resource_type->type == Float) {
                data_len = sprintf(ptr, "%f", res->value.float_value);
            } else {
                data_len = sprintf(ptr, "%d", res->value.int_value);
            }
            ptr += data_len;
            
            data_len = sprintf(ptr, "],");
            ptr += data_len;
            
            res = res->next;
        }
        ptr--;//backward 1 char, remove ','
        
        data_len = sprintf(ptr, "]],");
        ptr += data_len;
        
        obj = obj->next;
    }
    ptr--;//backward 1 char, remove ','
    
    data_len = sprintf(ptr, "]]");
    ptr += data_len;
    
    return (ptr - buf);
}

uint16_t create_get_config_msg(uint8_t *buf, uint16_t len)
{
    uint16_t data_len = 0;
    
    data_len = build_msg_header(buf, len, TYPE_REQUEST, METHOD_GET_CONFIG);
    
    return data_len;
}

uint16_t create_log_msg(uint8_t *buf, uint16_t len, uint8_t level, uint8_t *log)
{
    uint16_t header_len = 0, parameters_len = 0;
    
    header_len = build_msg_header(buf, len, TYPE_REQUEST, METHOD_LOG);
    
    parameters_len = sprintf(buf + header_len, "[%d,\"%s\"]", level, log);
    
    return (header_len + parameters_len - 1);
}

uint16_t create_subscribe_msg(uint8_t *buf, uint16_t len, uint8_t *obj_name, uint16_t resource_id)
{
    uint16_t header_len = 0, parameters_len = 0;
    
    header_len = build_msg_header(buf, len, TYPE_REQUEST, METHOD_SUBSCRIBE);
    
    parameters_len = sprintf(buf + header_len, "[[\"%s\",[%d]]]", obj_name, resource_id);
    
    return (header_len + parameters_len);
}

uint16_t create_unsubscribe_msg(uint8_t *buf, uint16_t len, uint8_t *obj_name, uint16_t resource_id)
{
    uint16_t header_len = 0, parameters_len = 0;
    
    header_len = build_msg_header(buf, len, TYPE_REQUEST, METHOD_SUBSCRIBE);
    
    parameters_len = sprintf(buf + header_len, "[[\"%s\",[%d]]]", obj_name, resource_id);
    
    return (header_len + parameters_len);
}


