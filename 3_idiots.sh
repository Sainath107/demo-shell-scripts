#!/bin/bash

hero="Rancho"
villain="Virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"

#user inputs
read -p "Rancho ka pura naam kya hai? " fullname

echo "Rancho ka pura naam hai $fullname"

#arguments

#3_idots raju farhan rancho
echo "Movie name is : $0" 

echo "First idiot : $1"

echo "Second idiot : $2"

echo "Third idiot : $3"

echo "Total number of idiots are $#"

echo "Hence the 3idiots are $@"
