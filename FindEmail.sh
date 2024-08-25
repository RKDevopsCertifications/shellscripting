
#!/bin/bash
# use regexp to fetch the emailid's from the search.txt file 
#author : rkdevops19

echo " search and list out emails from file: "
echo "user grep -oE command to fetch the emails."
grep -oE '[a-zA-Z._+-]+@+[a-zA-Z_+-]+\.[a-zA-Z]{2,}' search.txt
echo " use grep -o command to fetch the list of emails"
grep -o '[a-zA-Z0-9._+-]\+@[a-zA-Z]\+\.[a-zA-Z]\{2,\}' search.txt
echo " successfully teched the list"
