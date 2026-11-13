#!/bin/bash
# The script pings a remote host and shows the output

ping -c1 ip_address # Update the ip_address to desired IP address. The ping command only pings once.
if [ $? -eq 0 ]
then
echo OK
else
echo NOT OK
fi