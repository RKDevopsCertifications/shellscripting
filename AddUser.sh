#!/bin/bash
#add user to the shell 
#author : rkdevops19
#Command explain 
#sudo : super user  privileges
#useradd:  add new user 
#-c : comment
#-s : shell type
#-m : create the user's home directory if it doesn't already exist. 
#-d : specifies the user's home directory.

echo " enter the details  required for command to execute "

read -p " -s shell type  /bin/bash /bin/sh :" stype
read -p " -c user account infor : " uinfo
read -p " -m username :" username

sudo useradd -s "$stype" -c "$uinfo" -m -d "/home/$username" "$username"


if [ $? -eq 0 ]; then
	echo " user got created successfully : $username"
else
	echo " failed to  create user : $username"
fi

