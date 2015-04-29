#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.


class DeviceStatsViewHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, device_id, component_name, attribute, template_variables = {}):
        device_id = long(device_id)
        user_info = self.current_user
        template_variables['user_info'] = user_info
        
        device = yield self.application.device_info_model.get_device(device_id)
        
        if not device:
            self.write_error(404)
            return
        
        template_variables['device'] = device
        
        component = None
        for key in device.components:
            if key == component_name:
                component = device.components[key]
                break
        
        if not (component and (attribute in component)):
            self.write_error(404)
            return
    
        template_variables['schema'] = lib.ipso_json_schema.IPSO_SCHEMA[device.components[component_name]['rt']]['properties'][attribute]
        
        cursor = self.application.device_info_history_model.get_latest_device_info_his_collection(device_id, component_name + '.' + attribute, 10)
        template_variables['stats'] = {}
        template_variables['stats']['data'] = []
        template_variables['stats']['timestamp'] = []
        while (yield cursor.fetch_next):
            stats_obj = cursor.next_object()
            template_variables['stats']['data'].append(stats_obj['components'][component_name][attribute])
            template_variables['stats']['timestamp'].append(stats_obj['timestamp'])

        template_variables['component'] = component_name
        template_variables['attribute'] = attribute
        
        template_variables['gen_random'] = gen_random
        self.render('device/device_stats.html', **template_variables)