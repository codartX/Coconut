/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _POLICY_H
#define _POLICY_H

#include "net/uip.h"
#include "main.h"
#include "subscriber.h"
#include "object.h"

#define POLICY_COND_TYPE_RESOURCE       0
#define POLICY_COND_TYPE_EXPIRE_TIME    1
#define POLICY_COND_TYPE_PERIODIC       2

typedef struct _policy_cond_t {
    struct _policy_cond_t *next;
    uint8_t type;
    uip_ip6addr_t ip6_addr;
    uint8_t device_id[DEV_ID_SIZE];
    uint8_t obj_name[MAX_OBJECT_NAME_LEN];
    uint8_t res_name[MAX_RESOURCE_NAME_LEN];
    condition_t cond; 
} policy_cond_t;

#define POLICY_ACTION_RESOURCE    0
#define POLICY_ACTION_MESSAGE     1

#define POLICY_ACTION_MESSAGE_LEN 32

union policy_action_u {
    struct resource_op_t {
        resource_instance_t *res;
        resource_value_u value; 
    } resource_op;

    struct message_t {
        uint32_t level;
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
    uint32_t policy_id;
    policy_cond_t *cond_list;
    policy_action_t *action_list; 
} dev_policy_t;

policy_cond_t *dev_policy_cond_alloc();

void dev_policy_cond_free(policy_cond_t *cond);

int32_t dev_policy_cond_resource_init(policy_cond_t *cond, uip_ip6addr_t *ip6_addr, 
                                      uint8_t *device_id, uint8_t *obj_name, 
                                      uint8_t *res_name, enum operation_e op, 
                                      cond_value_u *value);

int32_t dev_policy_cond_expire_time_init(policy_cond_t *cond, uint32_t exp_timestamp);

int32_t dev_policy_cond_periodic_init(policy_cond_t *cond, uint32_t start_timestamp, uint32_t interval);

policy_action_t *dev_policy_action_alloc();

void dev_policy_action_free(policy_action_t *action);

int32_t dev_policy_action_resource_init(policy_action_t *action, resource_instance_t *res, 
                                        resource_value_u *value);

int32_t dev_policy_action_message_init(policy_action_t *action, uint32_t level, uint8_t *message);

dev_policy_t *dev_policy_alloc();

void dev_policy_free(dev_policy_t *policy);

int32_t dev_policy_init(dev_policy_t *policy, uint32_t policy_id);

int32_t dev_policy_add_cond(dev_policy_t *policy, policy_cond_t *cond);

int32_t dev_policy_add_action(dev_policy_t *policy, policy_action_t *action);

#endif

