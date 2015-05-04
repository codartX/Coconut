#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.


class DeviceStatsViewHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, device_id, object, resource, template_variables = {}):
        device_id = long(device_id)
        user_info = self.current_user
        template_variables['user_info'] = user_info
        
        for device in user_info['devices']:
            if device['_id'] == device_id:
                break
    
        if device['_id'] != device_id:
            template_variables['errors']['no_device'] = ['No such device']
            self.render('device/device_stats.html', **template_variables)
            return
        
        template_variables['device'] = device
        
        for object in device.objects:
            for resource in device.objects[object].resources:
                if 'id' in device.objects[object].resources[resource]:
                    device.objects[object].resources[resource].schema = IPSO_RESOURCES[device.objects[object].resources[resource].id]
        
        cursor = self.application.device_stats_model.get_latest_device_info_his_collection(device_id, object + '.' + resource, 10)
        template_variables['stats'] = {}
        template_variables['stats']['data'] = []
        template_variables['stats']['timestamp'] = []
        while (yield cursor.fetch_next):
            stats_obj = cursor.next_object()
            template_variables['stats']['data'].append(stats_obj['objects'][object][resource])
            template_variables['stats']['timestamp'].append(stats_obj['timestamp'])

        template_variables['object'] = object
        template_variables['resource'] = resource
        
        template_variables['gen_random'] = gen_random
        self.render('device/device_stats.html', **template_variables)