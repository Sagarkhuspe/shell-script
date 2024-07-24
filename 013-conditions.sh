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
        echo -e "Starting Dispatch Service" 
        
        ;;
    stop)
        echo -e "Stopping Dispatch Service" 
      
        ;;
    restart)
       echo -e "restarting Dispatch Service" 
      
esac 
     