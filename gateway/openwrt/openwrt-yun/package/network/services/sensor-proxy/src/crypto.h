/*
 *  Created by Jun Fang on 15-7-24.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#ifndef _CRYPTO_H
#define _CRYPTO_H

#include "session.h"

/*
 0                   1                   2                   3
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |content type   |    version    | key version   |      len      |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |    len        |  data...
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

 1. SECURITY_CLIENT_HELLO & SECURITY_SERVER_HELLO, first 8 bytes is device ID
 
  SECURITY_CLIENT_HELLO's data:

 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Random Number (32 Bytes)                  |
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Encrypted Password ...
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 
 SECURITY_SERVER_HELLO's data:
 
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |                     Encrypted Shared Network Key ...
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
    uint8_t  version;
    uint8_t  content_type;
    uint8_t  key_version;//0=cloud public key, >0 version of shared key
    uint16_t seq;
    uint16_t len;
    uint8_t  payload[0];
} security_header_t;

typedef struct _security_handshake_msg_t {
    security_header_t security_header;
    uint8_t device_id[DEVICE_ID_SIZE];
    uint8_t random_num[DEVICE_KEY_SIZE];
    uint8_t data[0];
} security_handshake_msg_t;

typedef struct _security_error_msg_t {
    security_header_t security_header;
    uint32_t error_code;
} security_error_msg_t;

uint8_t generate_master_key(sensor_session *session);

uint8_t *get_network_shared_key();

uint8_t get_current_network_shared_key_version();

int32_t crypto_init();

uint32_t encrypt(uint8_t *plaintext, uint32_t plaintext_len, uint8_t *ciphertext);

uint32_t decrypt(uint8_t *ciphertext, uint32_t ciphertext_len, uint8_tr *plaintext);

uint32_t create_security_error_msg(uint8_t *buf, uint32_t error_code, uint8_t key_version, uint16_t seq_num);

uint32_t create_security_server_hello_msg(uint8_t *buf, sensor_session *session, uint16_t seq_num);

uint32_t create_security_data_msg(uint8_t *buf, uint8_t *payload, uint32_t len);

#endif