/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */
#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "net/uip-ds6.h"
#include "net/uip-udp-packet.h"
#include "sys/ctimer.h"
#include <stdio.h>
#include <string.h>
#include "dev/adc-sensor.h"
#include "cJSON.h"
#include "main.h"
#include "device.h"
#include "object.h"
#include "message.h"
#include "device_profile.h"

#define UDP_CLIENT_PORT 8765
#define UDP_SERVER_PORT 5678

#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])

uint8_t output_buf[MAX_PAYLOAD_LEN];

static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;
//static coap_packet_t coap_request;

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
/*---------------------------------------------------------------------------*/
void send_msg(uint8_t *data, uint32_t len, uip_ipaddr_t *peer_ipaddr)
{
    uip_ipaddr_copy(&client_conn->ripaddr, peer_ipaddr);
    uip_udp_packet_sendto(client_conn, data, len,
                          peer_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
    uip_create_unspecified(&client_conn->ripaddr);
    
    return;
}

void send_msg_to_gateway(uint8_t *data, uint32_t len)
{
    uip_ipaddr_copy(&client_conn->ripaddr, &server_ipaddr);
    uip_udp_packet_sendto(client_conn, data, len,
                          &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
    uip_create_unspecified(&client_conn->ripaddr);
    
    return;
}

/*---------------------------------------------------------------------------*/
static void 
discover_request_handler()
{
    uint32_t len = 0;
    
    len = create_new_device_msg(output_buf, MAX_PAYLOAD_LEN, TYPE_RESPONSE);
    if (len > 0) {
        send_msg(output_buf, len, &UIP_IP_BUF->srcipaddr);
    }
}

/*---------------------------------------------------------------------------*/
static void
report_request_handler(uint8_t *device_id, uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL, *sub1 = NULL, *sub2 = NULL, *sub3 = NULL;
    uint32_t i = 0, j = 0;
    object_instance_t *obj = NULL;
    resource_instance_t *res = NULL;
    resource_value_u value;
    retcode_e retcode = RETCODE_SUCCESS;
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    for (;i < cJSON_GetArraySize(root); i++) {
        //object
        sub = cJSON_GetArrayItem(root, i);
        if (!sub) {
            return;
        }
        
        sub1 = cJSON_GetArrayItem(sub, 0);
        if (!sub1) {
            return;
        }
        
        obj = device_find_object(sub1->valuestring);
        if(!obj) {
            continue;
        }
        
        //resources
        sub1 = cJSON_GetArrayItem(sub, 1);
        if (!sub1) {
            continue;
        }
        
        for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
            sub2 = cJSON_GetArrayItem(sub1, j);
            if (!sub2) {
                continue;
            }
            
            sub3 = cJSON_GetArrayItem(sub2, 0);
            if (!sub3) {
                continue;
            }
            
            res = object_instance_find_resource(obj, sub3->valuestring);
            if (!res) {
                continue;
            }
            
            sub3 = cJSON_GetArrayItem(sub2, 1);
            if (!sub3) {
                continue;
            }
            
            if (res->resource_type->type == Integer ||
                res->resource_type->type == Boolean) {
                value.int_value = sub3->valueint;
            } else if (res->resource_type->type == Float) {
                value.float_value = sub3->valuefloat;
            } else if (res->resource_type->type == String) {
                strcpy(value.string_value, sub3->valuestring);
            } else {
                continue;
            }
            
            set_resource_value(res, &value);
        }
        
    }
    
    sprintf(output_buf, "[%d]", retcode);
    send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
    
    return;

}

/*---------------------------------------------------------------------------*/
static void
set_resources_request_handler(uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL, *sub1 = NULL, *sub2 = NULL, *sub3 = NULL;
    uint32_t i = 0, j = 0;
    object_instance_t *obj = NULL;
    resource_instance_t *res = NULL;
    resource_value_u value;
    retcode_e retcode = RETCODE_SUCCESS;
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    for (;i < cJSON_GetArraySize(root); i++) {
        //object
        sub = cJSON_GetArrayItem(root, i);
        if (!sub) {
            return;
        }
        
        sub1 = cJSON_GetArrayItem(sub, 0);
        if (!sub1) {
            return;
        }
        
        obj = device_find_object(sub1->valuestring);
        if(!obj) {
            continue;
        }
        
        //resources
        sub1 = cJSON_GetArrayItem(sub, 1);
        if (!sub1) {
            continue;
        }
        
        for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
            sub2 = cJSON_GetArrayItem(sub1, j);
            if (!sub2) {
                continue;
            }
            
            sub3 = cJSON_GetArrayItem(sub2, 0);
            if (!sub3) {
                continue;
            }
            
            res = object_instance_find_resource(obj, sub3->valuestring);
            if (!res) {
                continue;
            }
            
            sub3 = cJSON_GetArrayItem(sub2, 1);
            if (!sub3) {
                continue;
            }
            
            if (res->resource_type->type == Integer ||
                res->resource_type->type == Boolean) {
                value.int_value = sub3->valueint;
            } else if (res->resource_type->type == Float) {
                value.float_value = sub3->valuefloat;
            } else if (res->resource_type->type == String) {
                strcpy(value.string_value, sub3->valuestring);
            } else {
                continue;
            }
            
            set_resource_value(res, &value);
        }
        
    }
    
    sprintf(output_buf, "[%d]", retcode);
    send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
    
    return;
    
}

