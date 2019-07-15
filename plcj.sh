#!/bin/bash
#3h

. /etc/rc.d/init.d/functions

[ -d /home/oldboy ] || mkdir /home/oldboy
cd /home/oldboy

for i in {1..10}
do
  filename=$(uuidgen|tr '0-9' 'a-z' | cut -c 1-10)
  touch ${filename}_oldboy.html
done
