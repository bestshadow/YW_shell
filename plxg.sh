#!/bin/bash
#h3

. /etc/rc.d/init.d/functions

cd /opt/oldboy/

for i in {1..10}
do
 filename=$(ls *.html|cut -c 1-10)
 touch ${filename}_oldgirl.HTML
done
