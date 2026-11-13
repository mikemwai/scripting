#!/bin/bash
# Check if a variable value is met

a=`date | awk '{print $1}'`

if [ "$a" == Mon ] 
then
    echo Today is $a
else
    echo Today is not Monday
fi 