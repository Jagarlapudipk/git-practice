#!/bin/bash

USERID=$(id -u)
#echo "userid is: $USERID"

if [ $USERID -ne 0 ]
then    
    echo "please run this script with root preveleges"
    exit 1
fi

dnf list installed git 

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success"
        exit 1
    else
        echo "Git installation is success"
    fi

elase
    echo "Git is already installed"

fi

dnf list installed mysql

if [ $? -ne 0 ]
then  
    echo "MYSQL is not installed...going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "MYSQL installation is failure..please check"
        exit 1
    else
        echo "MYSQL installation is success"
    fi
else 
    echo "MYSQL is already installed"
fi


