#!/bin/bash

# DATE="11/MARCH/2024"
# NO_OF_SESSIONS="4"       this is called as hardCoding and hardCoding is a bad way and whereever possible you should fetch the values dynamically.


DATE="$(date +%F)"
NO_OF_SESSIONS="$(who|wc -l)"