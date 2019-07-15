#!/bi/bash
#3h

. /etc/rc.d/init.d/functions

for i in 192.168.0.{1..254}
do
{
 ping -c 2 -w 2 ${i} &> /dev/null
if [ $? -eq 0 ]
then
echo "$i" is up
else
echo "$i" is down >> /tmp/ip_down.txt
fi
}&
done
