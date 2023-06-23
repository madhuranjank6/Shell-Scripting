#!/bin/bash

power() {
  local base=$1
  local exponent=$2

  if [ $exponent -eq 0 ]; then
    echo 1
    return
  fi

  local result=$((base * $(power $base $((exponent - 1)))))

  echo $result
}

echo "Enter the base: "
read base

echo "Enter the exponent: "
read exponent

result=$(power "$base" "$exponent")
echo "Result: $result"
