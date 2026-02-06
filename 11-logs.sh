#! /bin/bash

USERID=$(id -u)
LOGSFOLDER="/var/log/shell-scriptlogs"
LOGS_FILE="$LOGSFOLDER/$0.log"
if [ $USERID -ne 0 ]; then
echo "please run with the root user "
exit 1 
fi
mkdir -p $LOGSFOLDER

VALIDATE(){
  if [ $1 -ne 0 ]; then
echo "$2 installation is failure"
exit 1
else
echo "$2 installation is successful"
fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "installing Nginx"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "installing nodejs"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "installing mysql"

