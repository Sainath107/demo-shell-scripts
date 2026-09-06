#!/bin/bash

<<help 
	Using arguments to create user
help

sudo useradd -m "$1" 

echo -e "$2\n$2" | sudo passwd "$1"


echo "User create using arguments"
