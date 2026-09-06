#!/bin/bash

<<info 
	About system mangement
info

echo "===== SYSTEM MONITOR ====="

hostname=$(hostname -d)
user=$(whoami)
Date=$(date '+%Y-%m-%d')
uptime=$(uptime -s)
echo "HostName : $hostname"
echo "USER : $user"
echo "DATE : $Date"
echo "UpTime : $uptime"

echo "----- DISK -----"
DISK=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
echo "DISK USAGE : $DISK "

if [ $DISK >= 80 ];
then
	echo "WARNING : Disk usage is high!"
else
	echo "Disk usage is normal."
fi

echo "----- MEMORY -----"
memory=$(free -h | awk 'NR == 2 {print $3}')
echo "MEMORY USAGE : $memory"

filescount=$(find . -maxdepth 1 -type f | wc -l )
echo "Total Number fo Files : $filecount"

