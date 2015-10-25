/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include "subscriber.h"
#include "message.h"
#include "resource.h"
#include <time.h>

MEMB(subscribers_memb, res_subscriber_t, 1);

void subscribers_mem_pool_init()
{
    memb_init(&subscribers_memb); 
}

static void timeout_handler(void *arg)
{
    uint32_t len = 0;
    res_subscriber_t *sub = (res_subscriber_t *)arg;
    resource_instance_t *res = sub->parent_res;
    bool flag = false;
    resource_value_u value;
    
    if (!res->get_func) {
        return;
    }
    
    res->get_func(&value);
    
    if (sub->condition_type == CONDITION_TYPE_VALUE) {
        if (sub->condition.operation == EQUAL) {
            if (resource_value_compare(res, &value) == 0) {
                flag = true;
            }
        } else if (sub->condition.operation == GREATER) {
            if (resource_value_compare(res, &value) > 0) {
                flag = true;
            }
        } else {
            if (resource_value_compare(res, &value) < 0) {
                flag = true;
            }
        }
    } else if (sub->condition_type == CONDITION_TYPE_VALUE_CHANGE) {
        if (res->resource_type->type == Float) {
            if ((value.float_value - res->value.float_value) > ((resource_value_u *)sub->condition.value)->float_value ||
                (res->value.float_value - value.float_value) > ((resource_value_u *)sub->condition.value)->float_value) {
                flag = true;
            }
        } else if (res->resource_type->type == Integer) {
            if ((value.int_value - res->value.int_value) > ((resource_value_u *)sub->condition.value)->int_value ||
                (res->value.int_value - value.int_value) > ((resource_value_u *)sub->condition.value)->int_value) {
                flag = true;
            }
        }
    }
    
    if (flag) {
        len = create_report_msg(output_buf, MAX_PAYLOAD_LEN, sub->parent_res);
    
        if (len) {
            send_msg(output_buf, len, &sub->ip6_addr);
        }
    }
 
    if (sub->condition_type != CONDITION_TYPE_EXPIRE) {
        subscriber_timer_start(sub);
    }
    
    return;
}

res_subscriber_t *subscriber_alloc()
{
    res_subscriber_t *sub = NULL;

    sub = (res_subscriber_t *)memb_alloc(&subscribers_memb);
    if (sub) {
        return sub;
    }

    return NULL;
}

void subscriber_free(res_subscriber_t *subscriber)
{
    ctimer_stop(&subscriber->timer);
    
    memb_free(&subscribers_memb, subscriber);
}

int32_t subscriber_period_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                    uint8_t *device_id, uint32_t period)
{
    if (!subscriber) {
        return FAIL;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, DEV_ID_SIZE);
    subscriber->condition_type = CONDITION_TYPE_PERIOD;
    subscriber->condition.period = period;
    
    return SUCCESS;
}

int32_t subscriber_expire_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                    uint8_t *device_id, uint32_t expire_time)
{
    if (!subscriber) {
        return FAIL;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, DEV_ID_SIZE);
    subscriber->condition_type = CONDITION_TYPE_EXPIRE;
    subscriber->condition.expire_time = expire_time;

    return SUCCESS;
}

int32_t subscriber_value_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                   uint8_t *device_id, enum operation_e operation, 
                                   cond_value_u *value)
{
    if (!subscriber) {
        return FAIL;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, DEV_ID_SIZE);
    subscriber->condition_type = CONDITION_TYPE_VALUE;
    subscriber->condition.operation = operation;
    memcpy(&subscriber->condition.value, value, sizeof(cond_value_u));

    return SUCCESS;
}

int32_t subscriber_value_change_type_init(res_subscriber_t *subscriber, uip_ip6addr_t *addr, 
                                          uint8_t *device_id, cond_value_u *value)
{
    if (!subscriber) {
        return FAIL;
    } 

    memcpy(&(subscriber->ip6_addr), addr, sizeof(uip_ip6addr_t));
    memcpy(subscriber->device_id, device_id, DEV_ID_SIZE);
    subscriber->condition_type = CONDITION_TYPE_VALUE_CHANGE;
    memcpy(&subscriber->condition.value, value, sizeof(cond_value_u));

    return SUCCESS;
}

void subscriber_timer_start(res_subscriber_t *subscriber)
{
    uint32_t sec = 0;
    
    if (subscriber->parent_res == NULL) {
        return;
    }
    
    if (subscriber->condition_type == CONDITION_TYPE_PERIOD) {
        sec = subscriber->condition.period;
    } else if (subscriber->condition_type == CONDITION_TYPE_EXPIRE) {
        sec = subscriber->condition.expire_time - (uint32_t)time(NULL);
    } else {
        if (subscriber->condition.period) {
            sec = subscriber->condition.period;
        } else {
            sec = CONDITION_VALUE_CHECK_PERIOD_DEFAULT;
        }
    }
        
    if (sec > 0) {
        ctimer_set(&subscriber->timer, sec, timeout_handler, subscriber);
    }
        
    return;
}

void subscriber_timer_stop(res_subscriber_t *subscriber)
{
    ctimer_stop(&subscriber->timer);
}

