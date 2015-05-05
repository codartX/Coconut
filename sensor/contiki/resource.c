/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stddef.h>
#include <stdio.h>
#include <malloc.h>
#include "resource.h"
#include "ipso_resource.h"

resource_type_t *find_resource_type(int resource_id)
{
    int i = 0;

    for(;i < sizeof(resource_types); i++) {
        if (resource_types[i].resource_id == resource_id) {
            return &resource_types[i];
        }
    }

    return NULL;
}

resource_instance_t *resource_instance_alloc()
{
    resource_instance_t *instance = NULL;
    instance = (resource_instance_t *)malloc(sizeof(resource_instance_t));
    if (!instance) {
        printf("ipso resource instance alloc fail!\n");
        return NULL;
    }

    return instance;
}

void resource_instance_free(resource_instance_t *instance)
{
    res_subscriber_t *subscriber = NULL, *tmp = NULL;

    if (instance) {
        subscriber = instance->list;
        while(subscriber) {
            tmp = subscriber->next;
            subscriber_free(subscriber);
            subscriber = tmp; 
        }
        free(instance);
    }

    return;
}

int resource_instance_init(resource_instance_t *instance, char *name, int resource_id, 
                           resource_value_u *value, get_resource_value_func func)
{
    resource_type_t *resource_type = NULL;

    if (instance && name) {
        resource_type = find_resource_type(resource_id);
        if (resource_type) {
            strncpy(instance->name, name, MAX_RESOURCE_NAME_LEN);
            instance->resource_type = resource_type;
            instance->next = NULL;
            memcpy(&(instance->value), value, sizeof(resource_value_u));
            instance->func = func;
            return true;
        } else {
            printf("resource id invalid!\n");
        }

    }

    return false;
}

int resource_add_subscriber(resource_instance_t *res_instance, res_subscriber_t *res_sub)
{
    if (!res_instance || !res_sub) {
        return 0;
    }

    res_sub->next = res_instance->list;
    res_instance->list = res_sub; 

    return 1;
}

int resource_delete_subscriber(resource_instance_t *res_instance, uip_ip6addr_t *ip_addr)
{
    res_subscriber_t *sub, *sub1;  

    if (!res_instance || !ip_addr) {
        return 0;
    }

    sub = res_instance->list;
    sub1 = sub;
    while(sub) {
        if(!memcmp(&sub->ip6_addr, ip_addr, sizeof(uip_ip6addr_t))) {
            if (sub == res_instance->list) {
                res_instance->list = sub->next;
                sub1 = res_instance->list;
            } else {
                sub1->next = sub->next;
            }
            subscriber_free(sub); 
            sub = sub1->next;
            continue;
        }
        sub1 = sub;
        sub = sub->next;
    }

    return 1;
}
