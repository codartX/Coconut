/*
 *  Created by Jun Fang on 15-7-24.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#ifndef _UTILS_H
#define _UTILS_H

#include <stdint.h>

void string_to_hex(uint8_t *hexstring, uint8_t *hex_val, uint16_t len);

void hex_to_string(uint8_t *string, uint8_t *hex_val, uint16_t len);

#endif