/*---------------------------------------------------------------------------*/
static void
get_resources_request_handler(uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL, *sub1 = NULL, *sub2 = NULL;
    uint32_t i = 0, j = 0;
    object_instance_t *obj = NULL;
    resource_instance_t *res = NULL;
    resource_value_u value;
    uint8_t *ptr = output_buf;
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    sprintf(ptr, "[");
    ptr++;
    
    for (;i < cJSON_GetArraySize(root); i++) {
        //object
        sub = cJSON_GetArrayItem(root, i);
        if (!sub) {
            return;
        }
        
        sub1 = cJSON_GetArrayItem(sub, 0);
        if (!sub1) {
            return;
        }
        
        obj = device_find_object(sub1->valuestring);
        if(!obj) {
            continue;
        }
        
        sprintf(ptr, "[%s,[", sub1->valuestring);
        ptr = ptr + strlen(ptr);
        
        //resources
        sub1 = cJSON_GetArrayItem(sub, 1);
        if (!sub1) {
            continue;
        }
        
        for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
            sub2 = cJSON_GetArrayItem(sub1, j);
            if (!sub2) {
                continue;
            }
            
            res = object_instance_find_resource(obj, sub2->valuestring);
            if (!res) {
                continue;
            }
            
            if (get_resource_value(res, &value) == FAIL) {
                continue;
            }
            
            if (res->resource_type->type == Integer) {
                sprintf(ptr, "[%s, %d],", sub2->valuestring, value.int_value);
                ptr = ptr + strlen(ptr);
            } else if (res->resource_type->type == Boolean) {
                if (value.int_value) {
                    sprintf(ptr, "[%s, true],", sub2->valuestring);
                } else {
                    sprintf(ptr, "[%s, false],", sub2->valuestring);
                }
                ptr = ptr + strlen(ptr);
            } else if (res->resource_type->type == Float) {
                sprintf(ptr, "[%s, %f],", sub2->valuestring, value.float_value);
                ptr = ptr + strlen(ptr);
            } else if (res->resource_type->type == String) {
                sprintf(ptr, "[%s, %s],", sub2->valuestring, value.string_value);
                ptr = ptr + strlen(ptr);
            } else {
                continue;
            }
            
        }
        
        sprintf((ptr - 1), "]],");
        ptr += 2;
    }
    
    sprintf((ptr - 1), "]");//discard last ','
    
    send_msg(output_buf, ptr - output_buf, &UIP_IP_BUF->srcipaddr);
    
    return;

}

/*---------------------------------------------------------------------------*/
static void
set_policy_request_handler(uint8_t *parameters)
{
    
}

/*---------------------------------------------------------------------------*/
static void
get_policy_request_handler(uint8_t *parameters)
{
    
}

/*---------------------------------------------------------------------------*/
static void
unset_policy_request_handler(uint8_t *parameters)
{
    
}

/*---------------------------------------------------------------------------*/
static void
reload_request_handler()
{
    //reload
}

