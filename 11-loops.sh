#!/bin/bash
DATE=$(date +f)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

packages=("mysql" "postfix" "mailx" "git" "ansible" "jenkins")

# Iterate through the package list
for package in "${packages[@]}"; do
    # Check if the package is installed
    if ! rpm -q "$package" >/dev/null; then
        # If it's not installed, install it
        sudo yum install "$package" -y &>>$LOGFILE
    else
        echo -e "$Y $package is already installed $Y"
    fi
done

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

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# VALIDATE $? "Installing MySQL"
# VALIDATE $? "Installing Postfix"
# VALIDATE $? "Installing git"
# VALIDATE $? "Installing mailx"
# VALIDATE $? "Installing ansible"
 VALIDATE $? "Installing jenkins"
