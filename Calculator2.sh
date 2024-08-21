#!/bin/bash
#define methods for add and sub

add(){
    result=$((numb1 + numb2)) 
    echo "Numbers added: result is $result"
}

sub(){
    result=$((numb1 - numb2))
    echo "Result of subtraction: $result"
}

#main class

echo "Add & Subtract two numbers"
read -p "Enter the first number: " numb1
read -p "Enter the second number: " numb2

#call add and sub methods

add
sub