/*---------------------------------------------------------------------------*/
static void
subscribe_request_handler(uint8_t *device_id, uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL, *sub1 = NULL, *sub2 = NULL, *sub3 = NULL, *sub4 = NULL;
    uint32_t i = 0, j = 0;
    object_instance_t *obj = NULL;
    resource_instance_t *res = NULL;
    resource_value_u value;
    retcode_e retcode = RETCODE_SUCCESS;
    res_subscriber_t *subscriber = NULL;
    cond_value_u cond_value;
    enum operation_e op;
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    for (;i < cJSON_GetArraySize(root); i++) {
        //object
        sub = cJSON_GetArrayItem(root, i);
        if (!sub) {
            return;
        }
        
        sub1 = cJSON_GetArrayItem(sub, 0);
        if (!sub1) {
            return;
        }
        
        obj = device_find_object(sub1->valuestring);
        if(!obj) {
            continue;
        }
        
        //resources
        sub1 = cJSON_GetArrayItem(sub, 1);
        if (!sub1) {
            continue;
        }
        
        for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
            sub2 = cJSON_GetArrayItem(sub1, j);
            if (!sub2) {
                continue;
            }
            
            sub3 = cJSON_GetArrayItem(sub2, 0);
            if (!sub3) {
                continue;
            }
            
            res = object_instance_find_resource(obj, sub3->valuestring);
            if (!res) {
                continue;
            }
            
            sub3 = cJSON_GetArrayItem(sub2, 1);
            if (!sub3) {
                continue;
            }
            
            //subscribe type
            sub4 = cJSON_GetArrayItem(sub3, 0);
            if (sub4) {
                if (sub4->valueint == CONDITION_TYPE_PERIOD) {
                    sub4 = cJSON_GetArrayItem(sub3, 1);
                    if (sub4 && sub4->valueint > 0) {
                        subscriber = subscriber_alloc();
                        if (subscriber) {
                            subscriber_period_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id, sub4->valueint);
                            resource_add_subscriber(res, subscriber);
                            subscriber_timer_start(subscriber);
                        }
                    }
                } else if (sub4->valueint == CONDITION_TYPE_EXPIRE) {
                    sub4 = cJSON_GetArrayItem(sub3, 1);
                    if (sub4 && sub4->valueint > 0) {
                        subscriber = subscriber_alloc();
                        if (subscriber) {
                            subscriber_expire_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id, sub4->valueint);
                            resource_add_subscriber(res, subscriber);
                            subscriber_timer_start(subscriber);
                        }
                    }
                } else if (sub4->valueint == CONDITION_TYPE_VALUE) {
                    sub4 = cJSON_GetArrayItem(sub3, 1);
                    if (sub4) {
                        op = sub4->valueint;
                        sub4 = cJSON_GetArrayItem(sub3, 2);
                        if (sub4) {
                            if (res->resource_type->type == Integer) {
                                cond_value.int_value = sub4->valueint;
                            } else if (res->resource_type->type == Float) {
                                cond_value.float_value = sub4->valuefloat;
                            } else if (res->resource_type->type == Boolean) {
                                cond_value.boolean_value = sub4->valueint;
                            } else {
                                continue;
                            }
                        }
                        
                        subscriber = subscriber_alloc();
                        if (subscriber) {
                            subscriber_value_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id, op, &cond_value);
                            resource_add_subscriber(res, subscriber);
                            subscriber_timer_start(subscriber);
                        }
                    }
                } else if (sub4->valueint == CONDITION_TYPE_VALUE_CHANGE) {
                    sub4 = cJSON_GetArrayItem(sub3, 1);
                    if (sub4) {
                        if (res->resource_type->type == Integer) {
                            cond_value.int_value = sub4->valueint;
                        } else if (res->resource_type->type == Float) {
                            cond_value.float_value = sub4->valuefloat;
                        } else {
                            continue;
                        }
                        
                        subscriber = subscriber_alloc();
                        if (subscriber) {
                            subscriber_value_change_type_init(subscriber, &UIP_IP_BUF->srcipaddr, device_id, &cond_value);
                            resource_add_subscriber(res, subscriber);
                            subscriber_timer_start(subscriber);
                        }
                    }
                } else {
                    continue;
                }
            }
            
        }
        
    }
    
    sprintf(output_buf, "[%d]", retcode);
    send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
    
    return;

}

/*---------------------------------------------------------------------------*/
static void
unsubscribe_request_handler(uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL, *sub1 = NULL, *sub2 = NULL;
    uint32_t i = 0, j = 0;
    object_instance_t *obj = NULL;
    resource_instance_t *res = NULL;
    retcode_e retcode = RETCODE_SUCCESS;
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    for (;i < cJSON_GetArraySize(root); i++) {
        //object
        sub = cJSON_GetArrayItem(root, i);
        if (!sub) {
            return;
        }
        
        sub1 = cJSON_GetArrayItem(sub, 0);
        if (!sub1) {
            return;
        }
        
        obj = device_find_object(sub1->valuestring);
        if(!obj) {
            continue;
        }
        
        //resources
        sub1 = cJSON_GetArrayItem(sub, 1);
        if (!sub1) {
            continue;
        }
        
        for (j = 0; j < cJSON_GetArraySize(sub1); j++) {
            sub2 = cJSON_GetArrayItem(sub1, j);
            if (!sub2) {
                continue;
            }
            
            res = object_instance_find_resource(obj, sub2->valuestring);
            if (!res) {
                continue;
            }
            
            resource_remove_subscriber(res, &UIP_IP_BUF->srcipaddr);
            
        }
        
    }
    
    sprintf(output_buf, "[%d]", retcode);
    
    send_msg(output_buf, strlen(output_buf), &UIP_IP_BUF->srcipaddr);
    
    return;

}

