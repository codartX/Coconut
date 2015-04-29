import logging

#===== converting

def int2buf(val,length):
    returnVal  = []
    for i in range(length,0,-1):
        returnVal += [val>>(8*(i-1))&0xff]
    return returnVal

def buf2int(buf):
    returnVal  = 0
    for i in range(len(buf)):
        returnVal += buf[i]<<(8*(len(buf)-1-i))
    return returnVal
