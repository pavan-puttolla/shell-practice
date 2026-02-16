#! /bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shellsriptforlooppkg_logs"
LOGS_FILE=/var/log/shellsriptforlooppkg_logs/$0.log
if [ $USERID -ne 0 ]; then
echo "please run with root access" |tee -a $LOGS_FILE 
exit 1
fi
mkdir  -p $LOGS_FOLDER
VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 -----installation is failure" | tee -a $LOGS_FILE
    exit 1
    else 
    echo "$2 ....installation is sucess" | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo 14-forlooppkginstall.sh nginx mysql nodejs
do
dnf list installed $package -y &>> $LOGS_FILE
echo "checking $package is already installed or not" | tee -a $LOGS_FILE
if [ $? -ne 0 ]; then
VALIDATE $? "Installing $package"
else
echo "$package is already installed,skipping " | tee -a $LOGS_FILE
fi      
done    