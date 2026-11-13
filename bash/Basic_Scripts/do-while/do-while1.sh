#!/bin/bash
# Simple do while script that runs for a number of seconds

count=0
num=10
while [ $count -lt 10 ] # Less than 10
do
echo $num seconds left to stop this process $1 # $1 represents the process name/ ID
sleep 1
num=`expr $num - 1`
count=`expr $count + 1`
done
echo
echo $1 process has stopped!!!
echo
