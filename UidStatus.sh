#! /bin/bash

# Print the current user info  either roor, default or any other user

case $UID in
0)
	echo " this is  a  root user ";;
1000)
	echo " this is a default user ";;
*)	 
	echo " other user ";;
esac
