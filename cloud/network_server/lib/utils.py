#!/usr/bin/env python
# coding=utf-8
#
import linecache
import sys
import logging

def PrintException():
    exc_type, exc_obj, tb = sys.exc_info()
    f = tb.tb_frame
    lineno = tb.tb_lineno
    filename = f.f_code.co_filename
    linecache.checkcache(filename)
    line = linecache.getline(filename, lineno, f.f_globals)
    logging.info('EXCEPTION IN ({}, LINE {} "{}"): {}'.format(filename, lineno, line.strip(), exc_obj))

def merge(old, new, path = None):
    """merges new into old"""
    if path is None: path = []
    for key in new:
        if key in old:
            if isinstance(old[key], dict) and isinstance(new[key], dict):
                merge(old[key], new[key], path + [str(key)])
            elif old[key] == new[key]:
                pass # same leaf value
            else:
                old[key] = new[key]
        else:
            old[key] = new[key]
    return old

def number2buf(val,length):
    returnVal  = []
    for i in range(length,0,-1):
        returnVal += [val>>(8*(i-1))&0xff]
    return returnVal


def formatBuf(buf):
    return '({0} bytes) {1}'.format(
                len(buf),
                '-'.join(['%02x'%b for b in buf])
           )
