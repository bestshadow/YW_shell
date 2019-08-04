#!/bin/python
#coding=UTF-8

#h3

def get_population():
    with open('people.txt','r',encoding='utf-8') as f:
        for i in f:
            yield i

g=get_population()
#print(g.__next__())


#p1=eval(g.__next__())
#print(p1['population'])

res=0
for p in g:
    p_people=eval(p)
    print(p_people['population'])
    res+=int(p_people['population'])
print(res)

rsa=sum(eval(p1)['population'] for p1 in g)
print (rsa)

#all_people=sum(eval(p1)['population'] for p1 in g)
#print(all_people)
