#!/bin/python
#coding=UTF-8

#h3

import time
import os
"""
def producer():
    ret=[]
    for i in range(10000):
        ret.append('包子%s' %i)
    return ret

def consumer(res):
    for index,baozi in enumerate(res):
        print('第%s个人，吃了%s' %(index,baozi))

res=producer()
consumer(res)
"""


##生产者消费者模型

def  consumer(name): 
    print('我是[%s],我准备开始吃包子了' %name)
    while True:
        baozi=yield
        time.sleep(1)
        print('%s 很开心的把【%s】吃掉了' %(name,baozi))

def producer():   
    c1=consumer('何林清')
    c2=consumer('付德祥')
    c1.__next__()
    c2.__next__()
    for i in range(10):
        time.sleep(1)
        c1.send('包子 %s' %i)
        c2.send('包子 %s' %i) 

producer()
