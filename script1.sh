#!/bin/bash

echo "Input the date:"

read rei

arr=$(ls -l | grep -i "$rei" | awk  '{print $NF}')
declare -a arr1
arr1=(arr)
echo @{arr1[@]}
for a in ${arr1[@]}
do
	echo $a
FILESIZE=$(stat -c%s "$a")

echo "The name of the file is $a and its size is = $FILESIZE bytes."

done

