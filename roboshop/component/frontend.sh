#!/bin/bash

# if we running the script if sudo or root user or not , if ot exit tht script.
# if you need sudo then use another method the run the script.
echo "installing nginix web server"
dnf install nginx -y

echo "enable the service"
systemctl enable nginx

echo "starting web server"
systemctl enable nginx
