#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import sys
import getopt
import json
import ipso_resources

#copy right block

COPY_RIGHT_BLOCK ="""\
/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

"""

#head files block

HEAD_FILES_BLOCK ="""\
#include "main.h"
#include "device_profile.h"
#include "device.h"
#include "device_api.h"

"""

#function name block
FUNC_NAME_BLOCK ="""\
void create_device()
"""

#device init block
DEVICE_INIT_BLOCK ="""\
    int32_t retval = FAIL;
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    resource_value_u value;
       
    retval = device_init("<device_id>", "<device_name>");
    if (retval == FAIL) {
        PRINTF("device init fail\\n");
        return;
    }

"""

#object block

OBJECT_BLOCK ="""\
    obj_instance = object_instance_alloc();
    if (!obj_instance) {
        device_deinit();
        return;
    }

    object_instance_init(obj_instance, "<object_name>", <object_id>);

"""

#resource block

RESOURCE_ALLOC_BLOCK ="""\
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

"""

RESOURCE_ADD_BLOCK ="""\
    if (!resource_instance_init(res_instance, "<resource_name>", <resource_id>, 
                                &value, <get_func>, <set_func>)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

"""

def replace_all(text, dic):
    for i, j in dic.iteritems():
        text = text.replace(i, j)
    return text

def main(argv):
    inputfile = 'device_profile.json'
    outputfile = 'device_profile.c'

    try:
        opts, args = getopt.getopt(argv,"hi:",["ifile="])
    except getopt.GetoptError:
        print 'generator.py -i <inputfile> '
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'generator.py -i <inputfile> '
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg

    f = open(outputfile, 'w+')

    f1 = open(inputfile, 'r')
    raw_data = f1.read()
    json_data = json.loads(raw_data)

    f.write(COPY_RIGHT_BLOCK)
    f.write(HEAD_FILES_BLOCK)
    f.write(FUNC_NAME_BLOCK)
    f.write('{\n')

    replacements = {'<device_id>': str(json_data['device_id']), '<device_name>': str(json_data['device_name'])}
    f.write(replace_all(DEVICE_INIT_BLOCK, replacements))

    for object in json_data['objects']:
        replacements = {'<object_id>': str(object['object_id']), '<object_name>': str(object['object_name'])}
        f.write(replace_all(OBJECT_BLOCK, replacements))

        for resource in object['resources']:
            if resource['resource_id'] in ipso_resources.IPSO_RESOURCES:
                f.write(RESOURCE_ALLOC_BLOCK)

                resource_desc = ipso_resources.IPSO_RESOURCES[resource['resource_id']] 
                if resource_desc['Type'] == 'String':
                    f.write('    strcpy(value.string_value, "' + str(resource['value']) + '");\n')
                elif resource_desc['Type'] == 'Float':
                    f.write('    value.float_value = ' + str(float(resource['value'])) + ';\n')
                elif resource_desc['Type'] == 'Integer':
                    f.write('    value.int_value = ' + str(int(resource['value'])) + ';\n')
                elif resource_desc['Type'] == 'Boolean':
                    if resource['value']:
                        f.write('    value.bool_value = true;\n')
                    else:
                        f.write('    value.bool_value = false;\n')

                replacements = {
                                   '<resource_id>': str(resource['resource_id']), 
                                   '<resource_name>': str(resource['resource_name']),
                                   '<get_func>': str(resource['get_func']),
                                   '<set_func>': str(resource['set_func']),
                               }
                f.write(replace_all(RESOURCE_ADD_BLOCK, replacements)) 

    f.write('}\n')

if __name__ == "__main__":
    main(sys.argv[1:])
