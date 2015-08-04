/*
 *  Created by Jun Fang on 15-7-24.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include <openssl/evp.h>
#include <openssl/aes.h>
#include "crypto.h"

EVP_CIPHER_CTX g_e_ctx;
EVP_CIPHER_CTX g_d_ctx;
bool g_crypto_init_done;

uint8_t g_network_shared_key[DEVICE_KEY_SIZE];
uint8_t g_network_shared_key_version;

static void generate_network_shared_key()
{
    RAND_bytes(g_network_shared_key, sizeof(g_network_shared_key));
    
    g_network_shared_key_version++;
    if (g_network_shared_key_version == 0) {
        g_network_shared_key_version++;
    }
    
    return;
}

int32_t generate_master_key(uint8_t *pwd, uint8_t *random_num)
{

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
    EVP_CIPHER_CTX_init(&g_e_ctx);
    EVP_EncryptInit_ex(&g_e_ctx, EVP_aes_128_cbc(), NULL, g_network_shared_key, NULL);
    EVP_CIPHER_CTX_init(&g_d_ctx);
    EVP_DecryptInit_ex(&g_d_ctx, EVP_aes_128_cbc(), NULL, g_network_shared_key, NULL);
    
    generate_network_shared_key();
    
    g_crypto_init_done = 1;
    
    return 1;
}

uint32_t encrypt(uint8_t *plaintext, uint32_t plaintext_len, uint8_t *ciphertext)
{
    uint32_t len;
    uint32_t ciphertext_len;
    uint8_t *key = g_network_shared_key;
    uint8_t *iv = NULL;
    
    if (g_crypto_init_done == 0) {
        printf("Crypto init not finished!\n");
        return 0;
    }
    
    /* Provide the message to be encrypted, and obtain the encrypted output.
     * EVP_EncryptUpdate can be called multiple times if necessary
     */
    if(1 != EVP_EncryptUpdate(&g_e_ctx, ciphertext, &len, plaintext, plaintext_len)) {
        printf("EVP_EncryptUpdate error!\n");
        return 0;
    }
    
    ciphertext_len = len;
    
    /* Finalise the encryption. Further ciphertext bytes may be written at
     * this stage.
     */
    if(1 != EVP_EncryptFinal_ex(&g_e_ctx, ciphertext + len, &len)) {
        printf("EVP_EncryptFinal_ex error!\n");
        return 0;
    }
    
    ciphertext_len += len;
    
    return ciphertext_len;
}

uint32_t decrypt(uint8_t *ciphertext, uint32_t ciphertext_len, uint8_tr *plaintext)
{
    uint32_t len;
    uint32_t plaintext_len;
    uint8_t *key = g_network_shared_key;
    uint8_t *iv = NULL;
    
    if (g_crypto_init_done == 0) {
        printf("Crypto init not finished!\n");
        return 0;
    }
    
    if(1 != EVP_DecryptUpdate(&g_d_ctx, plaintext, &len, ciphertext, ciphertext_len)) {
        printf("EVP_DecryptUpdate error!\n");
        return 0;
    }

    plaintext_len = len;
    
    /* Finalise the decryption. Further plaintext bytes may be written at
     * this stage.
     */
    if(1 != EVP_DecryptFinal_ex(ctx, plaintext + len, &len)) {
        printf("EVP_DecryptFinal_ex error!\n");
        return 0;
    }
    
    plaintext_len += len;
    
    return plaintext_len;
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

uint32_t create_security_server_hello_msg(uint8_t *buf, sensor_session *session)
{
    security_header_t *security_header = (security_header_t *)buf;
    EVP_CIPHER_CTX ctx;
    uint32_t len;
    uint32_t ciphertext_len;
    
    if (!session) {
        return 0;
    }
    
    security_header->content_type = SECURITY_SERVER_HELLO;
    security_header->version = SECURITY_VERSION;
    security_header->key_version = get_current_network_shared_key_version();
    
    
    if(1 != EVP_EncryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, session->master_key, NULL)) {
        printf("EVP_EncryptInit_ex error\n");
        return 0;
    }
    
    if(1 != EVP_EncryptUpdate(ctx, security_header->data, &len, get_network_shared_key, DEVICE_KEY_SIZE)) {
        printf("EVP_EncryptUpdate error\n");
        return 0;
    }
    
    ciphertext_len = len;
    
    /* Finalise the encryption. Further ciphertext bytes may be written at
     * this stage.
     */
    if(1 != EVP_EncryptFinal_ex(ctx, security_header->data + len, &len)) {
        printf("EVP_EncryptFinal_ex error\n");
        return 0;
    }
    ciphertext_len += len;
    
    security_header->len = ciphertext_len;
    
    return sizeof(security_header_t) + security_header->len;
}

uint32_t create_security_data_msg(uint8_t *buf, uint8_t *payload, uint32_t len)
{
    security_header_t *security_header = (security_header_t *)buf;
    
    security_header->content_type = SECURITY_DATA;
    security_header->version = SECURITY_VERSION;
    security_header->key_version = get_current_network_shared_key_version();
    security_header->len = len;
    memcpy(buf + sizeof(security_header), payload, len);
    
    return sizeof(security_header_t) + len;
}

