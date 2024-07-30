#!/bin/bash

# if we running the script if sudo or root user or not , if ot exit tht script.
# if you need sudo then use another method the run the script. uid of root user always 0 
# i did want see output logs so we can use output redirectory(&>>).
# its not east to always if else use, so we can
#if [ $? eq 0 ] ; then
 #    echo -n "\e[32m success \e[0m"
# else 
  #echo -n "\e[32m failure \e[0m"
#exit 2


ID=$(id -u)

if [ $ID -ne 0 ] ; then
    echo -e "\e[33m this script expected to run with sudo or root user \e[0m   \n\t ex: bash scriptname compName"
exit 1
fi

LOGFILE="/tmp/fronend.log"

stat () {
    if [ $1 -eq 0 ] ; then
         echo -e "\e[32m success \e[0m"
    else 
         echo -e "\e[33m failure \e[0m"

fi
}
echo -n "installing nginix web server"
dnf install nginx -y               &>> $LOGFILE
stat $?

echo -n "enable the service"
systemctl enable nginx              &>> $LOGFILE
stat $?

echo -n "starting web server"
systemctl enable nginx              &>> $LOGFILE
stat $?





