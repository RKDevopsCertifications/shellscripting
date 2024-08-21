echo " This module  will  give you  basic information about the  system."
echo " -----------------------------------------------------------------"
echo " who is the user :  $(whoami)"

echo " Hostname : $(hostname)"
echo " who  loggied  in to system: $(who | wc -l)"
echo " uptime of system  : $(uptime -p)"
echo "memory usage " 
free -h
echo "disk usage "
df -h

