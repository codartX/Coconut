/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 *
 *  Don't modify this file, auto generated.
 */


#ifndef _IPSO_RESOURCE_H
#define _IPSO_RESOURCE_H

#include <stdint.h>
#include "resource.h"

resource_type_t resource_types[] = {
{5105, ReadWrite, String},
{5700, ReadOnly, Float},
{5701, ReadOnly, String},

};

uint16_t resource_types_count = sizeof(resource_types)/sizeof(resource_types[0]);

#endif
