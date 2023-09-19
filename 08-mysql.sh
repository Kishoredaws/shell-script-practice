# Installation of mysql into Centos
#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
echo "ERROR: Please run your script with root user"
exit 1
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
echo "ERROR: Installation of Mysql is error"
exit 1
else
echo "Installation of Mysql is Success"
fi 

yum install postfix -y 

if [ $? -ne 0 ]
then
echo "ERROR: installation of postfix is error"
exit 1
else
echo "the installation of postfix is SUCCESS"
fi 