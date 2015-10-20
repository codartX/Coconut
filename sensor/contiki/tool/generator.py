#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import sys
import getopt
import json
import mmap
import ipso_resources
import ipso_objects

#copy right block

COPY_RIGHT_BLOCK ='''\
/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 *
 *  Don't modify this file, auto generated.
 */

'''

#head files block

HEAD_FILES_BLOCK ='''\
#include "main.h"
#include "device_profile.h"
#include "device.h"
#include "device_api.h"

'''

#function name block
FUNC_NAME_BLOCK ='''\
bool create_device()
'''

#device init block
DEVICE_INIT_BLOCK ='''\
    int32_t retval = FAIL;
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    resource_value_u value;
       
    retval = device_init("<device_id>");
    if (retval == FAIL) {
        PRINTF("device init fail\\n");
        return false;
    }

'''

#object block

OBJECT_BLOCK ='''\

    obj_instance = &<object_var>;

    object_instance_init(obj_instance, "<object_name>", <object_id>);
   
    if (!device_insert_object(obj_instance)) {
        return false;
    }

'''

#resource block

RESOURCE_BLOCK ='''\

    res_instance = &<resource_var>;

    if (!resource_instance_init(res_instance, "<resource_name>", <resource_id>, 
                                &value, <get_func>, <set_func>)) {
        return false;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        return false;
    }

'''

IPSO_RESOURCE_HEADER_BLOCK = '''
#ifndef _IPSO_RESOURCE_H
#define _IPSO_RESOURCE_H

#include <stdint.h>
#include "resource.h"

resource_type_t resource_types[] = {
'''

IPSO_RESOURCE_END_BLOCK = '''
};

uint16_t resource_types_count = sizeof(resource_types)/sizeof(resource_types[0]);

#endif
'''

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

    f2 = open('ipso_resource.c', 'w+')

    raw_data = f1.read()
    json_data = json.loads(raw_data)

    f.write(COPY_RIGHT_BLOCK)
    f.write(HEAD_FILES_BLOCK)

    f2.write(COPY_RIGHT_BLOCK)
    f2.write(IPSO_RESOURCE_HEADER_BLOCK)

    for object in json_data['objects']:
        if not 'object_id' in object:
            print 'No object id'
            return
        
        if not 'object_name' in object:
            if not object['object_id'] in ipso_resources.IPSO_OBJECTS:
                print 'No object name'
                return
            object_name = ipso_objects.IPSO_OBJECTS[object['object_id']]['Object Name']
        else:
            object_name = object['object_name']
        
        f.write('object_instance_t g_object_' + object_name.replace(' ', '_').lower() + ';\n')

        for resource in object['resources']:
            if resource['resource_id'] in ipso_resources.IPSO_RESOURCES:
                if not 'resource_name' in resource:
                    resource_name = ipso_resources.IPSO_RESOURCES[resource['resource_id']]['Resource Name']
                else:
                    resource_name = resource['resource_name']
        
                f.write('resource_instance_t g_resource_' + resource_name.replace(' ', '_').lower() + ';\n')
                f2.write('{"' + ipso_resources.IPSO_RESOURCES[resource['resource_id']]['Resource Name'] + '", ' +
                         str(resource['resource_id']) + ', ' +
                         ipso_resources.IPSO_RESOURCES[resource['resource_id']]['Access Type'] + ', ' + 
                         ipso_resources.IPSO_RESOURCES[resource['resource_id']]['Type'] + ', "' + 
                         ipso_resources.IPSO_RESOURCES[resource['resource_id']]['Description'] + '"},\n' 
                        )

    f.write('\n')
    f.write(FUNC_NAME_BLOCK)
    f.write('{\n')

    f2.write(IPSO_RESOURCE_END_BLOCK)

    replacements = {'<device_id>': str(json_data['device_id'])}
    f.write(replace_all(DEVICE_INIT_BLOCK, replacements))

    for object in json_data['objects']:
        if not 'object_id' in object:
            print 'No object id'
            return
        
        if not 'object_name' in object:
            if not object['object_id'] in ipso_resources.IPSO_OBJECTS:
                print 'No object name'
                return
            object_name = ipso_objects.IPSO_OBJECTS[object['object_id']]['Object Name']
        else:
            object_name = object['object_name']

        replacements = {'<object_var>': 'g_object_' + object_name.replace(' ', '_').lower(), 
                        '<object_id>': str(object['object_id']), '<object_name>': str(object_name)}
        f.write(replace_all(OBJECT_BLOCK, replacements))

        for resource in object['resources']:
            if resource['resource_id'] in ipso_resources.IPSO_RESOURCES:
                if not 'get_func' in resource:
                    get_func = 'NULL'
                else:
                    get_func = resource['get_func']
        
                if not 'set_func' in resource or resource_desc['Access Type'] == 'ReadOnly':
                    set_func = 'NULL'
                else:
                    set_func = resource['set_func']

                resource_desc = ipso_resources.IPSO_RESOURCES[resource['resource_id']] 

                if get_func != 'NULL':
                    f.write('    ' + get_func +'(&value);\n')
                     
                elif resource['value']:
                    if resource_desc['Type'] == 'String':
                        f.write('    strncpy(value.string_value, "' + str(resource['value']) + '", MAX_RESOURCE_STR_VALUE_LEN - 1);\n')
                        f.write('    value.string_value[MAX_RESOURCE_STR_VALUE_LEN] = \'\\0\';\n')
                    elif resource_desc['Type'] == 'Float':
                        f.write('    value.float_value = ' + str(float(resource['value'])) + ';\n')
                    elif resource_desc['Type'] == 'Integer':
                        f.write('    value.int_value = ' + str(int(resource['value'])) + ';\n')
                    elif resource_desc['Type'] == 'Boolean':
                        if resource['value']:
                            f.write('    value.bool_value = true;\n')
                        else:
                            f.write('    value.bool_value = false;\n')
                else:
                    print 'No value!'

                if not 'resource_name' in resource:
                    resource_name = ipso_resources.IPSO_RESOURCES[resource['resource_id']]['Resource Name']
                else:
                    resource_name = resource['resource_name']

                replacements = {
                                   '<resource_var>': 'g_resource_' + resource_name.replace(' ', '_').lower(), 
                                   '<resource_id>': str(resource['resource_id']), 
                                   '<resource_name>': str(resource_name),
                                   '<get_func>': str(get_func),
                                   '<set_func>': str(set_func),
                               }
                f.write(replace_all(RESOURCE_BLOCK, replacements)) 

    f.write('    return true;\n')
    f.write('}\n')
    f.flush()
    f.close()

if __name__ == "__main__":
    main(sys.argv[1:])
