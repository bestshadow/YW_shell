#!/bin/python
#coding=UTF-8

#h3
'''
def get_population():
    with open('/root/YW_scripts/test.txt','r',encoding='utf-8') as f:
        for i in f:
            yield i

g=get_population()
print(g.__next__())

'''

def xiadan():
    for i in range(1000):
        yield'鸡蛋 %s' %i

alex_lmj=xiadan()
jidan=alex_lmj.__next__()
print(jidan)
jidan=alex_lmj.__next__()
print(jidan)
jidan=alex_lmj.__next__()
print(jidan)
