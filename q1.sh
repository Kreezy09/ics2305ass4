#!/bin/bash

sum=0

for((i=1; i<=5; i++))
do


echo "Input digit"
read num

sum=$((sum + num))

done
echo "The sum is: " $sum
