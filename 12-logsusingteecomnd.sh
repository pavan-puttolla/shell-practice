#! /bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shellsript_logs"
LOGS_FILE=/var/log/shellsript_logs/$0.log
if [ $USERID -ne 0 ]; then
echo " please run with root access " |tee -a $LOGS_FILE 
exit1
fi
mkdir  -p $LOGS_FOLDER
VALIDATE(){
    if [$1 -ne 0]; then 
    echo "$2 -----installation is failure" |tee -a $LOGS_FILE
    exit 1
    else  "$2 ....installation is sucess" |tee -a $LOGS_FILE
    fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "installing Nginx"
dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "installing MYSQL"
dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "installing nodejs"