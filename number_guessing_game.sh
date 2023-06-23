#!/bin/bash

target=$((RANDOM % 100 + 1))
guess=-1
attempts=0

echo "Welcome to the Number Guessing Game!"

while (( guess != target )); do
    echo "Enter your guess (1-100):"
    read guess

    if (( guess < target )); then
        echo "low. Try again."
    elif (( guess > target )); then
        echo "high. Try again."
    fi

    (( attempts++ ))
done

echo "Congratulations! You guessed the number $target in $attempts attempts."
