/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _PUBLISHER_H
#define _PUBLISHER_H

#include "net/uip.h"
#include "object.h"

typedef struct _pub_node_t {
    struct _pub_node_t *next;
    int obj_id;
    char obj_name[MAX_OBJECT_NAME_LEN]; 
    int res_id;
    char res_name[MAX_RESOURCE_NAME_LEN];
} pub_node_t;

typedef struct _publisher_t {
    struct _publisher_t *next;
    uip_ip6addr_t ip6_addr;
    char device_id[8];
    pub_node_t *node_list;
} publisher_t;

extern publisher_t *g_publisher_list;

pub_node_t *pub_node_alloc();

void pub_node_free(pub_node_t *node);

int pub_node_init(pub_node_t *node, int obj_id, char *obj_name, int res_id, char *res_name);

int pub_node_add(publisher_t *pub, pub_node_t *node);

publisher_t *publisher_alloc();

void publisher_free(publisher_t *pub);

int publisher_init(publisher_t *pub, uip_ip6addr_t *ip, char *device_id);

int add_publisher(publisher_t *pub);

#endif
