#!/bin/bash

echo "installing nginix web server"
dnf install nginx -y

echo "enable the service"
systemctl enable nginx

echo "starting web server"
systemctl enable nginx
