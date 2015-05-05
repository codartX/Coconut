/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */
#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "net/uip.h"
#include "net/uip-ds6.h"
#include "net/uip-udp-packet.h"
#include "sys/ctimer.h"
#include <stdio.h>
#include <string.h>
#include "dev/adc-sensor.h"

#define UDP_CLIENT_PORT 8765
#define UDP_SERVER_PORT 5678

#define UDP_EXAMPLE_ID  190

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"

#include "cJSON.h"

#include "device.h"
#include "object.h"
#include "message.h"

#ifndef PERIOD
#define PERIOD 60
//#define PERIOD 20
#endif

#define MANUFACTURER    "Cisco"
#define MODEL           "N1"

//should not define but read from config or somewhere
#define SERIAL          "ABCDEF012345"
#define HW_VERSION      "1.0"
#define SW_VERSION      "1.0"

#define TEMPERATURE_VALUE_MIN   -40.0
#define TEMPERATURE_VALUE_MAX   50.0

#define TEMPERATURE_SENSOR_OBJ_NAME    "Temperature Sensor"

#define START_INTERVAL		(15 * CLOCK_SECOND)
#define SEND_INTERVAL		(PERIOD * CLOCK_SECOND)
#define SEND_TIME		(random_rand() % (SEND_INTERVAL))

#define MAX_PAYLOAD_LEN		80

static char msg_buf[MAX_PAYLOAD_LEN];
static char buf[MAX_PAYLOAD_LEN];

