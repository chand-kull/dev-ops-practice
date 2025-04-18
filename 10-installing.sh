#!/bin/bash

USERID=$(id -u )    

if [ $USERID -ne 0]
then
    echo " please run this script with root access."
    exit 1 
else
    echo "you are super user."
fi

dnf install mysql -y 

if [ $? -ne 0 ]
then 
    echo "installation of mysqll...FALURE"
    exit 1
fi  
 
 dnf install maven -y
if [ $? -ne 0 ]
then 
    echo "installation of maven...FALURE"
    exit 1
fi


dnf install git -y
if [ $? -ne 0 ]
then 
    echo "installation of git...FALURE"
    exit 1
fi
 echo "is script procceding?"
