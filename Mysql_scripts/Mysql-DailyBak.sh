#!/bin/bash
# Program
# use cp to backup mysql data everyday!
# History
# Path
BakDir=/home/bak/mysql/backup/daily               #增量备份时复制mysql-bin.00000*的目标目录，提前手动创建这个目录
BinDir=/var/log/mysql                             #mysql的数据目录
LogFile=/home/bak/mysql/backup/bak.log
BinFile=/var/log/mysql/mysql-bin.index            #mysql的index文件路径，放在数据目录下的
#/usr/local/mysql/bin/mysqladmin -uroot -p123456 flush-logs
#mysqladmin -uroot -proot123 flush-logs
#这个是用于产生新的mysql-bin.00000*文件
Counter=`wc -l $BinFile |awk '{print $1}'`
NextNum=0
#这个for循环用于比对$Counter,$NextNum这两个值来确定文件是不是存在或最新的
for file in `cat $BinFile`
do
    base=`basename $file`
    #basename用于截取mysql-bin.00000*文件名，去掉./mysql-bin.000005前面的./
    NextNum=`expr $NextNum + 1`
    if [ $NextNum -eq $Counter ]
    then
        echo $base skip! >> $LogFile
    else
        dest=$BakDir/$base
        if (test -e $dest)
        #test -e用于检测目标文件是否存在，存在就写exist!到$LogFile去
        then
            echo $base exist! >> $LogFile
        else
            cp $BinDir/$base $BakDir
            echo $base copying >> $LogFile
        fi
     fi
done
echo `date +"%Y年%m月%d日 %H:%M:%S"` $NextNum Bakup succ! >> $LogFile
