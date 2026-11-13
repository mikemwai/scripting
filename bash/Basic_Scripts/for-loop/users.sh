#!/bin/bash
# List all users one by one from /etc/passwd 

i=1
for username in `awk -F: '{print $1}' /etc/passwd`
do
	echo "Username $((i++)) : $username"
done