/*---------------------------------------------------------------------------*/
static void
message_handler(void)
{
    uint8_t *data, *parameters;
    //uint16_t msg_id;
    msg_method_e method;
    int32_t len = 0, type, i = 0;
    //cJSON *root, *node, *node1, *node2, *node3;    
    //object_instance_t *obj;
    //resource_instance_t *res;
    
    if(uip_newdata()) {
        len = uip_datalen();
        data = uip_appdata;
        PRINTF("Recv len:%d, data:", len);
        for (i = 0; i < len; i++) {
            PRINTF("%x ", data[i]);
        }
        PRINTF("\n");
        if (len >= sizeof(msg_header_t)) {
            if ( memcmp(get_msg_device_id(data), uip_lladdr.addr, 8) == 0) {
                if (get_msg_type(data) == TYPE_REQUEST) {
                    //request
                    method = get_msg_method(data);
                    switch(method){
                        case METHOD_NEW_DEVICE:
                            discover_request_handler();
                            break;
                        case METHOD_REPORT:
                            report_request_handler(get_msg_device_id(data), get_msg_parameters(data));
                            break;
                        case METHOD_SET_RESOURCES:
                            set_resources_request_handler(get_msg_parameters(data));
                            break;
                        case METHOD_GET_RESOURCES:
                            get_resources_request_handler(get_msg_parameters(data));
                            break;
                        case METHOD_SET_POLICY:
                            set_policy_request_handler(get_msg_parameters(data));
                            break;
                        case METHOD_GET_POLICY:
                            get_policy_request_handler(get_msg_parameters(data));
                            break;
                        case METHOD_UNSET_POLICY:
                            unset_policy_request_handler(get_msg_parameters(data));
                            break;
                        case METHOD_RELOAD:
                            reload_request_handler();
                            break;
                        case METHOD_SUBSCRIBE:
                            subscribe_request_handler(get_msg_device_id(data), get_msg_parameters(data));
                            break;
                        case METHOD_UNSUBSCRIBE:
                            unsubscribe_request_handler(get_msg_parameters(data));
                            break;
                        default:
                            return;
                    }
                } else {
                    //TODO: response
                    method = get_msg_method(data);
                    switch(method){
                        case METHOD_NEW_DEVICE:
                            break;
                        case METHOD_GET_CONFIG:
                            break;
                        default:
                            return;
                    }
                }
                if (len > 0) {
                
                }
            } else {
                PRINTF("It is not for me\n");
            }
        }
    }
}
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
    uint32_t i;
    uint8_t state;

    PRINTF("Client IPv6 addresses: ");
    for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
        state = uip_ds6_if.addr_list[i].state;
        if(uip_ds6_if.addr_list[i].isused &&
           (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
            PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
            PRINTF("\n");
            /* hack to make address "final" */
            if (state == ADDR_TENTATIVE) {
                uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
            }
        }
    }
}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
    uip_ipaddr_t ipaddr;

    uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
    uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
    uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

/* The choice of server address determines its 6LoPAN header compression.
 * (Our address will be compressed Mode 3 since it is derived from our link-local address)
 * Obviously the choice made here must also be selected in udp-server.c.
 *
 * For correct Wireshark decoding using a sniffer, add the /64 prefix to the 6LowPAN protocol preferences,
 * e.g. set Context 0 to aaaa::.  At present Wireshark copies Context/128 and then overwrites it.
 * (Setting Context 0 to aaaa::1111:2222:3333:4444 will report a 16 bit compressed address of aaaa::1111:22ff:fe33:xxxx)
 *
 * Note the IPCMV6 checksum verification depends on the correct uncompressed addresses.
 */
 
#if 1
/* Mode 1 - 64 bits inline */
    uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 1);
#elif 0
/* Mode 2 - 16 bits inline */
    uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0x00ff, 0xfe00, 1);
#else
/* Mode 3 - derived from server link-local (MAC) address */
    uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0x0250, 0xc2ff, 0xfea8, 0xcd1a); //redbee-econotag
#endif
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
    PROCESS_BEGIN();

    PROCESS_PAUSE();

    set_global_address();
    
    PRINTF("UDP client process started\n");

    print_local_addresses();

    /*create device, and init*/
    create_device();

    /* new connection with remote host */
    client_conn = udp_new(NULL, UIP_HTONS(UDP_SERVER_PORT), NULL); 
    if(client_conn == NULL) {
        PRINTF("No UDP connection available, exiting the process!\n");
        PROCESS_EXIT();
    }
    udp_bind(client_conn, UIP_HTONS(UDP_CLIENT_PORT)); 

    PRINTF("Created a connection with the server ");
    PRINT6ADDR(&client_conn->ripaddr);
    PRINTF(" local/remote port %u/%u\n",
          UIP_HTONS(client_conn->lport), UIP_HTONS(client_conn->rport));

    while(1) {
        PROCESS_YIELD();
        if(ev == tcpip_event) {
            message_handler();
        }
    }

    PROCESS_END();
}
/*---------------------------------------------------------------------------*/
