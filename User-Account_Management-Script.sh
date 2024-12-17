#!/bin/bash

# Define the username
username="aparna"

# Check if the user exists
if id "$username" &>/dev/null; then
    echo "User $username already exists"
else 
    # Create the user if they don't exist
    sudo useradd -m "$username"
    echo "User $username created"
    echo "list the user:"
    cat /etc/passwd | grep "$username"
fi