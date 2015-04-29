import logging

import defines   as d

'''
    0                   1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |Ver| T | Code  |    Session ID |          Message ID           |
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |      Device id[0]
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |      Device id[1]
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    |      method   |    parameters(json)
    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    
'''

def buildMessage(msgtype, code, session_id, message_id, device_id, method, parameters={}):
    assert msgtype in d.TYPE_ALL
    assert code in d.CODE_ALL
    
    message = ''
    
    # header
    message += [d.VERSION<<6 | msgtype<<4 | code&0x0f]
    message += [code]
    message += u.int2buf(messageId,2)
    message += u.int2buf(token,TKL)
    
    # options
    options  = sortOptions(options)
    lastOptionNum = 0
    for option in options:
        assert option.optionNumber>=lastOptionNum
        message += option.toBytes(lastOptionNum)
        lastOptionNum = option.optionNumber
    
    # payload
    if payload:
        message += [d.COAP_PAYLOAD_MARKER]
        message += payload
    
    return message

def parseMessage(message):
    
    returnVal = {}
    
    # header
    if len(message)<4:
        raise e.messageFormatError('message to short, {0} bytes: not space for header'.format(len(message)))
    returnVal['version']     = (message[0]>>6)&0x03
    if returnVal['version']!=d.COAP_VERSION:
        raise e.messageFormatError('invalid CoAP version {0}'.format(returnVal['version']))
    returnVal['type']        = (message[0]>>4)&0x03
    if returnVal['type'] not in d.TYPE_ALL:
        raise e.messageFormatError('invalid message type {0}'.format(returnVal['type']))
    TKL  = message[0]&0x0f
    if TKL>8:
        raise e.messageFormatError('TKL too large {0}'.format(TKL))
    returnVal['code']        = message[1]
    returnVal['messageId']   = u.buf2int(message[2:4])
    message = message[4:]
    
    # token
    if len(message)<TKL:
        raise e.messageFormatError('message to short, {0} bytes: not space for token'.format(len(message)))
    returnVal['token']       = u.buf2int(message[:TKL])
    message = message[TKL:]
    
    # options
    returnVal['options']     = []
    currentOptionNumber      = 0
    while True:
        (option,message)     = o.parseOption(message,currentOptionNumber)
        if not option:
            break
        returnVal['options']+= [option]
        currentOptionNumber  = option.optionNumber
    
    # payload
    returnVal['payload']     = message
    
    log.debug('parsed message: {0}'.format(returnVal))
    
    return returnVal
