/*  
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */ 

#include <stdlib.h>
#include <stdio.h>
#include "policy.h"

policy_cond_t *dev_policy_cond_alloc()
{
    policy_cond_t *tmp = NULL;

    tmp = (policy_cond_t *)malloc(sizeof(policy_cond_t));
    if(tmp) {
        return tmp;
    }

    return NULL;
}

void dev_policy_cond_free(policy_cond_t *cond)
{
    free(cond); 
}

int32_t dev_policy_cond_resource_init(policy_cond_t *cond, uip_ip6addr_t *ip6_addr, 
                                 uint8_t *device_id, uint8_t *obj_name, 
                                 uint8_t *res_name, enum operation_e op, 
                                 resource_value_u *value)
{
    if (!cond) {
        return FAIL;
    }

    cond->next = NULL;
    cond->type = POLICY_COND_TYPE_RESOURCE;
    memcpy(&cond->ip6_addr, ip6_addr, sizeof(uip_ip6addr_t));
    memcpy(&cond->device_id, device_id, 8);
    strncpy(cond->obj_name, obj_name, MAX_OBJECT_NAME_LEN-1);
    cond->obj_name[MAX_OBJECT_NAME_LEN-1] = '\0';
    strncpy(cond->res_name, res_name, MAX_RESOURCE_NAME_LEN-1);
    cond->res_name[MAX_RESOURCE_NAME_LEN-1] = '\0';
    cond->cond.value.operation = op;
    cond->cond.value.value = value;

    return SUCCESS;
}

int32_t dev_policy_cond_expire_time_init(policy_cond_t *cond, uint32_t exp_timestamp)
{
    if (!cond) {
        return FAIL;
    }

    cond->next = NULL;
    cond->type = POLICY_COND_TYPE_EXPIRE_TIME;
    cond->cond.expire.expire_time = exp_timestamp;

    return SUCCESS;
}

int32_t dev_policy_cond_periodic_init(policy_cond_t *cond, uint32_t start_timestamp, uint32_t interval)
{
    if (!cond) {
        return FAIL;
    }

    cond->next = NULL;
    cond->type = POLICY_COND_TYPE_PERIODIC;
    cond->cond.period.start_time = start_timestamp;
    cond->cond.period.period = interval;

    return SUCCESS;
}

policy_action_t *dev_policy_action_alloc()
{
    policy_action_t *tmp = NULL;

    tmp = (policy_action_t *)malloc(sizeof(policy_action_t));
    if(tmp) {
        return tmp;
    }

    return NULL;

}

void dev_policy_action_free(policy_action_t *action)
{
    free(action);
}

int32_t dev_policy_action_resource_init(policy_action_t *action, resource_instance_t *res, 
                                        resource_value_u *value)
{
    if (!action) {
        return FAIL;
    }

    action->next = NULL;
    action->type = POLICY_ACTION_RESOURCE;
    action->action.resource_op.res = res;
    memcpy(&action->action.resource_op.value, value, sizeof(resource_value_u));

    return SUCCESS;
}

int32_t dev_policy_action_message_init(policy_action_t *action, uint32_t level, uint8_t *message)
{
    if (!action) {
        return FAIL;
    }

    action->next = NULL;
    action->type = POLICY_ACTION_MESSAGE;
    action->action.message.level = level;
    memcpy(action->action.message.msg, message, POLICY_ACTION_MESSAGE_LEN);

    return SUCCESS;
}

dev_policy_t *dev_policy_alloc()
{
    dev_policy_t *tmp = NULL;

    tmp = (dev_policy_t *)malloc(sizeof(dev_policy_t));
    if(tmp) {
        return tmp;
    }

    return NULL;

}

void dev_policy_free(dev_policy_t *policy)
{
    policy_cond_t *cond = NULL, *cond1 = NULL;
    policy_action_t *action = NULL, *action1 = NULL;

    cond = policy->cond_list;
    while (cond) {
        cond1 = cond->next;
        free(cond);
        cond = cond1;
    }

    action = policy->action_list;
    while (action) {
        action1 = action->next;
        free(action);
        action = action1; 
    }

    free(policy);
}

int32_t dev_policy_init(dev_policy_t *policy, uint32_t policy_id)
{
    policy->policy_id = policy_id;
    policy->cond_list = NULL;
    policy->action_list = NULL;

    return SUCCESS;
}

int32_t dev_policy_add_cond(dev_policy_t *policy, policy_cond_t *cond)
{
    cond->next = policy->cond_list;
    policy->cond_list = cond;

    return SUCCESS;
}

int32_t dev_policy_add_action(dev_policy_t *policy, policy_action_t *action)
{
    action->next = policy->action_list;
    policy->action_list = action;

    return SUCCESS;
}
