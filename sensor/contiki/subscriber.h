/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _SUBSCRIBER_H
#define _SUBSCRIBER_H

#include "net/uip.h"

#define CONDITION_TYPE_PERIOD      0
#define CONDITION_TYPE_EXPIRE      1
#define CONDITION_TYPE_VALUE       2

enum operation_e {
    EQUAL = 0,
    GREATER  ,
    LESSER   ,
};

union condition_u {
    struct _period_t {
        int start_time;
        int period;
    } period;
    struct _expire_t {
        int expire_time;
    } expire;
    struct _value_t {
        enum operation_e operation;
        void *value;
    } value;
};

typedef struct _res_subscriber_t {
    struct _res_subscriber_t *next;
    uip_ip6addr_t ip6_addr;
    char device_id[8];
    unsigned char condition_type;
    union condition_u condition;
} res_subscriber_t;

res_subscriber_t *subscriber_alloc();

void subscriber_free(res_subscriber_t *subscriber);

int subscriber_period_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                char *device_id, int start_time, int period);

int subscriber_expire_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr,
                                char *device_id, int expire_time);

int subscriber_value_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                               char *device_id, enum operation_e operation, void *value);

#endif
