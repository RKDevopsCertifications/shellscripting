#!/bin/bash 
# list of users to  verify are present in shell users list
# get the list of shell users
# define  users listyou want to verify it.
# compare user list  in  shell users list 

echo "Enter the user list"
usersInput=("Devops19" "root" "RameshK")
echo "${usersInput[0]}"
echo "${usersInput[1]}"
echo "${usersInput[2]}"
echo "--------------------"
echo " System users list : "
echo "---------------------"
systemUsers=$(cut -d: -f1 /etc/passwd)
echo "$systemUsers"
