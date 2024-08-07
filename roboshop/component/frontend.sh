#!/bin/bash

# if we running the script if sudo or root user or not , if ot exit tht script.
# if you need sudo then use another method the run the script. uid of root user always 0 
# i did want see output logs so we can use output redirectory(&>>).
# its not east to always if else use, so we can
# LOGFILE="/tmp/fronend.log"
#if [ $? eq 0 ] ; then
 #    echo -n "\e[32m success \e[0m"
# else 
  #echo -n "\e[32m failure \e[0m"
#exit 2

ID=$(id -u)
if [ $ID -ne 0 ] ; then 
    echo -e "\e[31m This script is expected to run with sudo or as a root user \e[0m   \n\t Ex:  bash scriptName compName"
    exit 1
fi 
component="frontend"
LOGFILE="/tmp/$1.log"

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

echo -n "Downloading the $COMPONENT Component: "
curl -s -L -o /tmp/$COMPONENT.zip "https://github.com/stans-robot-project/$COMPONENT/archive/main.zip"
stat $? 

echo -n "Performing $COMPONENT Cleanup :"
cd /usr/share/nginx/html 
rm -rf * &>>  $LOGFILE
stat $? 

echo -n "Extracting $COMPONENT :"
unzip /tmp/frontend.zip   &>>  $LOGFILE 
stat $? 

echo -n "Configuring $COMPONENT :"
mv ${COMPONENT}-main/* .   &>>  $LOGFILE
mv static/* .        &>>  $LOGFILE
rm -rf ${COMPONENT}-main README.md    &>>  $LOGFILE  
mv localhost.conf /etc/nginx/default.d/roboshop.conf
stat $?
