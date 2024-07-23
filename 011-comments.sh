#!/bin/bash

#this is single line comments.

#here is using multiple line comments.

echo printing multiline comments
<<comments
a=10
b=20
c=30
echo "value of a is $a"
comments
echo "value of b is $b"
