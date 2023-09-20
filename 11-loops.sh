#!/bin/bash
DATE=$(date +f)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

for i in $@
do
    yum install $i -y &>>$LOGFILE
done
