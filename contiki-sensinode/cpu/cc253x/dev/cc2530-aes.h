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
 *         Interface to the CC2530 AES encryption/decryption functions
 * \author
 *         Jun Fang <apifan@gmail.com>
 */

#ifndef __CC2530_AES_H__
#define __CC2530_AES_H__

#include <cc253x.h>
#include <dma.h>

#define CC2530_ENCCS_MODE_CBC     0x0
#define CC2530_ENCCS_MODE_CFB     0x1
#define CC2530_ENCCS_MODE_OFB     0x2
#define CC2530_ENCCS_MODE_CTR     0x3
#define CC2530_ENCCS_MODE_ECB     0x4
#define CC2530_ENCCS_MODE_CBC_MAC 0x5

#define AES_SETMODE(mode) do { ENCCS &= ~0x70; ENCCS |= mode<<4; } while (0)

#define CC2530_ENCCS_CMD_ENCRYPT  0x0;
#define CC2530_ENCCS_CMD_DECRYPT  0x1;
#define CC2530_ENCCS_CMD_LOAD_KEY 0x2;
#define CC2530_ENCCS_CMD_LOAD_IV  0x3;

#define AES_SET_CMD(cmd) do { ENCCS &= ~0x06; ENCCS |= cmd<<1; } while (0)

#define AES_START() ENCCS |= 0x01

#define AES_COMPLETE() ENCCS &= 0x08

/**
 * \brief      Setup an AES key
 * \param key  A pointer to a 16-byte AES key
 * \param len  The key length: should be 16.
 *
 *             This function sets up an AES key with the CC2530
 *             chip. The AES key can later be used with the
 *             cc2530_aes_encrypt()/cc2530_aes_decrypt() function to 
 *             encrypt/decrypt data.
 *
 *
 */
void cc2530_aes_set_key(const uint8_t *key, uint8_t len);

/**
 * \brief      Setup an AES IV
 * \param iv   A pointer to a 16-byte AES IV
 * \param len  The IV length.
 *
 *             This function sets up an AES IV with the CC2530
 *             chip. The AES IV can later be used with the
 *             cc2530_aes_encrypt()/cc2530_aes_decrypt() function to
 *             encrypt/decrypt data.
 *
 */
void cc2530_aes_set_iv(const uint8_t *iv, uint8_t len);

/**
 * \brief        Encrypt data with AES
 * \param data   A pointer to the source data to be encrypted
 * \param len    The length of the source data to be encrypted
 * \param cipher A pointer to the cipher data
 * \return       Length of cipher data
 *
 *               This function encrypts data with AES. A
 *               pointer to the data is passed as a parameter, and the
 *               function save the encrypted data in cipher parameter.
 *
 */
uint32_t cc2530_aes_encrypt(uint8_t *data, uint32_t len, uint8_t *cipher);

/**
 * \brief        Decrypt data with AES
 * \param cipher A pointer to the cipher data to be decrypted
 * \param len    The length of the source data to be decrypted
 * \param data   A pointer to the decrypted data
 * \return       Length of decrypted data
 *
 *               This function decrypts data with AES. A
 *               pointer to the cipher is passed as a parameter, and the
 *               function save the decrypted data in data parameter.
 *
 */
uint32_t cc2530_aes_decrypt(uint8_t *cipher, uint32_t len, uint8_t *data);

#endif /* __CC2530_AES_H__ */
