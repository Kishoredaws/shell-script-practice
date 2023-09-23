#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run the script with root access"
exit 1
fi

VALIDATE(){

if [ $1 -ne 0 ]
then
    echo "Installing $2 FAILURE "
    exit 1
else
    echo "Installing $2 SUCCESS"
}

for i in $@
do
yum list installed $i
if [ $? -ne 0 ]
then
    echo "$i is not installed, lets install it"
    yum install $i -y
    VALIDATE $? "$i"
else
    echo "$i is already installed"
fi
done

