/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _POLICY_H
#define _POLICY_H

#include "net/uip.h"
#include "main.h"
#include "lib/memb.h"
#include "subscriber.h"
#include "object.h"

typedef struct _policy_cond_t {
    struct _policy_cond_t *next;
    uip_ip6addr_t ip6_addr;
    uint8_t device_id[DEV_ID_SIZE];
    uint8_t obj_name[MAX_OBJECT_NAME_LEN];
    condition_t cond; 
} policy_cond_t;

#define POLICY_ACTION_VALUE_CHANGE    0
#define POLICY_ACTION_MESSAGE         1

#define POLICY_ACTION_MESSAGE_LEN 8

union policy_action_u {
    struct object_op_t {
        object_instance_t *obj;
        resource_value_u value; 
    } resource_op;

    struct message_t {
        uint16_t level;
        uint8_t msg[POLICY_ACTION_MESSAGE_LEN];
    } message;
};

typedef struct _policy_action_t {
    struct _policy_action_t *next;
    uint8_t type;
    union policy_action_u action; 
} policy_action_t;

typedef struct _dev_policy_t {
    struct _dev_policy_t *next;
    uint16_t policy_id;
    policy_cond_t *cond_list;
    policy_action_t *action_list; 
} dev_policy_t;

void policy_mem_pool_init();

policy_cond_t *dev_policy_cond_alloc();

void dev_policy_cond_free(policy_cond_t *cond);

int16_t dev_policy_cond_init(policy_cond_t *cond, uip_ip6addr_t *ip6_addr, 
                             uint8_t *device_id, const uint8_t *obj_name, 
                             enum operation_e op, cond_value_u *value);

policy_action_t *dev_policy_action_alloc();

void dev_policy_action_free(policy_action_t *action);

int16_t dev_policy_action_value_change_init(policy_action_t *action, object_instance_t *obj, 
                                            resource_value_u *value);

int16_t dev_policy_action_message_init(policy_action_t *action, uint16_t level, uint8_t *message);

dev_policy_t *dev_policy_alloc();

void dev_policy_free(dev_policy_t *policy);

int16_t dev_policy_init(dev_policy_t *policy, uint16_t policy_id);

int16_t dev_policy_add_cond(dev_policy_t *policy, policy_cond_t *cond);

int16_t dev_policy_add_action(dev_policy_t *policy, policy_action_t *action);

#endif

