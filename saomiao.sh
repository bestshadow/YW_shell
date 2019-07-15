#!/bin/bash
#h3

. /etc/rc.d/init.d/functions

for i in 192.168.0.{1..254}
do
{
ping -c 2 -w 2 $i &> /dev/null
if [ $? -eq 0 ]
then
echo "$i" is ok!
else
echo "$i" is down >> /tmp/ip_down.txt
fi
}&
done

###判断结果
if [ $? -eq 0 ]
then
action 运行成功 /bin/true
else
action 运行失败 /bin/false
fi

