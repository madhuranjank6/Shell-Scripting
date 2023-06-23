#!/bin/bash
echo "Enter the starting number: "
read start
echo "Enter the ending number: "
read end
sum=0
for ((i=start; i<=end; i++))
do
  sum=$((sum + i))
done
echo "The sum of numbers from $start to $end is: $sum"
