#!/bin/bash

echo "Enter the total number of elements: "
read n

sum=0

echo "Enter the numbers: "
for ((i=1; i<=n; i++))
do
    read num
    sum=$((sum + num))
done

average=$((sum / n))

echo "The average is: $average"
