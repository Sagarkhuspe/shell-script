#!/bin/bash

echo -e "demo only for if, if else, else if condition usage"

Action=$1

if ["$Action" = "start" ] ; then
echo -e "\e[32m starting dispatch service only \e[0m"
exit 0

elif ["$Action" = "stop" ] ; then
echo -e "\e[33m stopping dispatch service only \e[0m"
exit 1

elif ["$Action" = "restart" ] ; then
echo -e "\e[34m restarting dispatch service only \e[0m"
exit 2

else 
echo -e "\e[35m valid option are start stop restart only \e[0m"
exit 3

fi