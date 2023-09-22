#!/bin/bash
APP_LOGS_DIR=/home/centos/app-logs
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGDIR=/home/centos/shellscript-logs
LOGFILE=$LOGDIR-$SCRIPT_NAME-$DATE.log

DELETE_OLD_FILES=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)
echo "script started executing at $DATE" &>>$LOGFILE



