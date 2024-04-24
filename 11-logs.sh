#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "ERROR:: $2 ... $R  failed $N"
        exit 1
    else
    echo "$2 ... $G success $N"
    fi

}

if [ $ID -ne 0]
then 
   echo " $R ERROR:: please run this script with root access"
   exit 1 #you can give otherthan 0
else 
   echo "you are root user"
fi
 
 yum install mysql -y &>> $LOGFILE

VALIDATE $ "Inatlling MySql"

yum install git -y &>> $LOGFILE

VALIDATE $question mark "Installing GIT"