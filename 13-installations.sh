#!/bin/bash

USERID=$(id  -u)

if [ $USERID -ne 0 ]; then
   echo "Error:: please run this script with root priviledge"
   fi

   dnf install mysql -y

   if [ $? -ne 0 ]; then
      echo "Error:: Installing MySQl is failure"
    else 
      echo "installing mysql is success"
    fi
    