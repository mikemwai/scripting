#!/bin/bash
# Delete the generated files

for i in {1..5}
do
rm -rf $i
done
echo File deleted successfully
ls -ltrh

