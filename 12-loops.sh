USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run your script with root access"
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
    echo "$i the package is not installed so lets install it"
    yum install $i -y
    VALIDATE $? "$i"
else
    echo "$i the package is already installed"
fi
done





