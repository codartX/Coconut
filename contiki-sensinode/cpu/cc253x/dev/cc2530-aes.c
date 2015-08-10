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

static uint8_t block_buf[16];

/*---------------------------------------------------------------------------*/
static void
cc2530_dma_aes_in(uint8_t *src, uint8_t len)
{
    dma_conf[DMA_CH_AES_IN].src_h = ((uint16_t)src >> 8) & 0x00FF;
    dma_conf[DMA_CH_AES_IN].src_l = (uint16_t)src & 0x00FF;
    dma_conf[DMA_CH_AES_IN].dst_h = ((uint16_t)ENCDI >> 8) & 0x00FF;
    dma_conf[DMA_CH_AES_IN].dst_l = (uint16_t)ENCDI & 0x00FF;
    dma_conf[DMA_CH_AES_IN].len_h = DMA_VLEN_LEN;
    dma_conf[DMA_CH_AES_IN].len_l = len;
    dma_conf[DMA_CH_AES_IN].wtt = DMA_SINGLE | DMA_T_ENC_DW;
    dma_conf[DMA_CH_AES_IN].inc_prio = DMA_SRC_INC_1 | DMA_DST_INC_1 | DMA_PRIO_HIGHEST;
    
    /* The DMA configuration data structure may reside at any location in
     * unified memory space, and the address location is passed to the DMA
     * through DMAxCFGH:DMAxCFGL.
     */
    DMA1CFGH = ((uint16_t)&dma_conf[1] >> 8) & 0x00FF;
    DMA1CFGL = (uint16_t)&dma_conf[1] & 0x00FF;
    
    /* Arm the DMA channel, so that a DMA trigger can initiate DMA writing*/
    DMA_ARM(DMA_CH_AES_IN);

}
/*---------------------------------------------------------------------------*/
static void
cc2530_dma_aes_out(uint8_t *dest, uint8_t len)
{
    dma_conf[DMA_CH_AES_OUT].src_h = ((uint16_t)ENCDO >> 8) & 0x00FF;
    dma_conf[DMA_CH_AES_OUT].src_l = (uint16_t)ENCDO & 0x00FF;
    dma_conf[DMA_CH_AES_OUT].dst_h = ((uint16_t)dest >> 8) & 0x00FF;
    dma_conf[DMA_CH_AES_OUT].dst_l = (uint16_t)dest & 0x00FF;
    dma_conf[DMA_CH_AES_OUT].len_h = DMA_VLEN_LEN;
    dma_conf[DMA_CH_AES_OUT].len_l = len;
    dma_conf[DMA_CH_AES_OUT].wtt = DMA_SINGLE | DMA_T_ENC_UP;
    dma_conf[DMA_CH_AES_OUT].inc_prio = DMA_SRC_INC_1 | DMA_DST_INC_1 | DMA_PRIO_HIGHEST;
    
    /* The DMA configuration data structure may reside at any location in
     * unified memory space, and the address location is passed to the DMA
     * through DMAxCFGH:DMAxCFGL.
     */
    DMA1CFGH = ((uint16_t)&dma_conf[1] >> 8) & 0x00FF;
    DMA1CFGL = (uint16_t)&dma_conf[1] & 0x00FF;
    
    /* Arm the DMA channel, so that a DMA trigger can initiate DMA writing*/
    DMA_ARM(DMA_CH_AES_OUT);
}
/*---------------------------------------------------------------------------*/
void
cc2530_aes_set_key(uint8_t *key, uint8_t len)
{
    cc2530_dma_aes_in(key, len);
    AES_SET_CMD(CC2530_ENCCS_CMD_LOAD_KEY);
    AES_START();
    while (!DMA_STATUS(DMA_CH_AES_IN));
}
/*---------------------------------------------------------------------------*/
void
cc2530_aes_set_iv(uint8_t *iv, uint8_t len)
{
    cc2530_dma_aes_in(iv, len);
    AES_SET_CMD(CC2530_ENCCS_CMD_LOAD_IV);
    AES_START();
    while (!DMA_STATUS(DMA_CH_AES_IN));
}
/*---------------------------------------------------------------------------*/
uint32_t
cc2530_aes_encrypt(uint8_t *data, uint32_t len, uint8_t *cipher)
{
    uint32_t len1 = 0;
    
    while (len1 < len) {
        if ((len - len1) < 16) {
            //Just padding 0x0
            memset(block_buf, 0x0, 16);
            memcpy(block_buf, data + len1, len - len1);
            cc2530_dma_aes_in(block_buf, 16);
        } else {
            cc2530_dma_aes_in(data + len1, 16);
        }
        
        cc2530_dma_aes_out(cipher + len1, 16);
        AES_SET_CMD(CC2530_ENCCS_CMD_ENCRYPT);
        AES_START();
        while (!AES_COMPLETE());
        
        len1 += 16;
    }
    
    return len1;
}
/*---------------------------------------------------------------------------*/
/*Make sure cipher size is multiple of 16*/
uint32_t
cc2530_aes_decrypt(uint8_t *cipher, uint32_t len, uint8_t *data)
{
    uint32_t len1 = 0;
    
    while (len1 < len) {
        cc2530_dma_aes_in(cipher + len1, 16);
        cc2530_dma_aes_out(data + len1, 16);
        AES_SET_CMD(CC2530_ENCCS_CMD_DECRYPT);
        AES_START();
        while (!AES_COMPLETE());
        
        len1 += 16;
    }
    
    return len1;
}
/*---------------------------------------------------------------------------*/
