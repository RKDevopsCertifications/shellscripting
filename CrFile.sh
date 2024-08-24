#!/bin/bash
# create a file with data
#author rkdevops19
<<D
check file has minimum two arguments  
1. number of lines in new file
2. outputfile name

D

#
echo "Create a file with  data"
totallines=$1
fileName=$2

# check file has 2 params

if [ $# -ne 2 ]; then
	echo "error file is having incorrect params"
	exit 1
fi 

#check file  input is valid  or not 

if ! [[ "$totallines" =~ ^[0-9]+$ ]]; then
	echo " error totallines is invalid value :$totallines" 
fi

#create file  

for (( i=1; i<=$totallines; i++ ))
do
	echo "File $i" >> "$fileName"
done
echo "file  got created successfully with lines :$totallines" 
