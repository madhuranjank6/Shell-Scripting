#!/bin/bash

# Function to perform addition
addition() {
    echo "Enter the first number:"
    read num1
    echo "Enter the second number:"
    read num2
    result=$((num1 + num2))
    echo "Result: $result"
}

# Function to perform subtraction
subtraction() {
    echo "Enter the first number:"
    read num1
    echo "Enter the second number:"
    read num2
    result=$((num1 - num2))
    echo "Result: $result"
}

# Function to perform multiplication
multiplication() {
    echo "Enter the first number:"
    read num1
    echo "Enter the second number:"
    read num2
    result=$((num1 * num2))
    echo "Result: $result"
}

# Function to perform division
division() {
    echo "Enter the first number:"
    read num1
    echo "Enter the second number:"
    read num2
    result=$((num1 / num2))
    echo "Result: $result"
}

# Main menu
while true; do
    echo "Simple Calculator"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "Enter your choice:"
    read choice

    case $choice in
        1)
            addition
            ;;
        2)
            subtraction
            ;;
        3)
            multiplication
            ;;
        4)
            division
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
