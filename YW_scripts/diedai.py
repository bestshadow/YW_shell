#!/bin/python
#coding=UTF-8
#for 循环内部机制
#h3
'''
l= [1,2,3,4,5]
diedai_l = l.__iter__()
while True:
    try:
        print(diedai_l.__next__())
    except StopIteration:
        print('迭代完毕了，循环终止了')
        break
'''
'''
import time
def test():
    print('开始生孩子了。。。。。')
    print('开始生孩子了。。。。。')
    print('开始生孩子了。。。。。')
    
    yield "我" 
   
    time.sleep(3)
    print('开始生儿子啦')
    yield "儿子"
    
    time.sleep(3)
    print('开始生孙子了')
    yield "孙子"

a = test()
print(a.__next__())
print(a.__next__())
print(a.__next__())

'''
def xiadan():
    for i in range(1000):
        yield'鸡蛋 %s' %i
def people():
    for i in range(1000):
        yield'h %s' %i

alex_lmj=xiadan()
alex_people=people()
ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)

ren=alex_people.__next__()
jidan=alex_lmj.__next__()
print(ren ,"取鸡蛋",jidan)
