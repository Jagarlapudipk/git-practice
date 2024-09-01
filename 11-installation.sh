#!/bin/bash

USERID=$(id -u)
#echo "userid is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " Command is ...FAILED"
        exit 1
    else
        echo "$2 is ...Success"
    fi
}

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
    VALIDATE $? "Installing Git"
    
    elase
    echo "Git is already installed"

fi

dnf list installed mysql

if [ $? -ne 0 ]
then  
    echo "MYSQL is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MYSQL"
else 
    echo "MYSQL is already installed"
fi


