#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root user"
        exit 1
    fi
}

VALIDATE(){
    if [ $! -ne 0 ]
    then
        echo -e "$2 is ...$R FAILED $N"
        exit 1
    else
        echo -e "$2 is ...$G SUCCESS $N"
    fi
}
