/*
 *  Created by Jun Fang on 15-7-23.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#ifndef _UTILS_H
#define _UTILS_H

uint8_t hex2string(uint8_t *hex, uint32_t len, uint8_t *string);

uint8_t string2hex(uint8_t *string, uint32_t len, uint8_t *hex);

#endif