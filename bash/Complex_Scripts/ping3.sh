#!/bin/bash
# Define the variable

hosts="ip_address" # Update the ip_address to your desired IP address
ping -c1 $hosts &> /dev/null
if [ $? -eq 0 ]
then
echo $hosts OK
else
echo $hosts NOT OK
fi
