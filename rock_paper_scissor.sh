#!/bin/bash

choices=("rock" "paper" "scissors")

echo "Welcome to the Rock, Paper, Scissors Game!"

function generate_computer_choice() {
    local random_index=$((RANDOM % ${#choices[@]}))
    echo "${choices[$random_index]}"
}

function determine_winner() {
    local player_choice=$1
    local computer_choice=$2

    if [[ $player_choice == $computer_choice ]]; then
        echo "It's a tie!"
    elif [[ ($player_choice == "rock" && $computer_choice == "scissors") || ($player_choice == "paper" && $computer_choice == "rock") || ($player_choice == "scissors" && $computer_choice == "paper") ]]; then
        echo "You win!"
    else
        echo "Computer wins!"
    fi
}

echo "Enter your choice (rock, paper, scissors):"
read player_choice

computer_choice=$(generate_computer_choice)
echo "Computer chose: $computer_choice"

determine_winner "$player_choice" "$computer_choice"

