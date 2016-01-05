/*
 * Copyright (c) 2015, Jun Fang.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

/**
 * \file
 *         AES encryption/decryption functions.
 * \author
 *         Jun Fang <apifan@gmail.com>
 */

#include "contiki.h"
#include "cc253x.h"
#include "dev/cc2530-aes.h"
#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"
#include "sys/clock.h"

/*---------------------------------------------------------------------------*/
void
cc2530_aes_set_key(uint8_t *key)
{
    uint8_t i;

    AES_SET_CMD(AES_LOAD_KEY);
    AES_START();

    for(i = 0; i < 16; i++){
       ENCDI = key[i];
    }

    return;
}
/*---------------------------------------------------------------------------*/
static void
cc2530_aes_set_iv(uint8_t *iv)
{
    uint8_t i;

    AES_SET_CMD(AES_LOAD_IV);
    AES_START();

    for(i = 0; i < 16; i++){
       ENCDI = iv[i];
    }

    return;
}
/*---------------------------------------------------------------------------*/
static uint16_t cc2530_aes_operation(uint8_t op, uint8_t *input, uint16_t length, 
                                 uint8_t *output, uint8_t *iv)
{
    uint16_t i;
    uint8_t j, k;
    uint8_t mode;
    uint16_t total_blocks_num;
    uint16_t converted_blocks;
   
    total_blocks_num = length / 0x10;
    
    if((length % 0x10) != 0){
        // length not multiplum of 16, convert one block extra with zeropadding
        total_blocks_num++;
    }
    
    // Loading the IV.
    if (iv) {
        cc2530_aes_set_iv(iv);
    }
    
    // Start the operation
    AES_SET_CMD(op);
    
    // Getting the operation mode.
    mode = ENCCS & 0x70;
    
    for(converted_blocks = 0; converted_blocks < total_blocks_num; converted_blocks++){
        // Starting the conversion.
        AES_START();
    
        i = converted_blocks * 16;
        // Counter, Output Feedback and Cipher Feedback operates on 4 bytes and not 16 bytes.
        if((mode == AES_MODE_CFB) || (mode == AES_MODE_OFB) || (mode == AES_MODE_CTR)) {
    
            for(j = 0; j < 4; j++){
                // Writing the input data with zero-padding
                for(k = 0; k < 4; k++){
                    ENCDI = ((i + 4*j + k < length) ? input[i + 4*j + k] : 0x00 );
                }
    
                // Read out data for every 4th byte
                for(k = 0; k < 4; k++){
                    output[i + 4*j + k] = ENCDO;
                }
    
            }
        } else if (mode == AES_MODE_CBC_MAC){
            // Writing the input data with zero-padding
            for(j = 0; j < 16; j++){
                ENCDI = ((i + j < length) ? input[i + j] : 0x00 );
            }
            // The last block of the CBC-MAC is computed by using CBC mode.
            if(converted_blocks == total_blocks_num - 2){
                AES_SET_MODE(AES_MODE_CBC);
                // wait for data ready
                clock_delay_usec(1);
            } else if(converted_blocks == total_blocks_num - 1){
                // The CBC-MAC does not produce an output on the n-1 first blocks
                // only the last block is read out
    
                // wait for data ready
                clock_delay_usec(1);
                for(j = 0; j < 16; j++){
                    output[j] = ENCDO;
                }
            }
        } else { // ECB or CBC
           // Writing the input data with zero-padding
           for(j = 0; j < 16; j++){
               ENCDI = ((i+j < length) ? input[i+j] : 0x00 );
           }
    
           // wait for data ready
           clock_delay_usec(1);
    
           // Read out data
           for(j = 0; j < 16; j++){
               output[i+j] = ENCDO;
           }
        }
    }
    
    return converted_blocks * 16; 
}
/*---------------------------------------------------------------------------*/
uint16_t
cc2530_aes_encrypt(uint8_t mode, uint8_t *data, uint16_t len, uint8_t *cipher, uint8_t *iv)
{
    AES_SET_MODE(mode);
    return cc2530_aes_operation(AES_ENCRYPT, data, len, cipher, iv);
}
/*---------------------------------------------------------------------------*/
/*Make sure cipher size is multiple of 16*/
uint16_t
cc2530_aes_decrypt(uint8_t mode, uint8_t *cipher, uint16_t len, uint8_t *data, uint8_t *iv)
{
    AES_SET_MODE(mode);
    return cc2530_aes_operation(AES_DECRYPT, cipher, len, data, iv);
}
/*---------------------------------------------------------------------------*/
