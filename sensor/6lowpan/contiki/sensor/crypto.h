/*
 *  Created by Jun Fang on 15-7-23.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#ifndef _CRYPTO_H
#define _CRYPTO_H

#include "main.h"

#define DEVICE_KEY_SIZE    16

typedef struct _network_shared_key_t {
    uint8_t used;
    uint16_t version;
    uint8_t key[DEVICE_KEY_SIZE];
} network_shared_key_t;

typedef struct _master_key_t {
    uint32_t random_num;
    uint8_t key[DEVICE_KEY_SIZE];
} master_key_t;

/*
 0                   1                   2                   3
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 | v | type|key v|              len              |data           |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                            data....
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 
 1. SECURITY_CLIENT_HELLO & SECURITY_SERVER_HELLO
 
 SECURITY_CLIENT_HELLO's data:
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Device ID                                 |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Device ID                                 |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Random Number                             |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Encrypted Password ...
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 
 SECURITY_SERVER_HELLO's data:
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                Encrypted Shared Network Key...                   
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 
 2. SECURITY_DATA's data:
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Encrypted Data ...
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 
 3. SECURITY_ERROR's data:
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Error Code                                |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 */

#define SECURITY_VERSION    1

typedef enum _security_error_e {
    SECURITY_ERROR_INVALID_PWD = 0,
    SECURITY_ERROR_INVALID_KEY_VERSION,
    SECURITY_ERROR_DECRYPT_ERROR,
    SECURITY_ERROR_SERVER_ERROR,
    SECURITY_ERROR_SESSION_NOT_FOUND,
} security_error_e;

typedef enum _key_type_e {
    KEY_TYPE_PUBLIC = 0,
    KEY_TYPE_SHARED,
} key_type_e;

typedef enum _content_type_e {
    SECURITY_CLIENT_HELLO = 0,
    SECURITY_SERVER_HELLO,
    SECURITY_DATA,
    SECURITY_ERROR,
} content_type_e;

typedef struct _security_header_t {
    uint8_t  version:2;
    uint8_t  content_type:3;
    uint8_t  key_version:3;//0=cloud public key, >0 version of shared key
    uint16_t  len;
} security_header_t;

typedef struct _security_client_hello_msg_t {
    security_header_t security_header;
    uint8_t device_id[DEV_ID_SIZE];
    uint32_t random_num;
} security_client_hello_msg_t;

typedef struct _security_server_hello_msg_t {
    security_header_t security_header;
} security_server_hello_msg_t;

typedef struct _security_data_msg_t {
    security_header_t security_header;
} security_data_msg_t;

typedef struct _security_error_msg_t {
    security_header_t security_header;
    uint16_t error_code;
} security_error_msg_t;

uint16_t get_password(uint8_t **pwd);

uint16_t get_password_encrypted_by_public_key(uint8_t **pwd);

uint16_t encrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *enc_buf);

uint16_t decrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *dec_buf);

uint8_t set_network_shared_key(uint8_t *key, uint16_t version);

network_shared_key_t *get_network_shared_key();

master_key_t *get_master_key();

uint16_t decrypt_data_by_master_key(uint8_t *data, uint16_t len, uint8_t *dec_buf);

uint16_t create_security_client_hello_msg(uint8_t *buf);

uint16_t create_security_data_msg(uint8_t *buf, uint8_t *data, uint16_t len);

uint8_t crypto_init();

#endif

