#!/bin/bash
# "add"  "sub" "mul" " Div" 

echo " add  numbers to add "
echo "--------------------"
read  -p "enter number 1:" numb1
read -p  "enter number 2:" numb2
result=$((numb1+numb2)) 
echo "two numbers added and result :$result"  
result=$((numb1-numb2)) 
echo "substration result is: $result"
result=$((numb1*numb2))
echo "multiply two numbers: $result"
result=$((numb1/numb2))
echo "divide number 1/number2: $result"
