#!/bin/python
#coding=UTF-8

#h3

l1 = ['A','B','C','a','v','c','1','2','3']
daxie=[]
xiaoxie=[]
shuzi=[]
for i in l1:
    if i.isupper():
        daxie.append(i)
    if i.islower():
        xiaoxie.append(i)
    if i.isdigit():
        shuzi.append(i)

print ("daxie=%s" %daxie)
print ("xiaoxie=%s" %xiaoxie)
print ("shuzi=%s" %shuzi)

l1=['alex',22,33,44,55]
l2=["is",22,33,44,55]
l3=["good",22,333,44,55] 
l4=["guy",22,33,44,55]
print("_".join(list(zip(l1,l2,l3,l4))[0]))

