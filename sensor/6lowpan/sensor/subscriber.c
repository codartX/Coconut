/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include "subscriber.h"
#include "message.h"
#include "resource.h"
#include <time.h>

MEMB(subscribers_memb, subscriber_t, 2);

void subscribers_mem_pool_init()
{
    memb_init(&subscribers_memb); 
}

subscriber_t *subscriber_alloc()
{
    subscriber_t *sub = NULL;

    sub = (subscriber_t *)memb_alloc(&subscribers_memb);
    if (sub) {
        return sub;
    }

    return NULL;
}

void subscriber_free(subscriber_t *subscriber)
{
    memb_free(&subscribers_memb, subscriber);
}

int32_t subscriber_value_compare_type_init(subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                           uint8_t *device_id, enum operation_e operation, 
                                           cond_value_u *value)
{
    if (!subscriber) {
        return FAIL;
    } 

    if (device_id && addr) {
        subscriber->system = false;
        memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
        memcpy(subscriber->device_id, device_id, DEV_ID_SIZE);
    } else {
        subscriber->system = true;
    }

    subscriber->condition_type = CONDITION_TYPE_VALUE_COMPARE;
    subscriber->condition.operation = operation;
    memcpy(&subscriber->condition.value, value, sizeof(cond_value_u));

    return SUCCESS;
}

int32_t subscriber_report_type_init(subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                    uint8_t *device_id)
{
    if (!subscriber) {
        return FAIL;
    } 

    if (device_id && addr) {
        subscriber->system = false;
        memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
        memcpy(subscriber->device_id, device_id, DEV_ID_SIZE);
    } else {
        subscriber->system = true;
    }

    subscriber->condition_type = CONDITION_TYPE_REPORT;

    return SUCCESS;
}


