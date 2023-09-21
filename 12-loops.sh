# To install multiple packages with single script
#step1: user should have root access
#step2: While installing store the logs
#step3: Implement clors for user experience
#step4: Before installing of package it always to check the package installed or not
#step5: If installed skip otherwise poceed for installations
#step6: finally Check if the packages installed successfully or not?

R="\e[31m"
N="\e[0m"
G="\e[32m"
Y="\e[33m"
DATE=(date +%F)
SCRIPT_NAME=$0
LOGFILE=/home/centos/shellscript-logs/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)
if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR: please run script with root access $N"
    exit 1
fi

for i in $@
do
yum install $i -y &>>$LOGFILE
done

