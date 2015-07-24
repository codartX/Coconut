/*
 *  Created by Jun Fang on 15-7-23.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include "crypto.h"


static network_shared_key_t *network_shared_key;

static uint8_t master_key[32];

static uint8_t get_password(uint8_t **pwd)
{

}

uint8_t get_password_encrypted_by_public_key(uint32_t *pwd)
{
    
}

uint8_t get_password_encrypted_by_network_shared_key(uint32_t *pwd)
{
    
}

uint8_t save_network_shared_key(network_shared_key_t *key)
{

}

network_shared_key_t *get_network_shared_key()
{
    
}

uint8_t encrypt_data_by_public_key(uint8_t *data, uint16_t len, uint8_t *enc_buf)
{

}

uint8_t encrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *enc_buf)
{

}

uint8_t decrypt_data_by_network_shared_key(uint8_t *data, uint16_t len, uint8_t *dec_buf)
{
    
}

static uint8_t generate_master_key(uint8_t *pwd, uint8_t *random_num, uint16_t len)
{

}

uint8_t decrypt_data_by_master_key(uint8_t *data, uint16_t len, uint8_t *dec_buf)
{
    
}

uint8_t crypto_init()
{
    
}

