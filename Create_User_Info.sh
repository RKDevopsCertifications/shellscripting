#!/bin/bash
# create a linux user with password, additional information.
#Author : rkdevops19
<<steps
1.check  running this script as a system user or admin user
2. read the user information  fullname, password, username
3. verify null values are not passed.
4. execute adduser command 
5. verify execution status
steps


#1. check the user 

if [ "$EUID" -ne 0 ]; then 
	echo " please run this script as a System or root user " 
	sudo "$0" "$@"
	exit 0
fi
echo " Welcome you are running  this script as system user"

#2. read all the information to  add the user

read -p "Enter username : " username
read -sp "Enter Password : " password
read -p "Enter User Full name : " fullname
read -p "User phone number: " phone
read -p "User Localtion : " loc
read -p "Job title :" title

if [ -z "$username" ]; then
	echo " username is empty "
	exit 1
fi

if [ -z "$password" ]; then 
	echo " password can not be empty, please enter a valid password"
	exit 1
fi

sudo adduser -gecos "$fullname, $phone, $loc, $title" --disabled-password "$username" --force-badname

if [ "$?" -ne 0 ]; then
	echo " failed to create a user :$username" 
	exit 1
fi

sudo "$username:$password" | sudo chpasswd
echo "user : $username has added successfully"
