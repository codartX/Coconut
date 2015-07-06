/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include "ws-client.h"

nopoll_bool debug = nopoll_false;

noPollCtx * create_ctx (void) 
{	
    /* create a context */
    noPollCtx * ctx = nopoll_ctx_new ();
    nopoll_log_enable (ctx, debug);
    nopoll_log_color_enable (ctx, debug);
    return ctx;
}
