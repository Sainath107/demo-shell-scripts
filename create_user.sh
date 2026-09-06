#!/bin/bash

<<help

	this is the scirpt to create the user
help

echo "============ CREATING THE USER ============"

read -p "Enter the user name " User

read -p "Enter the password " password

sudo useradd -m "$User" -s /bin/bash
echo -e "$password\n$password" | sudo passwd "$User"

echo "===== User Created ====="


sudo userdel "$User"
echo "USER DELETED"

if [ $(cat /etc/passwd | grep "$User" | wc | awk '{print $1}') -eq 0 ];
then
	echo "As wc is zero therefore the user is deleted"
else
	echo "User is not deleted"
fi
