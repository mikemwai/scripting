#!/bin/bash
# Input/Output

a=`hostname` # The ticks (``) allow you to run an actual Linux command

echo Hello, my name is $a
echo
echo What is your name?
read b
echo
echo Hello $b
echo