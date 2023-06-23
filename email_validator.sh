#!/bin/bash

echo "Enter an email address:"
read email

regex="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"

if [[ $email =~ $regex ]]; then
    echo "$email is a valid email address."
else
    echo "$email is not a valid email address."
fi
