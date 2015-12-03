/*
 *  Created by Jun Fang on 15-7-24.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include <openssl/evp.h>
#include <openssl/aes.h>
#include <string.h>
#include "crypto.h"
#include "utils.h"

uint8_t g_network_shared_key[DEVICE_KEY_SIZE];
uint8_t g_network_shared_key_version;

uint16_t g_seq_num;

static void generate_network_shared_key()
{
    uint16_t i = 0;

    RAND_bytes(g_network_shared_key, DEVICE_KEY_SIZE);
    
    printf("network key:");
    for(i = 0; i < DEVICE_KEY_SIZE; i++) {
        printf("%02x ", g_network_shared_key[i]);
    }
    printf("\n");

    g_network_shared_key_version++;
    if (g_network_shared_key_version == 0) {
        g_network_shared_key_version++;
    }
    
    return;
}

uint8_t generate_master_key(sensor_session *session)
{
    uint8_t i = 0;
    
    if (session) {
        printf("Master key:");
        for (i = 0; i < DEVICE_PWD_SIZE; i++) {
            session->master_key[i] = session->pwd[i]^(session->random & 0xFF);
            printf("%02x ", session->master_key[i]);
        }
        printf("\n");
        return 1;
    }
    
    return 0;
}

uint8_t *get_network_shared_key()
{
    return g_network_shared_key;
}

uint8_t get_current_network_shared_key_version()
{
    return g_network_shared_key_version;
}

int32_t crypto_init()
{
    generate_network_shared_key();
    
    return 1;
}

uint32_t encrypt(sensor_session *session, uint8_t *plaintext, uint32_t plaintext_len, uint8_t *ciphertext)
{
    uint32_t len, ciphertext_len;
    EVP_CIPHER_CTX ctx;
    uint8_t iv[DEVICE_KEY_SIZE];
    
    if(!session) {
        return 0;
    }
    
    memset(iv, 0x0, DEVICE_KEY_SIZE);

    EVP_CIPHER_CTX_init(&ctx);
    
    if(1 != EVP_EncryptInit_ex(&ctx, EVP_aes_128_cbc(), NULL, g_network_shared_key, iv)) {
        printf("EVP_EncryptInit_ex error!\n");
        return 0;
    }
    
    EVP_CIPHER_CTX_set_padding(&ctx, 0);
    
    /* Provide the message to be encrypted, and obtain the encrypted output.
     * EVP_EncryptUpdate can be called multiple times if necessary
     */
    if(1 != EVP_EncryptUpdate(&ctx, ciphertext, &len, plaintext, plaintext_len)) {
        printf("EVP_EncryptUpdate error!\n");
        return 0;
    }
    ciphertext_len = len;
    
    if(1 != EVP_EncryptFinal_ex(&ctx, ciphertext + len, &len)) {
        printf("EVP_EncryptFinal_ex error\n");
        return 0;
    }
  
    ciphertext_len += len;

    EVP_CIPHER_CTX_cleanup(&ctx);

    return ciphertext_len;
}

uint32_t decrypt(sensor_session *session, uint8_t *ciphertext, uint32_t ciphertext_len, uint8_t *plaintext)
{
    uint32_t len;
    EVP_CIPHER_CTX ctx;
    uint8_t iv[DEVICE_KEY_SIZE];
    
    if(!session) {
        return 0;
    }
    
    memset(iv, 0x0, DEVICE_KEY_SIZE);

    EVP_CIPHER_CTX_init(&ctx);
    
    if(1 != EVP_DecryptInit_ex(&ctx, EVP_aes_128_cbc(), NULL, g_network_shared_key, iv)) {
        printf("EVP_DecryptInit_ex error!\n");
        return 0;
    }
    
    EVP_CIPHER_CTX_set_padding(&ctx, 0);

    if(1 != EVP_DecryptUpdate(&ctx, plaintext, &len, ciphertext, ciphertext_len)) {
        printf("EVP_DecryptUpdate error!\n");
        return 0;
    }

    EVP_CIPHER_CTX_cleanup(&ctx);

    return len;
}

uint32_t create_security_error_msg(uint8_t *buf, uint32_t error_code, uint8_t key_version)
{
    security_error_msg_t *error_msg = (security_error_msg_t *)buf;
    
    error_msg->security_header.content_type = SECURITY_ERROR;
    error_msg->security_header.version = SECURITY_VERSION;
    error_msg->security_header.key_version = key_version;
    error_msg->security_header.len = sizeof(security_error_msg_t);
    error_msg->error_code = error_code;
    
    return sizeof(security_error_msg_t);
}

uint32_t create_security_server_hello_msg(sensor_session *session, uint8_t *buf)
{
    security_server_hello_msg_t *msg = (security_server_hello_msg_t *)buf;
    EVP_CIPHER_CTX ctx;
    uint32_t len, i;
    uint32_t ciphertext_len;
    uint8_t iv[DEVICE_KEY_SIZE];
    
    if (!session) {
        return 0;
    }
    
    memset(iv, 0x0, DEVICE_KEY_SIZE);

    msg->security_header.content_type = SECURITY_SERVER_HELLO;
    msg->security_header.version = SECURITY_VERSION;
    msg->security_header.key_version = get_current_network_shared_key_version();
    
    EVP_CIPHER_CTX_init(&ctx);

    if(1 != EVP_EncryptInit_ex(&ctx, EVP_aes_128_cbc(), NULL, session->master_key, iv)) {
        printf("EVP_EncryptInit_ex error\n");
        return 0;
    }

    EVP_CIPHER_CTX_set_padding(&ctx, 0);
    
    if(1 != EVP_EncryptUpdate(&ctx, msg->data, &len, get_network_shared_key(), DEVICE_KEY_SIZE)) {
        printf("EVP_EncryptUpdate error\n");
        return 0;
    }
    
    ciphertext_len = len;
    
    msg->security_header.len = ciphertext_len;
    printf("server hello len:%d, data:", ciphertext_len);
    for(i = 0; i < ciphertext_len; i++) {
        printf("%02x ", (msg->data)[i]);
    }
    printf("\n");
    
    return sizeof(security_server_hello_msg_t) + ciphertext_len;
}

uint32_t create_security_data_msg(sensor_session *session, uint8_t *buf, uint8_t *payload, uint32_t len)
{
    security_header_t *security_header = (security_header_t *)buf;
    
    security_header->content_type = SECURITY_DATA;
    security_header->version = SECURITY_VERSION;
    security_header->key_version = get_current_network_shared_key_version();
    security_header->len = len;
    memcpy(buf + sizeof(security_header_t), payload, len);
    
    return sizeof(security_header_t) + len;
}

