/*  
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */ 

#include <stdio.h>
#include <time.h>
#include "device.h"

device_t g_device;

int device_init(char *device_id)
{
    if (device_id) {
        memcpy(g_device.device_id, device_id, 8);
        g_device.obj_list = NULL;
        g_device.policy_list = NULL;
        g_device.timestamp = (int)time(NULL);
        return true;
    }

    return false;
}

int device_insert_object(object_instance_t *object)
{
    object_instance_t *tmp = NULL;
    if (object) {
        tmp = g_device.obj_list;
        while(tmp) {
            if(strncmp(tmp->name, object->name, MAX_OBJECT_NAME_LEN) == 0) {
                printf("already has the same name object\n");
                return false;
            }
            tmp = tmp->next;
        }
        object->next = g_device.obj_list;
        g_device.obj_list = object;
        g_device.timestamp = (int)time(NULL);
        return true;
    }

    return false;
}

int device_remove_object(char *object_name)
{
    object_instance_t *tmp = NULL, *tmp1 = NULL;

    if (object_name) {
        tmp = g_device.obj_list;
        tmp1 = tmp;
        while(tmp) {
            if(strncmp(tmp->name, object_name, MAX_OBJECT_NAME_LEN) == 0) {
                if (tmp != g_device.obj_list) {
                    tmp1->next = tmp->next;
                } else {
                    g_device.obj_list = tmp->next;
                }
                object_instance_free(tmp);
                g_device.timestamp = (int)time(NULL);
                return true;
            }
            tmp1 = tmp;
            tmp = tmp->next;
        }
    } else {
        printf("invalid device or object name\n");
        return false;
    }

    return true;
}

object_instance_t *device_find_object(char *object_name)
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
        printf("invalid device or object name\n");
        return NULL;
    }

    return NULL;

}

int device_insert_policy(dev_policy_t *policy)
{
    dev_policy_t *tmp = NULL;

    if (policy == NULL) {
        return 0;
    }    

    tmp = g_device.policy_list;
    while (tmp) {
        if (tmp->policy_id == policy->policy_id) {
            printf("already has the same name policy\n");
            return 0;
        }
        tmp = tmp->next;
    } 
    policy->next = g_device.policy_list;
    g_device.policy_list = policy;

    return 1;
}

void device_remove_policy(int policy_id)
{
    dev_policy_t *tmp = NULL, *pre = NULL;

    tmp = g_device.policy_list;
    pre = tmp;
    while (tmp) {
        if (tmp->policy_id == policy_id) {
            if (tmp != g_device.policy_list) {
                pre->next = tmp->next;
            } else {
                g_device.policy_list = tmp->next;
            }
            dev_policy_free(tmp);
            return;
        }
        tmp = tmp->next;
        pre = tmp;
    }
 
    return;
}

dev_policy_t *device_find_policy(int policy_id)
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

int new_device()
{

}

