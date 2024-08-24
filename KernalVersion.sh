#!/bin/bash
# get the kernal version and compare it to your input.
# author  : rkdevops

version=$(uname -r)
#compare the version  to your input.
read -p " enter your version number " inversion
case "$version" in 
*"$inversion"*)
	echo " your version is  . $version"
	;;
*)
	echo  "sorry your version is not matched to kernal version."	
esac	
