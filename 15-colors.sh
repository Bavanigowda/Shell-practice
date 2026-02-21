#!/bin/bash

USERID=$(id  -u)
R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
   echo "Error:: please run this script with root priviledge"
   exit 1 # failure is other than 
   fi

VALIDATE(){  # functions received inputs through args like shell scripting
   dnf install mysql -y

   if [ $1 -ne 0 ]; then
      echo -e "Installing $2 ... $R failure $N"
      exit 1 # failure is other than 
    else 
      echo -e "Installing $2 ... $G success $N"
      exit 1 # failure is other than 
    fi
}

dnf list installed mysql
#install if it is not found
if [ $1 -ne 0 ]; then
    dnf insatll mysql -y
    VALIDATE $? "Mysql"
else
echo "Mysql already exist ... $y SKIPPING $N"
fi

dnf list installed mysql
#install if it is not found
if [ $1 -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
echo "Nginix already exist ... $G SKIPPING $N"
fi

