/*  
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */ 

#include <stdio.h>
#include <time.h>
#include "device.h"

device_t g_device;

int16_t device_init(uint8_t *device_id)
{
    if (device_id) {
        memcpy(g_device.device_id, device_id, DEV_ID_SIZE);
        g_device.obj_list = NULL;
#ifdef POLICY_SUPPORT
        g_device.policy_list = NULL;
#endif
        g_device.timestamp = (uint32_t)time(NULL);
        return SUCCESS;
    }

    return FAIL;
}

int16_t device_insert_object(object_instance_t *object)
{
    object_instance_t *tmp = NULL;
    if (object) {
        tmp = g_device.obj_list;
        while(tmp) {
            if(strcmp(tmp->name, object->name) == 0) {
                PRINTF("already has the same name object\n");
                return FAIL;
            }
            tmp = tmp->next;
        }
        object->next = g_device.obj_list;
        g_device.obj_list = object;
        g_device.timestamp = (uint32_t)time(NULL);
        object->parent_dev = &g_device;
        return SUCCESS;
    }

    return FAIL;
}

object_instance_t *device_find_object(uint8_t *object_name)
{
    object_instance_t *tmp = NULL;

    if (object_name) {
        tmp = g_device.obj_list;
        while(tmp) {
            if(strcmp(tmp->name, object_name) == 0) {
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

#ifdef POLICY_SUPPORT
int16_t device_insert_policy(dev_policy_t *policy)
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

int16_t device_remove_policy(uint16_t policy_id)
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

dev_policy_t *device_find_policy(uint16_t policy_id)
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
#endif


