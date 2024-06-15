#!/bin/bash

#special varibles are pre-defined varibles with specific special pre-defined power.

#special varibles are $0 to $9, $* , $@, $#, $$

# can you create on special varibles on bash, 100% NO..
# you can just use special variables that are offered.

a=3000
TEAM=$1
PROJECT=$2
echo "Value of a is $a" 
echo "Script Name is : $0"

# $0 : Prints the name of the script you're running

echo -e "Name of the team running the script is : \e[33m $TEAM \e[0m"
