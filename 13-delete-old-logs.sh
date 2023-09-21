#!/bin/bash
LOG_FILES_DIR=/home/centos/app-logs
DATE=$(date -u)
SCRIPT_NAME=$0
LOGFILE=$LOG_FILES_DIR-$SCRIPT_NAME-$DATE.log

DELETE_OLD_FILES=$(find $LOG_FILES_DIR -name "*.log" -type f -mtime +14)



