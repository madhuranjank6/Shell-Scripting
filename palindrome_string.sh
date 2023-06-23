#!/bin/bash
echo "Enter a string: "
read string

reverse=""
len=${#string}

for (( i=$len-1; i>=0; i-- ))
do
    reverse="$reverse${string:i:1}"
done

if [ "$string" = "$reverse" ]; then
    echo "$string is a palindrome"
else
    echo "$string is not a palindrome"
fi
