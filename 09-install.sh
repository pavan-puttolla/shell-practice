#! /bin/bash

######## Installation script#########
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
echo  "please run this scipt as root user"
exit 1
fi
echo "Installing nginx "
dnf install nginx -y
if [$? -ne 0]; then
echo "nginx installation is failure"
exit 1
else
echo "nginx installation is successful"
fi

dnf install mysql -y
if [$? -ne 0]; then
echo "my Sql-server installation is failure"
exit 1
else
echo "mysql server installlation is sucessful"
fi

dnf install nodejs -y
if [$? -ne 0];  then
echo " node js installation is failure"
exit 1
else 
echo "node js installation is successful"
fi
