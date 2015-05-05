/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <malloc.h>
#include "subscriber.h"

res_subscriber_t *subscriber_alloc()
{
    res_subscriber_t *sub = NULL;

    sub = (res_subscriber_t *)malloc(sizeof(res_subscriber_t));
    if (sub) {
        return sub;
    }

    return NULL;
}

void subscriber_free(res_subscriber_t *subscriber)
{
    if (subscriber->condition_type == CONDITION_TYPE_VALUE) {
        if (subscriber->condition.value.value) {
            free(subscriber->condition.value.value);
        }
    }
 
    free(subscriber);
}

int subscriber_period_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                char *device_id, int start_time, int period)
{
    if (!subscriber) {
        return 0;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, 8);
    subscriber->condition_type = CONDITION_TYPE_PERIOD;
    subscriber->condition.period.start_time = start_time;
    subscriber->condition.period.period = period;

    return 1;
}

int subscriber_expire_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                char *device_id, int expire_time)
{
    if (!subscriber) {
        return 0;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, 8);
    subscriber->condition_type = CONDITION_TYPE_EXPIRE;
    subscriber->condition.expire.expire_time = expire_time;

    return 1;
}

int subscriber_value_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                               char *device_id, enum operation_e operation, void *value)
{
    if (!subscriber) {
        return 0;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, 8);
    subscriber->condition_type = CONDITION_TYPE_VALUE;
    subscriber->condition.value.operation = operation;
    subscriber->condition.value.value = value;

    return 1;
}
