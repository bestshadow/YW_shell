#!/bin/bash
#h3
. /etc/rc.d/init.d/functions
for i in oldboy{1..10}
do
  userdel $i &> /dev/null
  if [ $? -eq 0 ]
    then
    action "$i" /bin/true
    echo $(uuidgen|tr '0-9' 'a-z'|cut -c 1-10)|passwd --stdin $i >>/opt/1.txt
#    echo $i $(uuidgen|tr '0-9' 'a-z'|cut -c 1-10) >> /tmp/passwd.txt
  else
    action "$i" /bin/false
  fi 
done
