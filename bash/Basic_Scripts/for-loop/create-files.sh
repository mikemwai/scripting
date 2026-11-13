#!/bin/bash
# Create 5 files named 1-5

for i in {1..5}
do
touch $i
done
echo Files created
ls -ltrh

