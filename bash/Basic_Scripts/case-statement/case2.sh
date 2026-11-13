#!/bin/bash
# Simple case statement script that records the user's choice to a log file

echo Please choose one of the options below:
echo 'a = Display date and time'
echo 'b = List file and directories'
echo 'c = List users logged in'
echo 'd = Check system uptime'

echo
read choices
echo

touch case2.log
echo "User selected $choices at `date`" >> case2.log

case $choices in
a) date;;
b) ls;;
c) who;;
d) uptime;;
*) echo 'Invalid option selected. Please choose a, b, c, or d.';;
esac


