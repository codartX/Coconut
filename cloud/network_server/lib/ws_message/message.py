import logging
import msg_define as d
import utils as u

"""
    Message format:
    0                   1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |Ver|    Type   |    Method     |          Message ID           |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |      Device id[0]                                             |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |      Device id[1]                                             |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |      Parameters(json)                                         |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    
    Ver: messgae format version
    Type: message type, Request(0)/Response(1)
    Message ID: message id in specific session
    Device ID: device mac address, etc  //it could only be existed in gateway<->server message define, device to device don't need.
    Method:<new_device(0)/get_resources(1)/set_resources(2)/report(3)/upgrade(4)/reload(5)/message(6)/
            device_auth(7)/set_policy(8)/get_policy(9)/unset_policy(10)/subscribe(11)/unsubscribe(12)>
    Parameters: parameters for method
    
"""

"""
new_device:

Direction: device/gw-->cloud

Request:
parameters:
[
    <device_name>,
    [
        [
            <obj_id>, 
            <obj_name>, 
            [
                [<res_id>, <res_name>, <value>],
                [<res_id>, <res_name>, <value>],
                ...
            ]
        ],
        ...
    ],
    <timestamp>
]

Response:
parameters:
    [<retcode>,<msg_str>]

"""

"""
info:

Direction: device/gw-->cloud

Request:
parameters:
[
    [
        [
            <obj>,
            [
                [
                    <resource>,
                    <value>
                ],
                ...
            ]
        ],
        ...
    ],
    <timestamp>
]

Response:
parameters:
    [<retcode>,<msg_str>]

"""

"""
get_info:

Direction: device/gw<-->cloud

Request:
parameters:
[
    [
        <obj>, 
        [
            <resource>,
            ...
        ]
    ],
    ...
]
or
NULL(means all info),


Response:
parameters:
[
    [
        [
            <obj>,
            [
                [
                    <resource>,
                    <value>
                ],
                ...
            ]
        ],
        ...
    ],
    <timestamp>
]
"""

"""
config:

Direction: cloud-->device/gw

Request:
parameters:
[
    [
        <obj>, 
        [
            [
                <resource>, 
                <value>
            ],
            ...
        ]
    ],
    ...
]

Response:
parameters:
    [<retcode>,<msg_str>,<timestamp>]


"""

"""
upgrade:

Direction: cloud-->device/gw

Request:
parameters:

Response:
parameters:
"""

"""
reload:

Direction: cloud-->device/gw

Request:
parameters:
NULL

Response:
    [<retcode>,<msg_str>]
"""

"""
message:

Direction: device/gw-->cloud

Request:
parameters:
    [<msg_level>, <msg_str>, <timestamp>]

Response:
parameters:
    [<retcode>,<msg_str>]
"""

"""
device_auth:

Direction: device/gw-->cloud

Request:
parameters:
{
    "key":<key>
}

Response:
parameters:
    [<retcode>,<msg_str>]
"""

"""
set policy:
    
Direction: cloud-->device/gw
    
Request:
parameters:
[
    #policy
    [
        <id>,
        [
            #conditions
            [
                [0(type 0), <device id>, <obj>,<res>,<op>,<value>],
                [1(type 1), <exp_time>],
                [2(type 2), <interval>]
            ]
            ...
        ],
        [
            #actions
            [
                [0(type 0), <obj>, <res>, <op>, <value>],
                [1(type 1), <level>, <msg>]
            ],
            ...
        ]
    ],
    ...
]

Response:
parameters:
    [<retcode>,<msg_str>]

"""

"""
get policy:
    
Direction: device/gw<-->cloud
    
Request:
parameters:
    [<id>, ...](optional)
    
Response:
parameters:
    [policy list]
"""

"""
unset policy:
    
Direction: cloud-->device/gw
    
Request:
parameters:
    [<id>, ...]
    
Response:
parameters:
    [<retcode>,<msg_str>]
"""

"""
subscribe:
    
Direction: cloud/device-->device
    
Request:
parameters:
[
    [
        <obj>,
        [
            <res>,
            [
                [0(type 0), <op>, <value>],
                [1(type 1), <exp_time>],
                [2(type 2), <interval>]
            ]
        ]
    ],
    ...
]

Response:
parameters:
    [<retcode>,<msg_str>]
"""

def build_message(msgtype, session_id ,message_id, device_id, method, parameters = []):
    assert msgtype in d.TYPE_ALL
    assert method in d.METHOD_ALL
    
    message   = []
    
    # header
    message += [d.VERSION<<6 | msgtype]
    message += [session_id]
    message += u.int2buf(message_id,2)
    message += device_id
    message += [method]
    if parameters:
        message += parameters
    
    return message

def parse_message(message):
    
    returnVal = {}
    
    # header
    if len(message) < 13:
        raise e.messageFormatError('message to short, {0} bytes: not space for header'.format(len(message)))
    
    returnVal['version'] = (message[0]>>6)&0x03
    if returnVal['version'] != d.VERSION:
        raise e.messageFormatError('invalid version {0}'.format(returnVal['version']))
    
    returnVal['msg_type'] = message[0]&0x3f
    if returnVal['type'] not in d.TYPE_ALL:
        raise e.messageFormatError('invalid message type {0}'.format(returnVal['type']))
    
    returnVal['session_id'] = message[1]

    returnVal['message_id'] = u.buf2int(message[2:4])

    returnVal['device_id'] = message[5:12]

    returnVal['method'] = message[13]

    if len(message) > 13
        returnVal['parameters'] = message[14:]
    else:
        returnVal['parameters'] = []
    
    log.debug('parsed message: {0}'.format(returnVal))
    
    return returnVal
