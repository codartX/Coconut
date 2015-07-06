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
    RETCODE_DATABASE_ERROR,
    RETCODE_DEVICE_NON_EXIST,
    RETCODE_INVALID_RESOURCE,
    RETCODE_INVALID_MSG_FMT,
    RETCODE_INVALID_TRANSACTION_ID,
    RETCODE_PERMISSION_DENY,
    RETCODE_DEVICE_DUPLICATE,
    RETCODE_ENCODE_DECODE_FAIL,
    RETCODE_AUTH_FAIL,
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


#endif