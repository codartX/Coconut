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
#include "cJSON.h"
#include "main.h"
#include "device.h"
#include "object.h"
#include "message.h"
#include "device_profile.h"
#include "crypto.h"
#include "device-fs.h"

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"

#define COCONUT_UDP_CLIENT_PORT 8765
#define COCONUT_UDP_SERVER_PORT 5678

uint8_t output_buf[MAX_PAYLOAD_LEN];
uint8_t tmp_buf[MAX_PAYLOAD_LEN];

static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;

uint8_t auth_success = 0;
uint8_t reg_success = 0;

#define SEND_INTERVAL 20 * CLOCK_SECOND

/*---------------------------------------------------------------------------*/
PROCESS(coconut_sensor_process, "Coconut sensor process");
AUTOSTART_PROCESSES(&coconut_sensor_process);
/*---------------------------------------------------------------------------*/
static void debug_print_msg(uint8_t *msg, uint32_t len)
{
    uint16_t i;

    PRINTF("Message:");
    for(i = 0; i < len; i++) {
        PRINTF("%x ", msg[i]);
    }
    PRINTF("\n");
}
/*---------------------------------------------------------------------------*/
void send_msg(uint8_t *data, uint32_t len, uip_ipaddr_t *peer_ipaddr)
{
    uip_ipaddr_copy(&client_conn->ripaddr, peer_ipaddr);
    uip_udp_packet_sendto(client_conn, data, len,
                          peer_ipaddr, UIP_HTONS(COCONUT_UDP_SERVER_PORT));
    uip_create_unspecified(&client_conn->ripaddr);
    
    return;
}

void send_msg_to_gateway(uint8_t *data, uint32_t len)
{
    uip_ipaddr_copy(&client_conn->ripaddr, &server_ipaddr);
    uip_udp_packet_sendto(client_conn, data, len,
                          &server_ipaddr, UIP_HTONS(COCONUT_UDP_SERVER_PORT));
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
register_response_handler(uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL;
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    sub = cJSON_GetArrayItem(root, 0);
    if (sub && sub->valueint == RETCODE_SUCCESS) {
        reg_success = 1;
    }

    return;
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
    msg_method_e method;
    uint32_t len = 0, len1 = 0, i = 0;
    security_header_t *security_header = NULL;
    network_shared_key_t *shared_key = NULL;
    
    if(uip_newdata()) {
        len = uip_datalen();
        data = uip_appdata;
#if 0
        PRINTF("Recv len:%d, data:", len);
        for (i = 0; i < len; i++) {
            PRINTF("%x ", data[i]);
        }
        PRINTF("\n");
#endif
        
        /*Decrypt data*/
        security_header = uip_appdata;
        if (security_header->content_type == SECURITY_SERVER_HELLO) {
            security_server_hello_msg_t *msg = (security_server_hello_msg_t *)uip_appdata;
            if (msg->master_key_version != get_master_key()->version) {
                return;
            }
            len1 = decrypt_data_by_master_key(uip_appdata + sizeof(security_server_hello_msg_t), msg->security_header.len + 1, tmp_buf);
            if (len1 == DEVICE_KEY_SIZE) {
                if (set_network_shared_key(tmp_buf, security_header->key_version)) {
                    auth_success = 1;
                }
            }
            
            return;
        } else if(security_header->content_type == SECURITY_ERROR) {
            i = *((uint32_t *)(security_header + sizeof(security_header_t)));
            PRINTF("Security Error:%d", i);
            if (i == SECURITY_ERROR_INVALID_KEY_VERSION || i == SECURITY_ERROR_DECRYPT_ERROR) {
                shared_key = get_network_shared_key();
                if (shared_key) {
                    shared_key->used = false;
                }
            }
            auth_success = 0;
            return;
        } else if (security_header->content_type == SECURITY_DATA) {
            len1 = decrypt_data_by_network_shared_key(uip_appdata, len, tmp_buf);
            if (!len1) {
                PRINTF("Decrypt Error");
                return;
            }
            data = tmp_buf;
            len = len1;
            
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
                                register_response_handler(get_msg_parameters(data));
                                break;
                            case METHOD_GET_CONFIG:
                                break;
                            default:
                                return;
                        }
                    }
                } else {
                    PRINTF("It is not for me\n");
                }
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
set_server_address(void)
{
    uip_ds6_addr_t *g_addr = NULL;
 
    while (g_addr == NULL) {
        g_addr = uip_ds6_get_global(ADDR_PREFERRED);
    }
    
    uip_ip6addr(&server_ipaddr, g_addr->ipaddr.u16[0], g_addr->ipaddr.u16[1], g_addr->ipaddr.u16[2],
                g_addr->ipaddr.u16[3], 0, 0, 0, 1);
    
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(coconut_sensor_process, ev, data)
{
    static struct etimer et;
    uint32_t len;
    
    PROCESS_BEGIN();

    PROCESS_PAUSE();

    set_server_address();
    
    PRINTF("Coconut process started\n");

    print_local_addresses();
    
    device_fs_init(); 

    if (crypto_init()) {
        PRINTF("Crypto init fail\n");
        PROCESS_EXIT();
    }

    /*create device, and init*/
    create_device();

    /* new connection with remote host */
    client_conn = udp_new(NULL, UIP_HTONS(COCONUT_UDP_SERVER_PORT), NULL);
    if(client_conn == NULL) {
        PRINTF("No UDP connection available, exiting the process!\n");
        PROCESS_EXIT();
    }
    udp_bind(client_conn, UIP_HTONS(COCONUT_UDP_CLIENT_PORT));

    PRINTF("Created a connection with the server ");
    PRINT6ADDR(&client_conn->ripaddr);
    PRINTF(" local/remote port %u/%u\n",
          UIP_HTONS(client_conn->lport), UIP_HTONS(client_conn->rport));

    etimer_set(&et, SEND_INTERVAL);
    
    while(1) {
        PROCESS_YIELD();
        if(etimer_expired(&et)) {
            if (!auth_success) {
                etimer_restart(&et);
                generate_master_key();
                len = create_security_client_hello_msg(output_buf);
                if (len){
                    debug_print_msg(output_buf, len);
                    send_msg_to_gateway(output_buf, len);
                }
            } else if (!reg_success) {
                /*send register*/
                etimer_restart(&et);
                len = create_new_device_msg(output_buf, MAX_PAYLOAD_LEN, TYPE_REQUEST);
                if (len){
                    debug_print_msg(output_buf, len);
                    send_msg_to_gateway(output_buf, len);
                }
            }
        }
        if(ev == tcpip_event) {
            message_handler();
        }
    }

    PROCESS_END();
}
/*---------------------------------------------------------------------------*/
