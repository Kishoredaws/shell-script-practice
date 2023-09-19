#!/bin/bash

USER_ID=$(id -u)

VALIDATE() {
if [ $1 -ne 0 ]
then 
echo " $2 Failure"
exit 1
else
echo "$2 Success"
fi 

}
if [ $USER_ID -ne 0 ]
then
echo "ERROR: Please run your script with root user"
exit 1
fi

yum install mysql -y
VALIDATE $? "Installing Mysql"
yum install postfix -y 
VALIDATE $? "Installaing Postfix"

