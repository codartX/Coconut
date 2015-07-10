/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */
#ifndef _MESSAGE_H
#define _MESSAGE_H

#include "resource.h"

#define MESSAGE_VERSION    0

typedef enum _msg_type_e {
    TYPE_REQUEST = 0,
    TYPE_RESPONSE,
} msg_type_e;

typedef enum _msg_method_e {
    METHOD_NEW_DEVICE = 0,
    METHOD_GET_CONFIG,
    METHOD_GET_RESOURCES,
    METHOD_SET_RESOURCES,
    METHOD_REPORT,
    METHOD_UPGRADE,
    METHOD_RELOAD,
    METHOD_LOG,
    METHOD_AUTH,
    METHOD_SET_POLICY,
    METHOD_GET_POLICY,
    METHOD_UNSET_POLICY,
    METHOD_SUBSCRIBE,
    METHOD_UNSUBSCRIBE,
} msg_method_e;

typedef enum _retcode_e {
    RETCODE_SUCCESS =0,
    RETCODE_FAIL,
    RETCODE_DEVICE_NOT_REGISTER,
    RETCODE_WRONG_FMT,
    RETCODE_BUSY,
} retcode_e; 

typedef struct _msg_header_t {
    uint8_t  version:2;
    uint8_t  msg_type:6;
    uint8_t  method;
    uint16_t msg_id;
    uint8_t  device_id[8];
    uint8_t  parameters[0];
} msg_header_t;

#define MSG_HEAD_LEN    sizeof(msg_header_t)

uint32_t build_msg(uint8_t *buf, uint32_t len, msg_type_e msg_type, 
                   msg_method_e method, uint8_t *parameters);

#define get_msg_con(payload) (((msg_header_t *)payload)->con) 

#define get_msg_type(payload) (msg_type_e)(((msg_header_t *)payload)->msg_type) 

#define get_msg_method(payload) (msg_method_e)(((msg_header_t *)payload)->method) 

#define get_msg_id(payload) (((msg_header_t *)payload)->msg_id) 

#define get_msg_device_id(payload) (((msg_header_t *)payload)->device_id) 

#define get_msg_parameters(payload) (((msg_header_t *)payload)->parameters) 

uint32_t create_new_device_msg(uint8_t *buf, uint32_t len, msg_type_e msg_type);

uint32_t create_report_msg(uint8_t *buf, uint32_t len, resource_instance_t *resource);

uint32_t create_get_config_msg(uint8_t *buf, uint32_t len);

uint32_t create_log_msg(uint8_t *buf, uint32_t len, uint8_t level, uint8_t *log);

#endif
