/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _SUBSCRIBER_H
#define _SUBSCRIBER_H

#include "net/uip.h"
#include "main.h"
#include "lib/memb.h"

#define CONDITION_TYPE_PERIOD          0
#define CONDITION_TYPE_EXPIRE          1
#define CONDITION_TYPE_VALUE           2
#define CONDITION_TYPE_VALUE_CHANGE    3

#define CONDITION_VALUE_CHECK_PERIOD_DEFAULT    3

enum operation_e {
    EQUAL = 0,
    GREATER  ,
    LESSER   ,
};

typedef union _cond_value_u {
    int32_t int_value;
    uint8_t boolean_value;
    float float_value;
} cond_value_u;

typedef struct _condition_t {
    uint16_t period;
    uint16_t expire_time;
    enum operation_e operation;
    cond_value_u value;
} condition_t;

typedef struct _res_subscriber_t {
    struct _res_subscriber_t *next;
    void *parent_res;
    uip_ip6addr_t ip6_addr;
    uint8_t device_id[DEV_ID_SIZE];
    uint8_t condition_type;
    condition_t condition;
    struct ctimer timer;
} res_subscriber_t;

void subscribers_mem_pool_init();

res_subscriber_t *subscriber_alloc();

void subscriber_free(res_subscriber_t *subscriber);

int32_t subscriber_period_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                    uint8_t *device_id, uint16_t period);

int32_t subscriber_expire_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr,
                                    uint8_t *device_id, uint16_t expire_time);

int32_t subscriber_value_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                   uint8_t *device_id, enum operation_e operation, cond_value_u *value);

int32_t subscriber_value_change_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                          uint8_t *device_id, cond_value_u *value);

void subscriber_timer_start(res_subscriber_t *subscriber);

void subscriber_timer_stop(res_subscriber_t *subscriber);

#endif
