#!/bin/bash

#this script is used to read line from a text file and then store it in an array and then user can retrieve the data from the array
# n=0

echo "While loop executing to read the file name"
declare -a my_array_1
while IFS= read -r line; do
  my_array_1+=("$line")
done < read_line.txt

echo "Accessing of Array"
for i in "${my_array_1[@]}"
do
	echo $i
	# n=$((n+1))
	# echo $n
	# echo "*********************"
done