static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;
//static coap_packet_t coap_request;

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
/*---------------------------------------------------------------------------*/
static void send_config_response(uint16_t seq, int retcode)
{
  //memset(buf, 0x0, MAX_PAYLOAD_LEN);
  //buf[0] = 0x40;
  //buf[1] = 2;
  //*((uint16_t *) &buf[2]) = seq;
  //*((uint32_t *) &buf[4]) = UIP_HTONL(device_class);
  //memcpy(&buf[8], device_id, 8);
  //*((uint8_t *) &buf[16]) = 0;
  //sprintf(&buf[17], "{\"retcode\":%d}", retcode);
  //PRINTF("send to %x:%x response msg, len:%d\n", 
  //       server_ipaddr.u8[sizeof(server_ipaddr.u8) - 2],
  //       server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1],
  //       strlen(&buf[17]) + 17);
  //uip_udp_packet_sendto(client_conn, buf, strlen(&buf[17]) + 17,
  //                      &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
static void
send_subscribe(uip_ipaddr_t *peer_ipaddr, int port, char *parameters)
{
    int len = 0;

    len = build_msg(msg_buf, MAX_PAYLOAD_LEN, TYPE_REQUEST, METHOD_SUBSCRIBE, parameters);

    uip_udp_packet_sendto(client_conn, msg_buf, len,
                          peer_ipaddr, UIP_HTONS(port));
    
}
/*---------------------------------------------------------------------------*/
static void
send_new()
{
    float temperature; 
    int len;
    cJSON *root = NULL, *node = NULL, *node1 = NULL, *node2 = NULL;
    object_instance_t *obj = NULL;
    resource_instance_t *res = NULL;

    temperature = get_temperature();

    root = cJSON_CreateArray();
    if(!root) {
        return;
    }

    //objects list
    node = cJSON_CreateArray();
    if(!node) {
        cJSON_Delete(root);
        return;
    }
    cJSON_AddItemToArray(root, node); 

    obj = g_device.obj_list;
    while (obj) {
        //object id
        node1 = cJSON_CreateNumber(obj->object_id);
        if(!node1) {
            cJSON_Delete(root);
            return;
        }
        cJSON_AddItemToArray(node, node1); 
        
        //object name
        node1 = cJSON_CreateString(obj->name);
        if(!node1) {
            cJSON_Delete(root);
            return;
        }
        cJSON_AddItemToArray(node, node1); 
        
        //resource list
        node1 = cJSON_CreateArray();
        if(!node1) {
            cJSON_Delete(root);
            return;
        }
        cJSON_AddItemToArray(node, node1); 
        
        res = obj->list;
        while (res) {
             //resource
             node2 = cJSON_CreateArray();
             if(!node2) {
                 cJSON_Delete(root);
                 return;
             }
             cJSON_AddItemToArray(node1, node2); 
             
            //resource id
            node1 = cJSON_CreateNumber(res->resource_type->resource_id);
            if(!node1) {
                cJSON_Delete(root);
                return;
            }
            cJSON_AddItemToArray(node2, node1); 
            
            //resource name
            node1 = cJSON_CreateString(res->name);
            if(!node1) {
                cJSON_Delete(root);
                return;
            }
            cJSON_AddItemToArray(node2, node1); 

            switch (res->resource_type->type) {
                case Integer:
                    node1 = cJSON_CreateNumber(res->value.int_value);
                    if(!node1) {
                        cJSON_Delete(root);
                        return;
                    }
                    cJSON_AddItemToArray(node2, node1); 
                    break;
                case Boolean:
                    node1 = cJSON_CreateNumber(res->value.boolean_value);
                    if(!node1) {
                        cJSON_Delete(root);
                        return;
                    }
                    cJSON_AddItemToArray(node2, node1); 
                    break;
                case Float:
                    node1 = cJSON_CreateNumber(res->value.float_value);
                    if(!node1) {
                        cJSON_Delete(root);
                        return;
                    }
                    cJSON_AddItemToArray(node2, node1); 
                    break;
                case String:
                    node1 = cJSON_CreateString(res->value.string_value);
                    if(!node1) {
                        cJSON_Delete(root);
                        return;
                    }
                    cJSON_AddItemToArray(node2, node1); 
                    break;
                default:
                    cJSON_Delete(root);
                    return;
            }        
        }

        obj = obj->next;
    }

    len = build_msg(msg_buf, MAX_PAYLOAD_LEN, TYPE_REQUEST, 
                    METHOD_INFO, cJSON_Print(root));

    cJSON_Delete(root);

    uip_udp_packet_sendto(client_conn, msg_buf, len,
                          &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
static void
send_info()
{
    //cJSON *root = NULL, *node = NULL, *node1 = NULL;
    /* Sensor Values */
    float temperature; 
    int len;

    temperature = get_temperature();

    //root = cJSON_CreateArray();
    //if(!root) {
    //    return;
    //}

    ////objects list
    //node = cJSON_CreateArray();
    //if(!node) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(root, node); 

    ////add timestamp
    //node1 = cJSON_CreateNumber(time());
    //if(!node1) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(root, node1); 

    ////object
    //node1 = cJSON_CreateArray();
    //if(!node1) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(node, node1); 

    ////object name
    //node = cJSON_CreateString(TEMPERATURE_SENSOR_OBJ_NAME);
    //if(!node) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(node1, node); 

    ////resources list
    //node = cJSON_CreateArray();
    //if(!node) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(node1, node); 

    ////resource
    //node1 = cJSON_CreateArray();
    //if(!node1) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(node, node1); 

    ////resource name
    //node = cJSON_CreateString("temperature value");
    //if(!node) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(node1, node); 

    ////resource value
    //node = cJSON_CreateNumber(temperature);
    //if(!node) {
    //    cJSON_Delete(root);
    //    return;
    //}
    //cJSON_AddItemToArray(node1, node); 

    //len = build_msg(msg_buf, MAX_PAYLOAD_LEN, TYPE_REQUEST, METHOD_INFO, cJSON_Print(root));

    //cJSON_Delete(root);

    sprintf(buf, "[[%s, [\"temperature value\", %d]]]", TEMPERATURE_SENSOR_OBJ_NAME, temperature);
    len = build_msg(msg_buf, MAX_PAYLOAD_LEN, TYPE_REQUEST, METHOD_INFO, buf);
    uip_udp_packet_sendto(client_conn, msg_buf, len,
                          &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
static void
message_handler(void)
{
    uint8_t *data, *parameters;
    uint16_t msg_id;
    msg_method_e method;
    int len = 0, type, i = 0;
    cJSON *root, *node, *node1, *node2, *node3;    
    object_instance_t *obj;
    resource_instance_t *res;
    

    if(uip_newdata()) {
        len = uip_datalen();
        data = uip_appdata;
        PRINTF("Recv len:%d, data:", len);
        for (i = 0; i < len; i++) {
            PRINTF("%x ", data[i]);
        }
        PRINTF("\n");
        if (len >= sizeof(msg_header_t)) {
            msg_id = get_msg_id(data);
            //PRINTF("seq:%d\n", seq);
            //PRINTF("device id:");
            //for (i = 0; i < 8; i++) {
            //  PRINTF("%x ", data[8 + i]);
            //}
            //PRINTF("\n");
            //PRINTF("my device id:");
            //for (i = 0; i < 8; i++) {
            //  PRINTF("%x ", device_id[i]);
            //}
            //PRINTF("\n");
            if ( memcmp(get_msg_device_id(data), uip_lladdr.addr, 8) == 0) {
                if (get_msg_type(data) == TYPE_REQUEST) {
                    //request
                    method = get_msg_method(data);
                    switch(method){
                        case METHOD_CONFIG:
                            parameters = get_msg_parameters(data);
                            root = cJSON_Parse(parameters);
                            node = root->child;
                            while(node) {
                                //object
                                node1 = node->child; 
                                obj = device_find_object(node1->valuestring); 
                                if (obj) {
                                    //resource
                                    node2 = node1->next->child;
                                    while(node2) {
                                        node3 = node2->child;
                                        res = object_instance_find_resource(obj, node3->valuestring); 
                                        if (res && res->resource_type->access_type == ReadWrite) {
                                            switch(res->resource_type->type) {
                                                case Integer:
                                                    res->value.int_value = node3->next->valueint;
                                                    break;
                                                case Boolean:
                                                    res->value.boolean_value = node3->next->valueint;
                                                    break;
                                                case Float:
                                                    res->value.float_value = node3->next->valuefloat;
                                                    break;
                                                case String:
                                                    strncpy(res->value.string_value, 
                                                            node3->next->valuestring, 
                                                            MAX_RESOURCE_STR_VALUE_LEN-1);
                                                    res->value.string_value[MAX_RESOURCE_STR_VALUE_LEN-1] = '\0';
                                                    break;
                                                default:
                                                    break;
                                            }
                                        }
                                        node2 = node2->next; 
                                    }
                                }
                                node = node->next;
                            }
                            //send response
                            break;
                        case METHOD_GET_INFO:
                            break; 
                        case METHOD_SET_POLICY:
                            break; 
                        case METHOD_RELOAD:
                            break; 
                        default:
                            return;
                    }
                } else {
                    //TODO: response
                    method = get_msg_method(data);
                    switch(method){
                        case METHOD_INFO:
                            parameters = get_msg_parameters(data);
                            root = cJSON_Parse(parameters);
                            if (root->valueint == RETCODE_DEVICE_NOT_REGISTER) {
                                //send new device register
                                send_new();
                            }
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
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
    int i;
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
/*---------------------------------------------------------------------------*/
void device_create()
{
    object_instance_t *obj_instance = NULL;
    float temperature;

    device_init(uip_lladdr.addr);
    obj_instance = new_device_info_object(MANUFACTURER, MODEL, SERIAL, 
                                               HW_VERSION, SW_VERSION);
    if (obj_instance) {
        device_insert_object(obj_instance); 
    }

    temperature = get_temperature();
    obj_instance = new_temperature_object(TEMPERATURE_SENSOR_OBJ_NAME, 
                                               temperature, 
                                               TEMPERATURE_VALUE_MIN, 
                                               TEMPERATURE_VALUE_MAX, 
                                               "C");
    if (obj_instance) {
        device_insert_object(obj_instance); 
    }
}

/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
    static struct etimer periodic;

    PROCESS_BEGIN();

    PROCESS_PAUSE();

    set_global_address();
    
    PRINTF("UDP client process started\n");

    print_local_addresses();

    /*create device, and init*/
    device_create();

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

    etimer_set(&periodic, (4 * CLOCK_SECOND));
    while(1) {
      PROCESS_YIELD();
      if(ev == tcpip_event) {
          message_handler();
      }
      
      if(etimer_expired(&periodic)) {
        etimer_set(&periodic, (4 * CLOCK_SECOND));
        //ctimer_set(&backoff_timer, SEND_TIME, send_packet, NULL);
        send_info();
      }
    }

    PROCESS_END();
}
/*---------------------------------------------------------------------------*/
