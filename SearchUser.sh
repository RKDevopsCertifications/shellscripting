echo "------------"
echo "search user!"
echo "------------"

read -p "username :" username

sudo useradd -m "$username"

if [ $? -eq 0 ]; then 
	echo "user got created $username "
	if cut -d: -f1 /etc/passwd | grep -q "^$username"; then
		echo "user is found"
	else
		echo "user not found"
	fi		
else
        echo "Failed !!! user not found "
fi




