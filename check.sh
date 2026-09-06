#!/bin/bash

<<info 
	This scripts checks if the usr exists
info

read -p "Enter the username you want to check " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ];
then 
	echo "User doesnot Exist"
else
	echo "User Exist"
fi
