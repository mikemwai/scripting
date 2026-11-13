#!/bin/bash
# Simple case statement script 

echo Please choose one of the options below:
echo 'a = Display date and time'
echo 'b = List file and directories'
echo 'c = List users logged in'
echo 'd = Check system uptime'
echo
read choices
echo
case $choices in
a) date;;
b) ls;;
c) who;;
d) uptime;;
*) echo 'Invalid option selected. Please choose a, b, c, or d.';;
esac


