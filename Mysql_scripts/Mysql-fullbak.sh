#!/bin/bash
# Program
# use mysqldump to Fully backup mysql data per week!
# History
# Path
BakDir=/home/bak/mysql/backup  #这个目标是专门建来存放备份好的二进制文件的
LogFile=/home/bak/mysql/backup/bak.log #这个日志是存放备份情况的，避免漏备或者备份问题
Date=`date +%Y%m%d` #日期
Begin=`date +"%Y年%m月%d日 %H:%M:%S"` #从多久开始的
cd $BakDir #先到这个目标
DumpFile=$Date.sql #设定备份名称格式
GZDumpFile=$Date.sql.tgz #备份压缩文件格式
mysqldump -uroot -p12345678 --quick --events --all-databases --flush-logs --single-transaction > $DumpFile #备份过程
#--delete-master-logs
tar -zvcf $GZDumpFile $DumpFile  #把sql文件打包成.sql.tgz
rm $DumpFile #删除备份的sql文件，留下压缩文件
Last=`date +"%Y年%m月%d日 %H:%M:%S"` #记录时间，并写入日志
echo 开始:$Begin 结束:$Last $GZDumpFile succ >> $LogFile
#cd $BakDir/daily
#rm -f *
