#!/bin/bash

expr 1 + 9
echo $(expr 1 + 9)

# take two input from user a and b
read -p "Enter 1st num: " a
read -p "Enter 2nd num: " b

sum=$(( $a + $b )) # syntax fr addition. Don't give any space in between "=" sign
#sum_1=$(( $a - $b ))

sum_1=$(expr $a - $b) # it is another way to add two number and keep them in a new variable. In terminal if you write expr 1 + 1 then answer will be 2. Obviously give SPACE after the word "expr" and in both side of "+" sign.

echo $sum
echo "expr : "
echo $sum_1

echo "3.4+8" | bc

# take two input from user a and b
read -p "Enter 1st floating num: " c
read -p "Enter 2nd floating num: " d

echo "$c+$d"|bc
echo "float sum"
#float_sum=$((($c+$d)|bc))
float_sum=$(echo "$c+$d"|bc)
echo $float_sum
