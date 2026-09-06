#!/bin/bash

<<info 
	This script will take perodic backups

eg. ./backup.sh <source> <destination>
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "Backup Done"
