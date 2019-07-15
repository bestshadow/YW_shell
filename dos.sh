#!/bin/bash
#h3

ip=`lastb | grep -o '192.168.0.*' | cut -c 1-13 | grep -v "192.168.0.200"`
for i in ${ip}
do
if [ "$i" = "192.168.0.116" ]
then
echo ok > /dev/null
else
iptables -I INPUT -s ${i} -j DROP
#echo ${i}
fi
done
