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

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"

#include "cJSON.h"

#include "main.h"
#include "device.h"
#include "object.h"
#include "message.h"
#include "device_profile.h"

static uint8_t msg_buf[MAX_PAYLOAD_LEN];
uint8_t buf[MAX_PAYLOAD_LEN];

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

/*---------------------------------------------------------------------------*/
static void
message_handler(void)
{
    uint32_t8_t *data, *parameters;
    uint32_t16_t msg_id;
    msg_method_e method;
    int32_t len = 0, type, i = 0;
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
            if ( memcmp(get_msg_device_id(data), uip_lladdr.addr, 8) == 0) {
                if (get_msg_type(data) == TYPE_REQUEST) {
                    //request
                    method = get_msg_method(data);
                    switch(method){
                        case METHOD_NEW_DEVICE:
                            break;
                        case METHOD_SET_RESOURCES:
                            break;
                        case METHOD_GET_RESOURCES:
                            break;
                        case METHOD_SET_POLICY:
                            break;
                        case METHOD_GET_POLICY:
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
                        case METHOD_NEW_DEVICE:
                            len = create_new_device_msg(buf, MAX_PAYLOAD_LEN);
                            if (len > 0) {
                                send_msg(buf, len, &UIP_IP_BUF->srcipaddr);
                            }
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
    int32_t i;
    uint32_t8_t state;

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
