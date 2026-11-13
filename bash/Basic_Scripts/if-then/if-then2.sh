#!/bin/bash
# Check if a file exists

clear
if [ -e /home/user/file ] 
then
    echo "File exists"
else
    echo "File does not exist"
fi 