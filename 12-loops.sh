
R="\e[31m"
N="\e[0m

USERID=$(id -u)
if [ $USERID -ne 0 ];
then    
    echo -e " $R ERROR:: please run this script with root access $N "
    exit 1
fi 

for i in $@
do
yum install $i -y 
done
