#! /bin/bash
#define methods for add sub 
add(){
	result=$((numb1+numb2)) 
       echo "numbers added :result is . .$result"
}

sub(){
    result=$((numb1 - numb2))
    echo "Result of subtraction: $result"
}

#main  class

echo  "add & sub two numbers"
read -p "enter first number: " numb1
read -p "enter second number : " numb2

#call add and sub methods

add
sub

