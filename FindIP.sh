#!/bin/bash
#Find IP addresses from search.txt file 
#Author : RKDEVOPS19

echo " find the list of IP addresses from search.txt"
echo " grep -oE: "
grep -oE '\b([0-9]{1,3}\.){3}+[0-9]' search.txt
echo "grep -o basic :"
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' search.txt
echo " grep -o bit advanced cmd"
grep -o '[0-9]\{1,3\}\(\.[0-9]\{1,3\}\)\{3\}' search.txt
