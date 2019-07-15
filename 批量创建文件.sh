#!/bin/bash
#h3

[ -d /root/3h ] || mkdir /root/3h
cd /root/3h

for i in {1..10}
 do 
   filename=$(uuidgen|tr '0-9' 'a-z'|cut -c 1-10)
   touch ${filename}_h3.html
done
