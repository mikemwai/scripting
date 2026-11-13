#!/bin/bash
# The script pings multiple remote hosts and shows the output

hosts="hosts_file_path"

for ip in $(cat $hosts)
do
ping -c1 $ip &> /dev/null
if [ $? -eq 0 ]
then
echo $ip is OK
else
echo $ip is NOT OK
fi
done 