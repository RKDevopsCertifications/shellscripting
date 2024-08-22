#! /bin/bash
#Function with parameters in shell
<<Calculator  
with function add sub mul divide numbers
pass two numbers to perform this operation.
Calculator

arithmaticOps(){
  	echo "Number of arguments passed: $#"
	numb1=$1
	numb2=$2
	sum=$((numb1+numb2))
	diff=$((numb1-numb2))
	mult=$((numb1*numb2))
	
	if [ $numb2 -ne 0 ]; then
		div=$((numb1/numb2))
	else
		div="undefined (divide by zero)"
		echo "numb2 is invalid for division"
	fi

	echo "Adding two numbers $numb1 , $numb2 : $sum"
	echo "Substract two numbers $numb1 , $numb2 : $diff"  
	echo "Multiply two numbers $numb1 , $numb2 : $mult" 
	echo "Division two numbers $numb1/$numb2 : $div" 
}
##main class
echo " read two numbers " 

read -p " number 1 :" number1
read -p " number 2 :" number2
# call  function arithmaticOps with params
arithmaticOps $number1 $number2
   
