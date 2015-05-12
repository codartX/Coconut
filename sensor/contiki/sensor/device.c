/*  
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */ 

#include <stdio.h>
#include <time.h>
#include "device.h"

device_t g_device;

int32_t device_init(uint8_t *device_id, uint8_t *device_name)
{
    if (device_id && device_name) {
        memcpy(g_device.device_id, device_id, DEV_ID_SIZE);
        strcpy(g_device.device_name, device_name);
        g_device.obj_list = NULL;
        g_device.policy_list = NULL;
        g_device.timestamp = (uint32_t)time(NULL);
        return SUCCESS;
    }

    return FAIL;
}

void device_deinit()
{
    object_instance_t *obj = g_device.obj_list, *next_obj = NULL;
    dev_policy_t *policy = g_device.policy_list, *next_policy = NULL; 

    while (obj) {
        next_obj = obj->next;
        object_instance_free(obj);
        obj = next_obj;
    }
    g_device.obj_list = NULL;

    while (policy) {
        next_policy = policy->next;
        dev_policy_free(policy);
        policy = next_policy;
    }
    g_device.policy_list = NULL;

    memset(g_device.device_id, device_id, DEV_ID_SIZE);

    return;
}

int32_t device_insert_object(object_instance_t *object)
{
    object_instance_t *tmp = NULL;
    if (object) {
        tmp = g_device.obj_list;
        while(tmp) {
            if(strncmp(tmp->name, object->name, MAX_OBJECT_NAME_LEN) == 0) {
                PRINTF("already has the same name object\n");
                return FAIL;
            }
            tmp = tmp->next;
        }
        object->next = g_device.obj_list;
        g_device.obj_list = object;
        g_device.timestamp = (uint32_t)time(NULL);
        object->parent_dev = &g_device
        return SUCCESS;
    }

    return FAIL;
}

int32_t device_remove_object(uint8_t *object_name)
{
    object_instance_t *cur = NULL, *pre = NULL;

    if (object_name) {
        cur = g_device.obj_list;
        while(cur) {
            if(strncmp(tmp->name, object_name, MAX_OBJECT_NAME_LEN) == 0) {
                if (!pre) {
                    g_device.obj_list = cur->next;
                } else {
                    pre->next = cur->next;
                }
                object_instance_free(cur);
                g_device.timestamp = (uint32_t)time(NULL);
                return SUCCESS;
            }
            pre = cur;
            cur = cur->next;
        }
    } else {
        PRINTF("invalid device or object name\n");
        return FAIL;
    }

    return SUCCESS;
}

object_instance_t *device_find_object(uint8_t *object_name)
{
    object_instance_t *tmp = NULL;

    if (object_name) {
        tmp = g_device.obj_list;
        while(tmp) {
            if(strncmp(tmp->name, object_name, MAX_OBJECT_NAME_LEN) == 0) {
                return tmp;
            }
            tmp = tmp->next;
        }
    } else {
        PRINTF("invalid device or object name\n");
        return NULL;
    }

    return NULL;

}

int32_t device_insert_policy(dev_policy_t *policy)
{
    dev_policy_t *tmp = NULL;

    if (policy == NULL) {
        return FAIL;
    }    

    tmp = g_device.policy_list;
    while (tmp) {
        if (tmp->policy_id == policy->policy_id) {
            PRINTF("already has the same name policy\n");
            return 0;
        }
        tmp = tmp->next;
    } 
    policy->next = g_device.policy_list;
    g_device.policy_list = policy;

    return SUCCESS;
}

int32_t device_remove_policy(uint32_t policy_id)
{
    dev_policy_t *cur = NULL, *pre = NULL;

    cur = g_device.policy_list;
    while (cur) {
        if (cur->policy_id == policy_id) {
            if (!pre) {
                g_device.policy_list = cur->next;
            } else {
                pre->next = cur->next;
            }
            dev_policy_free(cur);
            return SUCCESS;
        }
        cur = cur->next;
        pre = cur;
    }
 
    return SUCCESS;
}

dev_policy_t *device_find_policy(uint32_t policy_id)
{
    dev_policy_t *tmp = NULL;

    tmp = g_device.policy_list;
    while (tmp) {
        if (tmp->policy_id == policy_id) {
            return tmp;
        }
        tmp = tmp->next;
    }
 
    return NULL;
}


