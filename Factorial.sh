#!/bin/bash

# Read the input number
echo "Enter a number:"
read number

# Initialize the factorial result to 1
factorial=1

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Input is not a valid positive integer."
    exit 1
fi

# Calculate the factorial using a loop
for (( i=1; i<=number; i++ ))
do
  factorial=$((factorial * i))
done

# Output the result
echo "The factorial of $number is $factorial"
