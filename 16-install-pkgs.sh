#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 installation is FAILURE"
    else
        echo "$2 installation is SUCCESS"
    fi
}

for i in $@
do
yum list installed $i
if [ $? -ne 0 ]
then
    echo "The $i is not installed, so lets install it"
    yum install $i -y
    VALIDATE $? "$i"
    exit 1
else
    echo "The $i is already installed"
fi
done

