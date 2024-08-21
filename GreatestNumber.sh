#!/bin/bash
# find greatest number amounf three numbers"
# Author  : RK 
# date: 21-08-2024

echo "------------------------------------"
echo " greatest number among three numbers"
echo "------------------------------------"

read -p " first number :" numb1
read -p " 2nd number :" numb2
read -p " 3rd number: " numb3

# login to find the greatest number

if [ $numb1 -gt $numb2 ] && [ $numb1 -gt $numb3 ]; then 
	echo " greatest number is $numb1"
elif [ $numb2 -gt $numb1 ] && [ $numb2 -gt $numb3 ]; then 
	echo " greatest number is :$numb2"
else
	echo " greatest number :$numb3"
fi
