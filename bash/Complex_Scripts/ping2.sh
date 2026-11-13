#!/bin/bash
# Don't show the ping output just OK or NOT OK

ping -c1 ip_address &> /dev/null # Update the ip_address to your desired IP address
if [ $? -eq 0 ]
then
echo OK
else
echo NOT OK
fi