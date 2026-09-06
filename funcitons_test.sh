#!/bin/bash

<<info 
	About the funcions and loops
info

function create_user {

	read -p "Enter the username you want to add: " username

	sudo useradd "$username"
	echo "===== USER ADDED ====="

}

for ((i=0;i<=5;i++))
do
	create_user
done
