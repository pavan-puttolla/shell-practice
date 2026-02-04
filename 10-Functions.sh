#! /bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
echo "please run with the root user "
exit 1 
fi
VALIDATE(){
  if [ $1 -ne 0 ]; then
echo "$2 installation is failure"
exit 1
else
echo "$2 installation is successful"
fi
}
dnf install nginx -y
VALIDATE $? "installing Nginx"

dnf install nodejs -y
VALIDATE $? "installing nodejs"

dnf install mysql -y
VALIDATE $? "installing mysql"
fi
