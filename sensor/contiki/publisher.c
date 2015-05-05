/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <malloc.h>
#include <stdio.h>
#include "publisher.h"

publisher_t *g_publisher_list;

pub_node_t *pub_node_alloc()
{
    pub_node_t *node = NULL;

    node = (pub_node_t *)malloc(sizeof(pub_node_t));
    if(!node) {
        return NULL;
    }

    return node;
}

void pub_node_free(pub_node_t *node)
{
    free(node);
}

int pub_node_init(pub_node_t *node, int obj_id, char *obj_name, int res_id, char *res_name)
{
    if(!node) {
        return 0;
    }

    node->next = NULL;
    node->obj_id = obj_id;
    sprintf(node->obj_name, obj_name);
    node->res_id = res_id;
    sprintf(node->res_name, res_name);

    return 1;
}

int pub_node_add(publisher_t *pub, pub_node_t *node)
{
    pub_node_t *node1 = NULL;

    node1 = pub->node_list;
    while(node1) {
        if (!memcmp(node1->obj_name, node->obj_name, MAX_OBJECT_NAME_LEN) && 
            !memcmp(node1->res_name, node->res_name, MAX_RESOURCE_NAME_LEN)) {
            return 0;
        }
        node1 = node1->next;
    }

    node->next = pub->node_list;
    pub->node_list = node;

    return 1;
}

publisher_t *publisher_alloc()
{
    publisher_t *pub = NULL;

    pub = (publisher_t *)malloc(sizeof(publisher_t));
    if(!pub) {
        return NULL;
    }

    return pub;
}

void publisher_free(publisher_t *pub)
{
    pub_node_t *node = NULL, *node1 = NULL;

    node = pub->node_list; 
    while(node) {
        node1 = node->next;
        pub_node_free(node); 
        node = node1;
    }

    free(pub);
}

int publisher_init(publisher_t *pub, uip_ip6addr_t *ip, char *device_id)
{
    if (!pub) {
        return 0;
    }

    memcpy(pub->device_id, device_id, 8);
    memcpy(&pub->ip6_addr, ip, sizeof(uip_ip6addr_t));
    pub->next = NULL;
    pub->node_list = NULL;

    return 1;
}

int add_publisher(publisher_t *pub)
{
    publisher_t *tmp = NULL;

    tmp = g_publisher_list;

    while(tmp) {
        if (!memcmp(tmp->device_id, pub->device_id, 8) && 
            !memcmp(&tmp->ip6_addr, &pub->ip6_addr, sizeof(uip_ip6addr_t))) {
            return 0;
        }
        tmp = tmp->next;
    }

    pub->next = g_publisher_list;
    g_publisher_list = pub;
 
    return 1;
}

