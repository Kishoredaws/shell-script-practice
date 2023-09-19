#!/bin/bash

USER_ID=$(id -u)

VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
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
VALIDATE $? "Installing Postfix"

