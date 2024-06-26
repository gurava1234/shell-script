#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>
    echo "options::"
    echo " -n, specify the name (mandatory)"
    echo " -w, specify the wishes. ex, good morning"
    echo " -h, disaply help and exit"
}

while getopts ":n:w:h" opt; do
     case $opt in 
        n) NAME"$OPTARG";;
        w) WISHES="$OPTARG";;
        \? echo "invalid options: -"$OPTARG" >&2; USAGE; EXIT;;
        :) USAGE; exit;;
        h|*) USAGE; exit;;
    esac
done

if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
   echo "ERROR: Both -n and -w are mandatory options."
   USAGE
   exit 1
fi

echo "Hello $NAME. $wishes. I have been learning shell script."




