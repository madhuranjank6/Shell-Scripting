#!/bin/bash
echo "Enter the numbers (space-separated): "
read -a arr
max=${arr[0]}
min=${arr[0]}
for num in "${arr[@]}"
do
  if [ $num -gt $max ]; then
    max=$num
  fi
  if [ $num -lt $min ]; then
    min=$num
  fi
done
echo "Maximum number: $max"
echo "Minimum number: $min"
