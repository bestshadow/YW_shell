#!/bin/bash
#h3

. /etc/rc.d/init.d/functions

for i in oldboy_0{1..10}
do
useradd ${i} &> /dev/null
if [ $? -eq 0 ] 
then
echo $(uuidgen|tr '0-9' 'a-z'|cut -c 1-8) || passwd --stdin $i >>/dev/null
echo $i $(uuidgen|tr '0-9' 'a-z'|cut -c 1-8) >> /opt/pass.txt
fi
done
