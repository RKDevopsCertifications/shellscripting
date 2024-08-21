
#! /bib/bash
# Abot test the age factor  whether person can buy alchohal and vote or not.

<<comment
desctibe the code
read the person age 
logical test whether user can take alchohal or not
comment

read -p "Enter your age:" age 
if [ $age -gt 18 ]; then 
	echo " You are adult and you can take alcohal and vote"
else 
	echo " still you are a minor and  stay with your family"
fi
