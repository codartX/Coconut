/*
 *  Created by Jun Fang on 15-7-23.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include "crypto.h"
#include "main.h"
#include "device.h"
#include "cfs/cfs.h"
#include "cfs/cfs-coffee.h"
#include "lib/random.h"
#include "device-fs.h"
#include "cc2530-aes.h"

static network_shared_key_t network_shared_key;

static master_key_t master_key;

uint16_t g_seq_num;

uint16_t get_password(uint8_t **pwd)
{
    struct device_fs_file file;
    if(device_fs_open("/PWD", &file)) {
        *pwd = file.data;
        return file.len;
    } 
    
    return 0;
}

uint16_t get_password_encrypted_by_public_key(uint8_t **pwd)
{
    struct device_fs_file file;
    if(device_fs_open("/EN_PWD", &file)) {
        *pwd = file.data;
        return file.len;
    } 
    
    return 0;
}

network_shared_key_t *get_network_shared_key()
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

uint16_t encrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *enc_buf)
{
    uint16_t len1;
    uint8_t iv[DEVICE_KEY_SIZE];

    memset(iv, 0x0, DEVICE_KEY_SIZE);    
    cc2530_aes_set_key(network_shared_key.key);
    len1 = cc2530_aes_encrypt(AES_MODE_CBC, data, len, enc_buf, iv);
    
    return len1;
}

uint16_t decrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *dec_buf)
{
    uint16_t len1;
    uint8_t iv[DEVICE_KEY_SIZE];

    memset(iv, 0x0, DEVICE_KEY_SIZE);    
    cc2530_aes_set_key(network_shared_key.key);
    len1 = cc2530_aes_decrypt(AES_MODE_CBC, data, len, dec_buf, iv);
    
    return len1;
}

static uint8_t generate_master_key()
{
    uint8_t i = 0;
    uint8_t *pwd = NULL;
    static uint8_t version = 0;
    
    get_password(&pwd);
    if (!pwd) {
        return FAIL;
    }
    
    master_key.random_num = random_rand();
    //for(i = 0; i < DEVICE_KEY_SIZE; i++) {
    //    master_key.rand[i] = random_rand() & 0xFF;
    //}

    PRINTF("master key:");
    for (i = 0; i < DEVICE_KEY_SIZE; i++) {
        master_key.key[i] = pwd[i]^(master_key.random_num & 0xFF);
        //master_key.key[i] = pwd[i]^master_key.rand[i];
        PRINTF("%02x ", master_key.key[i]);
    }
    PRINTF("\n");
    
    return SUCCESS;
}

master_key_t *get_master_key()
{
    return &master_key;
}

uint16_t decrypt_data_by_master_key(uint8_t *data, uint16_t len, uint8_t *dec_buf)
{
    uint8_t i;
    uint8_t iv[DEVICE_KEY_SIZE];

    PRINTF("set master key:");
    for (i = 0; i < DEVICE_KEY_SIZE; i++) {
        PRINTF("%02x ", master_key.key[i]);
    }
    PRINTF("\n");

    memset(iv, 0x0, DEVICE_KEY_SIZE);    
    cc2530_aes_set_key(master_key.key);
    return cc2530_aes_decrypt(AES_MODE_CBC, data, len, dec_buf, iv);
    //return cc2530_aes_decrypt(AES_MODE_CBC, data, len, dec_buf, master_key.rand[i]);
}

uint16_t create_security_client_hello_msg(uint8_t *buf)
{
    security_client_hello_msg_t *msg = (security_client_hello_msg_t *)buf;
    uint8_t *pwd = NULL;
    uint16_t len = 0;
    
    msg->security_header.content_type = SECURITY_CLIENT_HELLO;
    msg->security_header.version = SECURITY_VERSION;
    memcpy(msg->device_id, g_device.device_id, DEV_ID_SIZE);
    //memcpy(msg->rand, master_key.rand, DEV_ID_SIZE);
    msg->random_num = master_key.random_num;

    if (network_shared_key.used) {
        len = get_password(&pwd);
        if (!len) {
            PRINTF("Get pwd fail\n");
            return 0;
        }
        msg->security_header.key_version = network_shared_key.version;
        len = encrypt_data_by_network_shared_key(pwd, len, buf + sizeof(security_client_hello_msg_t));
        if (!len) {
            PRINTF("Encrypt data fail\n");
            return 0;
        }
    } else {
        len = get_password_encrypted_by_public_key(&pwd);
        if (!len) {
            PRINTF("Get encypted pwd fail\n");
            return 0;
        }
        memcpy(buf + sizeof(security_client_hello_msg_t), pwd, len);
        msg->security_header.key_version = 0;
    }
    msg->security_header.len = len + sizeof(msg->random_num) + DEV_ID_SIZE;
    //msg->security_header.len = len + sizeof(msg->rand) + DEV_ID_SIZE;
    
    return sizeof(security_client_hello_msg_t) + len;
}

uint16_t create_security_data_msg(uint8_t *buf, uint8_t *data, uint16_t len)
{
    security_header_t *header = (security_header_t *)buf;
    uint16_t msg_len = 0;

    header->content_type = SECURITY_DATA;
    header->version = SECURITY_VERSION;
    header->key_version = network_shared_key.version; 

    msg_len = encrypt_data_by_network_shared_key(data, len, buf + sizeof(security_header_t));
    if (msg_len) {
        header->len = msg_len;
        return msg_len + sizeof(security_header_t);
    } 

    return 0;
}

uint8_t crypto_init()
{
    if (generate_master_key() == FAIL) {
        return FAIL;
    }

    return SUCCESS;
}


