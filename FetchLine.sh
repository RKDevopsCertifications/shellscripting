#!/bin/bash
#create a file with lines ,  minimum 10 and file should have content Line 1 Line 2..etc
#Author rkdevops19
echo "create a file "
 
sudo ./CrFile.sh 10 OutFile.txt

# check the file has minimum 10 lines

if [[ $(wc -l <OutFile.txt) -lt 10 ]]; then 
	echo " file does not have 10 lines"  
else
	head -n 10  OutFile.txt|tail  -n 1
	sed -n '10p' OutFile.txt
	awk 'NR == 10' OutFile.txt 
fi
 
