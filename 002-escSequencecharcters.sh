#!/bin/bash

#escape seqence character

#\n  : new line
#\t  : move to the cursor next tab space

echo line1
echo line2

echo -e "line3\nline4"
echo -e "line5\n\tline6"

# Whenever you're using special characters , always enclose them in DOUBLE QUOTES
# " "  : Double Quotes 
# ' '  : Single Quotes