#!/bin/bash
echo "Enter a year: "
read year
isLeap=false
if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ]; then
  isLeap=true
elif [ $((year % 400)) -eq 0 ]; then
  isLeap=true
fi
if [ "$isLeap" = true ]; then
  echo "$year is a leap year"
else
  echo "$year is not a leap year"
fi
