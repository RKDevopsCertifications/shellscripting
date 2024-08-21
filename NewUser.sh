
echo "Create a new user"
read -p "Enter the new username: " username
read -s -p "Enter password: " password
echo

# Add the new user with sudo
sudo useradd -m "$username"

# Check if the user was added successfully
if [ $? -eq 0 ]; then
    echo "$password" | sudo passwd --stdin "$username"
    
    if [ $? -eq 0 ]; then
        echo "User $username was successfully created."
    else
        echo "Failed to set the password for $username."
    fi
else
    echo "Failed to add the user $username."
fi

# Get the list of users
echo "List of users:"
cut -d: -f1 /etc/passwd

