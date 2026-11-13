#!/bin/bash
# Specify days in for loop

i=1
for day in Mon Tue Wed Thur Fri
do
echo "Weekday $((i++)) : $day"
done

