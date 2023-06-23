#!/bin/bash
echo "Enter a number: "
read num
isPrime=true
if [ $num -lt 2 ]; then
  isPrime=false
else
  for ((i=2; i<=num/2; i++))
  do
    if [ $((num % i)) -eq 0 ]; then
      isPrime=false
      break
    fi
  done
fi
if [ "$isPrime" = true ]; then
  echo "$num is a prime number"
else
  echo "$num is not a prime number"
fi
