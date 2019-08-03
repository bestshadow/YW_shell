#!/bin/python
#coding=UTF-8

import io
import os

#l=[1,2,3,4,5]
#print(map(str,l))

name = ['alex_sb','3h']
rsa=filter(lambda x :not x.endswith('sb'),name) ##生成器函数
print (rsa.__next__())

#f=open('/root/test.txt','w',encoding='utf-8')
#f.write('1111\n')
#f.write('1111\n')
#f.write('1111\n')

#f.close()

f = open("/root/test.txt","r+")
f.write('h1h1h1h\n')
f.write('3h是最棒的\n')
f.write('你好\n')

#line = f.readline()
#print (line)

#for i in f:
#    print(i,end='')


f.close()



