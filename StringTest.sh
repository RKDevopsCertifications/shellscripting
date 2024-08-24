#!/bin/bash
# Find the word matches  in complete string 
# Author : rkdevops19

echo " Search a string  "
read -p "Enter your text: " fulltext
case "$fulltext"  in  

*Hello*)  
	echo "found: $fulltext"
	;;
*Ramesh*)
	echo "found: $fulltext"
	;;
*)
	echo "text not found in $fulltext"
esac
