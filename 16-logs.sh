#!/bin/bash

USERID=$(id  -u)
R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-practice"
PRACTICE_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "practice started executed at: $(date)"

if [ $USERID -ne 0 ]; then
   echo "Error:: please run this script with root priviledge"
   exit 1 # failure is other than 
   fi

   VALIDATE(){
  if [ "$1" -ne 0 ]; then
    echo -e "Installing $2 ... $R failure $N" | tee -a $LOG_FILE
    exit 1
  else
    echo -e "Installing $2 ... $G success $N" | tee -a $LOG_FILE
  fi
}

dnf list installed mysql-server &>>$LOG_FILE
if [ $? -ne 0 ]; then
  dnf install mysql-server -y &>>$LOG_FILE
  VALIDATE $? "Mysql"
else
  echo -e "Mysql already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi
