#!/bin/bash

# What is a variable ?
# A variable is something that holds data and can change dynamically

# the advantage & disadvantage in shell is that there are no Data Types

# Declaring the variables

a=10
b=def
custdata-"shipping"
# In bash, everything will be considered as string by default.

# How can we print a variable ?  $var

# $ is a special variableand this helps you in printing the value of the variable 

echo "$a" 
echo " the value of variable b is $b"
echo " the value of variable b is ${b}"

#echo "$a" or  echo {$a} we can use both. if one is not working then user another cammand.

#how to print colour in variables
echo -e " the value of variable b is\e[32m $b \e[0m"

# always remember when ypu are running any script give a right path.

# if variable is not defined. it will show empty. that not aceeptable at any cost.
echo " the value of variable d is $d"


#if you want delete same data give righ path other wise it will delte the directory.

# rm -rf /data/prod/${CUSTDATA} ====> /data/prod/shipping
# rm -rf /data/prod/${APPDATA} ====> /data/prod/



