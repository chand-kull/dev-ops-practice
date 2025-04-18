#!/bin/bash

USERID=$(id -u)    

if [ $USERID -ne 0 ]
then
    echo " please run this script with root access."
    exit 1 
else
    echo "you are super user."
fi

dnf install mysql -y 

if [ $? -ne 0 ]
then 
    echo "installation of mysql...FALURE"
    exit 1
else
    echo "installation of mysql...SUCCESS"
fi  
 
 dnf install mmaven -y
if [ $? -ne 0 ]
then 
    echo "installation of maven...FALURE"
    exit 1
else
    echo "installation of maven...SUCCESS"
fi


dnf install git -y
if [ $? -ne 0 ]
then 
    echo "installation of git...FALURE"
    exit 1
else
    echo "installation of git...SUCCESS"
fi

 echo "is script procceding?"
