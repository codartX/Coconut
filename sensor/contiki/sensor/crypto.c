/*
 *  Created by Jun Fang on 15-7-23.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include "crypto.h"
#include "main.h"
#include "device.h"
#include "aes.h"
#include "cfs/cfs.h"
#include "cfs/cfs-coffee.h"
#include "lib/random.h"

static network_shared_key_t network_shared_key;

static master_key_t master_key;

uint16_t g_seq_num;

uint8_t g_device_passowrd[DEVICE_KEY_SIZE];

uint32_t get_password(uint8_t **pwd)
{
    *pwd = g_device_passowrd;
    
    return DEVICE_KEY_SIZE;
}

uint32_t get_password_encrypted_by_public_key(uint8_t *pwd)
{
    int32_t fd;
    uint32_t len = 0;
    
    fd = cfs_open("PWD_EN", CFS_READ);
    if(fd != -1) {
        len = cfs_read(fd, pwd, DEVICE_KEY_SIZE * 2);//DEVICE_KEY_SIZE * 2 is enough for encrypted pwd, right?
        cfs_close(fd);
    } else {
        PRINTF("ERROR: could not read password from memory.\n");
        return 0;
    }
    
    return len;
}

inline network_shared_key_t *get_network_shared_key()
{
    return &network_shared_key;
}

uint8_t set_network_shared_key(uint8_t *key, uint16_t version)
{
    if (!key) {
        return FAIL;
    }
    memcpy(network_shared_key.key, key, DEVICE_KEY_SIZE);
    network_shared_key.version = version;
    network_shared_key.used = 1;
    
    return SUCCESS;
}

uint32_t encrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *enc_buf)
{
    AesCtx ctx;
    int32_t len1;
    
    if( AesCtxIni(&ctx, master_key.random_num, network_shared_key.key, KEY128, CBC) < 0) {
        return 0;
    }
    
    len1 = AesEncrypt(&ctx, data, enc_buf, len);
    if (len1 < 0) {
        return 0;
    }
    
    return len1;
}

uint32_t decrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *dec_buf)
{
    AesCtx ctx;
    int32_t len1;
    
    if( AesCtxIni(&ctx, master_key.random_num, network_shared_key.key, KEY128, CBC) < 0) {
        return 0;
    }
    
    len1 = AesDecrypt(&ctx, data, dec_buf, len);
    if (len1 < 0) {
        return 0;
    }
    
    return len1;
}

uint8_t generate_master_key()
{
    uint8_t i = 0;
    uint8_t *pwd = NULL;
    
    get_password(&pwd);
    if (!pwd) {
        return FAIL;
    }
    
    for (i = 0; i < DEVICE_KEY_SIZE; i++) {
        master_key.master_key[i] = pwd[i]^master_key.random_num[i];
    }
    
    return SUCCESS;
}

uint32_t decrypt_data_by_master_key(uint8_t *data, uint16_t len, uint8_t *dec_buf)
{
    AesCtx ctx;
    int32_t len1;
    
    if( AesCtxIni(&ctx, master_key.random_num, master_key.master_key, KEY128, CBC) < 0) {
        return 0;
    }
    
    len1 = AesDecrypt(&ctx, data, dec_buf, len);
    if (len1 < 0) {
        return 0;
    }
    
    return len1;
}

uint32_t create_security_client_hello_msg(uint8_t *buf)
{
    security_handshake_msg_t *msg = (security_handshake_msg_t *)buf;
    uint8_t *pwd = NULL;
    uint32_t len = 0;
    
    msg->security_header.content_type = SECURITY_CLIENT_HELLO;
    msg->security_header.version = SECURITY_VERSION;
    msg->security_header.seq = g_seq_num++;
    master_key.seq_num = msg->security_header.seq;//update master seq
    memcpy(msg->device_id, g_device.device_id, DEV_ID_SIZE);
    memcpy(msg->random_num, master_key.random_num, DEVICE_KEY_SIZE);

    if (network_shared_key.used) {
        get_password(&pwd);
        if (!pwd) {
            return 0;
        }
        msg->security_header.key_version = network_shared_key.version;
        len = encrypt_data_by_network_shared_key(pwd, DEVICE_KEY_SIZE, buf + sizeof(security_handshake_msg_t));
        if (!len) {
            return 0;
        }
    } else {
        len = get_password_encrypted_by_public_key(buf + sizeof(security_handshake_msg_t));
        if (!len) {
            return 0;
        }
        msg->security_header.key_version = 0;
    }
    msg->security_header.len = len + DEVICE_KEY_SIZE + DEV_ID_SIZE;
    
    return sizeof(security_handshake_msg_t) + len;
}

uint8_t crypto_init()
{
    int32_t fd;
    
    fd = cfs_open("PWD", CFS_READ);
    if(fd != -1) {
        cfs_read(fd, g_device_passowrd, DEVICE_KEY_SIZE);
        cfs_close(fd);
    } else {
        PRINTF("ERROR: could not read password from memory.\n");
        return FAIL;
    }

    return SUCCESS;
}


