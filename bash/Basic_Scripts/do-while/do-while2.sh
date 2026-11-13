#!/bin/bash
# Script to run for a number of times

num=2
while [ $num -le 5 ]
do
echo Do a push up for $num times
((num++))
done

