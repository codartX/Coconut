/*
 *  Created by Jun Fang on 15-7-24.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include "utils.h"
#include <stdio.h>

void string_to_hex(uint8_t *hexstring, uint8_t *hex_val, uint16_t len)
{
    uint8_t *pos = hexstring;
    uint16_t i;
    
    /* WARNING: no sanitization or error-checking whatsoever */
    for(i = 0; i < len; i++) {
        sscanf(pos, "%2hhx", &hex_val[i]);
        pos += 2 * sizeof(uint8_t);
    }
    
    return;
}

void hex_to_string(uint8_t *string, uint8_t *hex_val, uint16_t len)
{
    uint8_t *pos = string;
    uint16_t i;
    
    /* WARNING: no sanitization or error-checking whatsoever */
    for(i = 0; i < len; i++) {
        sprintf(pos, "%02hhx", hex_val[i]);
        pos += 2 * sizeof(uint8_t);
    }
    
    return;
}
