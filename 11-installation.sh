#!/bin/bash

USERID=$(id -u)
#echo "userid is: $USERID"

if [ $USERID -ne 0 ]
then    
    echo "please run this script with root preveleges"
    exit 1
fi

dnf list install git 

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it"
    dnf install git -y

elase
    echo "Git is already installed"

fi





