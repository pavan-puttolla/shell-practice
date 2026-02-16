#! /bin/bash
R="\e[31m" # Red color
G="\e[32m" # Green color
Y="\e[33m" # Yellow color
B="\e[34m" # Blue color
N="\e[0m"  # No color (reset)

USERID=$(id -u)
LOGS_FOLDER="/var/log/shellsriptforlooppkg_logs"
LOGS_FILE=/var/log/shellsriptforlooppkg_logs/$0.log
if [ $USERID -ne 0 ]; then
echo -e "$R please run with root access $N" | tee -a $LOGS_FILE 
exit 1
fi
mkdir  -p $LOGS_FOLDER
VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "$2 -----installation is $R failure $N" | tee -a $LOGS_FILE
    exit 1
    else 
    echo -e "$2 ....installation is $G success $N" | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo 14-forlooppkginstall.sh nginx mysql nodejs
do
    dnf list installed $package  &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed,installing now" | tee -a $LOGS_FILE
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? " $package installation"
else
echo -e "$Y $package is already installed,skipping $N" | tee -a $LOGS_FILE
fi      
done    