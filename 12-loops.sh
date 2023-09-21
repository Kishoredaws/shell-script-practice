# To install multiple packages with single script
#step1: user should have root access
#step2: While installing store the logs
#step3: Implement colors for user experience
#step4: Before installing of package it always to check the package installed or not
#step5: If installed skip otherwise poceed for installations
#step6: finally Check if the packages installed successfully or not?

# R="\e[31m"
# N="\e[0m"
# G="\e[32m"
# Y="\e[33m"

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGDIR=/home/centos/shellscript-logs
LOGFILE=$LOGDIR/$SCRIPT_NAME-$DATE.log

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run the scrip with root access"
exit 1
fi

VALIDATE(){
    if [$1 -ne 0 ]
    then
        echo "$2 The installation is Failure"
    else
        echo "$2 the installation is Success"
    fi 
}

for i in $@
do
yum installed list $i >>&LOGFILE
if [ $? -ne 0 ]
then 
    echo "$i is not installed lets install it"
    yum install $i -y
    VALODATE $? "$i"
else
    echo "$i is already installed"


done
