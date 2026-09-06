#!/bin/bash

<<info 
	This script will install the package you pass in the argument
	eg: ./install_package.sh nginx
	./install_package.sh docker.io
info

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "Installation completed"
