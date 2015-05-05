/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */
#ifndef _MESSAGE_H
#define _MESSAGE_H

#define MESSAGE_VERSION    0

typedef enum _msg_type_e {
    TYPE_REQUEST = 0,
    TYPE_RESPONSE,
} msg_type_e;

typedef enum _msg_method_e {
    METHOD_NEW = 0,
    METHOD_INFO,
    METHOD_GET_INFO,
    METHOD_CONFIG,
    METHOD_UPGRADE,
    METHOD_RELOAD,
    METHOD_MESSAGE,
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
    char version:2;
    char msg_type:6;
    char method;
    short msg_id;
    char device_id[8];
    char parameters[0];
} msg_header_t;

int build_msg(char *buf, int len, msg_type_e msg_type, 
              msg_method_e method, char *parameters);

#define get_msg_con(payload) (((msg_header_t *)payload)->con) 

#define get_msg_type(payload) (msg_type_e)(((msg_header_t *)payload)->msg_type) 

#define get_msg_method(payload) (msg_method_e)(((msg_header_t *)payload)->method) 

#define get_msg_id(payload) (((msg_header_t *)payload)->msg_id) 

#define get_msg_device_id(payload) (((msg_header_t *)payload)->device_id) 

#define get_msg_parameters(payload) (((msg_header_t *)payload)->parameters) 

int new_device_msg();

#endif
