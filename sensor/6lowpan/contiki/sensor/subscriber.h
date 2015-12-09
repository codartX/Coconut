/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _SUBSCRIBER_H
#define _SUBSCRIBER_H

#include "net/uip.h"
#include "main.h"
#include "lib/memb.h"

#define CONDITION_TYPE_REPORT           0
#define CONDITION_TYPE_VALUE_COMPARE    1

enum operation_e {
    EQUAL = 0,
    GREATER  ,
    LESSER   ,
};

typedef union _cond_value_u {
    int32_t int_value;
    float float_value;
} cond_value_u;

typedef struct _condition_t {
    enum operation_e operation;
    cond_value_u value;
} condition_t;

typedef struct _subscriber_t {
    struct _subscriber_t *next;
    void *publisher;
    uint8_t system;
    uip_ip6addr_t ip6_addr;
    uint8_t device_id[DEV_ID_SIZE];
    uint8_t condition_type;
    condition_t condition;
} subscriber_t;

void subscribers_mem_pool_init();

subscriber_t *subscriber_alloc();

void subscriber_free(subscriber_t *subscriber);

int32_t subscriber_report_type_init(subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                    uint8_t *device_id);

int32_t subscriber_value_compare_type_init(subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                           uint8_t *device_id, enum operation_e operation, 
                                           cond_value_u *value);

#endif
