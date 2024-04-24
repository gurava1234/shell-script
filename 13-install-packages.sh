#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
   echo -e " $R ERROR:: please run this script with root access"
   exit 1 #you can give otherthan 0
else 
   echo "you are root user"
fi

echo "all arguments passed: $@"