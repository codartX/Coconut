#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 22-11-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

IPSO_SCHEMA = {
    "ipso.dev": {
        "id": "http://linkio.me/ipso/device-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "Information about the IP smart object device itself",
        "type": "object",
        "required": ["Manufacturer", "Model", "Name"],
        "properties": {
            "Manufacturer": {
                "type": "string",
                "readOnly": True,
            },
            "Model": {
                "type": "string",
                "readOnly": True,
            },
            "Hardware Revision": {
                "type": "string",
                "readOnly": True,
            },
            "Software Version": {
                "type": "string",
                "readOnly": True,
            },
            "Serial": {
                "type": "string",
                "readOnly": True,
            },
            "Name": {
                "type": "string",
                "readOnly": True,
            },
            "Power Supply": {
                "type": { "enum": [ "Line", "Battery", "Harvester" ] },
                "readOnly": True,
            },
            "Power Supply Voltage":{
                "type": "integer",
                "readOnly": True,
            },
            "Time":{
                "type": "number",
                "readOnly": True,
            },
            "Uptime":{
                "type": "number",
                "readOnly": True,
            },
        },
    },

    "ipso.gpio" : {
        "id": "http://linkio.me/ipso/general-purpose-io-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "General purpose IO related resources of a device",
        "type": "object",
        "required": [],
        "properties": {
            "Button": {
                "type": "integer",
            },
            "Digital Input": {
                "type": "boolean",
            },
            "Digital Output": {
                "type": "boolean",
                "readOnly": True,
            },
            "Analog Input": {
                "type": "number",
            },
            "Analog Output": {
                "type": "number",
                "readOnly": True,
            },
            "Dimmer Input": {
                "type": "integer",
                "minimum": 0,
                "maximum": 100,
            },
        },
    },

    "ipso.pwr": {
        "id": "http://linkio.me/ipso/power-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "Power measurement and control related resources",
        "type": "object",
        "required": [],
        "properties": {
            "Instantaneous Power": {
                "type": "number",
                "readOnly": True,
            },
            "Cumulative Power": {
                "type": "number",
                "readOnly": True,
            },
            "Load Relay": {
                "type": "boolean",
            },
            "Load Dimmer": {
                "type": "integer",
                "minimum": 0,
                "maximum": 100,
            },
        },
    },

    "ipso.motion_sen": {
        "id": "http://linkio.me/ipso/sensors-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "Simple types of sensors",
        "type": "object",
        "required": [],
        "properties": {
            "Motion": {
                "type": "integer",
                "readOnly": True,
            },
            "Motion Status": {
                "type": "boolean",
                "readOnly": True,
            },
        },
    },

    "ipso.contact_sen": {
        "id": "http://linkio.me/ipso/sensors-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "Simple types of sensors",
        "type": "object",
        "required": [],
        "properties": {
            "Contact": {
                "type": "integer",
                "readOnly": True,
            },
            "Contact Status": {
                "type": "boolean",
                "readOnly": True,
            },
        }
    },


    "ipso.temp_sen": {
        "id": "http://linkio.me/ipso/temperature-sensor-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "Temperature sensor",
        "type": "object",
        "required": [],
        "properties": {
            "Temperature": {
                "type": "number",
                "readOnly": True,
            },
        },
    },

    "ipso.lt": {
        "id": "http://linkio.me/ipso/light-control-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "Control a light source, such as a LED or other light",
        "type": "object",
        "required": [],
        "properties": {
            "Light Control": {
                "type": "boolean",
            },
            "Light Dimmer": {
                "type": "integer",
            },
        },
    },

    "ipso.loc": {
        "id": "http://linkio.me/ipso/location-schema#",
        "$schema": "http://json-schema.org/draft-04/schema#",
        "description": "General purpose IO related resources of a device",
        "type": "object",
        "required": [],
        "properties": {
            "GPS Location": {
                "type": "string",
                "readOnly": True,
            },
            "XY Location": {
                "type": "string",
                "readOnly": True,
            },
            "Semantic Location": {
                "type": "string",
                "readOnly": True,
            },
            "Fix": {
                "type": "boolean",
                "readOnly": True,
            },
            "Period": {
                "type": "integer",
                "readOnly": True,
            },
        },
    },
}



