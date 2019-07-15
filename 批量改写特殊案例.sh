#!/bin/bash
#h3

dir=/root/3h
cd $dir 

for i in $(ls *html)
 do 
    newstr=$(echo $i|cut -c 1-10)
    mv $i ${newstr}_oldgirl.HTML   
 done
