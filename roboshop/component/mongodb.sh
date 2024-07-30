ID=$(id -u)
if [ $ID -ne 0 ] ; then 
    echo -e "\e[31m This script is expected to run with sudo or as a root user \e[0m   \n\t Ex:  bash scriptName compName"
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





