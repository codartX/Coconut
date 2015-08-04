/*
 *  Created by Jun Fang on 15-7-23.
 *  Copyright (c) 2015年 Jun Fang. All rights reserved.
 */

#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "net/uip-ds6.h"
#include "net/uip-udp-packet.h"
#include "sys/ctimer.h"
#include <stdio.h>
#include <string.h>
#include "main.h"
#include "cJSON.h"
#include "message.h"
#include "crypto.h"

#define AUTH_PROCESS_CLIENT_PORT 7654
#define AUTH_PROCESS_SERVER_PORT 4567

static struct uip_udp_conn *auth_client_conn;
static uip_ipaddr_t auth_server_ipaddr;

/*---------------------------------------------------------------------------*/
PROCESS(auth_process, "Coconut sensor auth process");
AUTOSTART_PROCESSES(&auth_process);
/*---------------------------------------------------------------------------*/
static void
set_auth_server_address(void)
{
    uip_ds6_addr_t *g_addr = NULL;
    
    while (g_addr == NULL) {
        g_addr = uip_ds6_get_global(PREFERRED);
    }
    
    uip_ip6addr(&auth_server_ipaddr, g_addr->ipaddr.u16[0], g_addr->ipaddr.u16[1], g_addr->ipaddr.u16[2],
                g_addr->ipaddr.u16[3], 0, 0, 0, 1);
    
}
/*---------------------------------------------------------------------------*/
static void
auth_response_handler(uint8_t *parameters)
{
    cJSON *root = NULL, *sub = NULL;
    network_shared_key_t *shared_key;
    uint8_t shared_key_enc[32];
    
    if (!parameters) {
        return;
    }
    
    root = cJSON_Parse(parameters);
    
    if (!root) {
        return;
    }
    
    sub = cJSON_GetArrayItem(root, 0);
    if (!sub) {
        return;
    }
    if (sub->valueint != RETCODE_SUCCESS) {
        PRINTF("Auth fail, retcode:%d\n", sub->valueint);
        return;
    }
    
    sub = cJSON_GetArrayItem(root, 1);
    if (!sub) {
        return;
    }
    
    version = (uint16_t) sub->valueint;
    
    shared_key = get_network_shared_key();
    if (shared_key) {
        if (shared_key->used && shared_key->version == version) {
            auth_success = 1;
            return;
        }
        
        sub = cJSON_GetArrayItem(root, 2);
        if (!sub) {
            return;
        }
        
        if (strlen(sub->valuestring) != 64) {
            PRINTF("Invalid key length\n");
        }
        
        string2hex(sub->valuestring, 64, shared_key_enc);
        
        /*Decrypt shared key*/
        if (decrypt_data_by_master_key(shared_key_enc, 32, shared_key->key)) {
            
            shared_key->version = version;
            
            shared_key->used = 1;
            
            save_network_shared_key(shared_key);
            
            auth_success = 1;
        } else {
            PRINTF("Network shared key decrypted fail\n");
        }
    }
    
    return;
}
/*---------------------------------------------------------------------------*/
static void
message_handler(void)
{
    uint8_t *data, *parameters;
    msg_method_e method;
    int32_t len = 0, type, i = 0;
    
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
                if (get_msg_type(data) == TYPE_RESPONSE) {
                    method = get_msg_method(data);
                    if (method == METHOD_AUTH) {
                        auth_response_handler(get_msg_parameters(data));
                    }
                }
            }
        }
    }
    
    return;
    
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(auth_process, ev, data)
{
    static struct etimer et;
    uint32_t len;
    
    PROCESS_BEGIN();
    
    PROCESS_PAUSE();
    
    set_auth_server_address();
    
    PRINTF("Auth client process started\n");
    
    print_local_addresses();
    
    if (crypto_init()) {
        PRINTF("Crypto init fail\n");
        return;
    }
    
    /* new connection with remote host */
    auth_client_conn = udp_new(NULL, UIP_HTONS(AUTH_PROCESS_SERVER_PORT), NULL);
    if(client_conn == NULL) {
        PRINTF("No UDP connection available, exiting the process!\n");
        PROCESS_EXIT();
    }
    udp_bind(auth_client_conn, UIP_HTONS(AUTH_PROCESS_CLIENT_PORT));
    
    PRINTF("Created a connection with the auth server ");
    PRINT6ADDR(&auth_client_conn->ripaddr);
    PRINTF(" local/remote port %u/%u\n",
           UIP_HTONS(auth_client_conn->lport), UIP_HTONS(auth_client_conn->rport));
    
    etimer_set(&et, SEND_INTERVAL);
    
    while(1) {
        PROCESS_YIELD();
        if(etimer_expired(&et)) {
            if (!auth_success) {
                /*send auth*/
                etimer_restart(&et);
                len = create_auth_msg(output_buf, MAX_PAYLOAD_LEN);
                if (len){
                    uip_ipaddr_copy(&auth_client_conn->ripaddr, &server_ipaddr);
                    uip_udp_packet_sendto(auth_client_conn, output_buf, len,
                                          &auth_server_ipaddr, UIP_HTONS(AUTH_PROCESS_SERVER_PORT));
                    uip_create_unspecified(&auth_client_conn->ripaddr);
                }
            }
        }
        if(ev == tcpip_event) {
            auth_message_handler();
        }
    }
    
    PROCESS_END();
}
