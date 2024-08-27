#!/bin/bash
# delete all users  start with specific letter 
#author : rkdevops 

<< delete 
1. mention which user to delete , starting latter 
2. fetch the list of  users  starts with letter 
3. verfiy list of delete users are not empty 
4. delete all users
delete

# read  user name to  delete
read -p " Enter the letter or word for user to delete : " letter

if [ -z "$letter" ]; then 
	echo " letter should not be empty"
	exit 1
fi

# fetch the list of delete users from  shell

delete_Users=$(cut -d: -f1 /etc/passwd | grep -i "^$letter")

echo " list of users to delete now  : $delete_Users"

for user in "$delete_User";
do 
	sudo deluser --remove-home "$user"
	echo "successfully deleted user : $user"
done 

 
