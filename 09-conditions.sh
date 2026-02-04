#! /bin/bash

######## Installation script#########
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
echo  "please run this scipt as root user"
exit 1
fi
Installing nginx 
dnf install nginx -y
if [$? -ne 0];then
echo "nginx installation is failure"
exit 1
else
echo "nginx installation is successful"
fi
installing Mysqlserver
dnf install mysql-server -y
if [$? -ne 0]; then
echo "my sal-server installation is failure"
exit 1
else
echo "mysql server installlation is sucessful"
fi
installling nodesjs
dnf install nodejs -y
if [$? -ne 0];  then
echo " node js installation is failure"
exit 1
else 
echo "node js installation is successful"
fi
