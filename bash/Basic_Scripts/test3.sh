#!/bin/bash
echo "Set your countdown:"
read time
for(( ;time>=0; time--))
do
echo "$time"
done
echo "Time is up!"
