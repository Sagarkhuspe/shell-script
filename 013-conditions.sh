#!/bin/bash

#conditin helps to execute something only some factor is true.

###case
#syntax of case

#case $var in
  #  opt1) command-x ;;
 #   opt2) command-y ::

#esac

Action=$1

case $ACTION in 
    start)
        echo -e "\e[32m Starting Dispatch Service \e[0m" 
        
        ;;
    stop)
        echo -e "\e[31m Stopping Dispatch Service \e[0m" 
      
        ;;
    restart)
        echo -e "\e[33m Restarting Dispatch Service \e[0m" 
        
        ;;
    *)
        echo -e "\e[35m Valid options are: start  stop  restart   only \e[0m"
        echo -e "\e[33m Usage: \e[0m \n\tbash conditions.sh  start"
       
esac 
     