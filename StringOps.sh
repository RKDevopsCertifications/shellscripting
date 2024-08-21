#!/bin/bash
# perform  string operations like concat , length 

strOps(){
	STR1=$1
	STR2=$2

	concatStr="$STR1 $STR2"

	str1len=${#STR1}
	str2len=${#STR2}

	echo " output"
        echo "-------"
	echo " string 1 : $STR1"
        echo " string 2 : $STR2"
	echo " concat STR1 & STR2: $concatStr"
	echo " length STR1 : $str1len"
	echo " length STR2 : $str2len"
        echo " concatStr length: ${#concatStr}"
}


## main section ##
#read input two strings

read -p " String 1: " str1
read -p " String 2: " str2

# call strOps  function

strOps $str1 $str2
