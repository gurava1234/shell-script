#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ] # ! denotes opposite

then 
    echo -e "$R source directory: $file does not exist. $N"

fi

while IFS=":" read -r username passwd user_id group_id user_full name home_dir shell_path
do
  echo "username: $username"
  echo "user ID: $user_id"
  echo "user full name: $user_fullname
done < $file
