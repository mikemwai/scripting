#!/bin/bash
# Check the variable

count=100
if [ $count -eq 100 ] # -eq means equal
then
    echo Count is 100
else
    echo Count is not 100
fi # Opposite of if and it signals exit out of the loop