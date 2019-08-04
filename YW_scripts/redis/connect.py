#!/bin/python
#coding=UTF-8

#h3

import redis

r = redis.Redis(host='192.168.0.160',port=6379)
while True:
    print('Redis database connect is successfully!!!')
    r.set('foo','Bar')
    print(r.get('foo'))
    break












input('输入任意键退出')

