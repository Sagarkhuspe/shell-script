#!/bin/bash

#conditin helps to execute something only some factor is true.

###case
#syntax of case

#case $var in
  #  opt1) command-x ;;
 #   opt2) command-y ::

#esac

Action=$1

case $Action in
      start)
      echo "starting the dispatch service" ;;

      stop)
      echo "stopping the dispatch service" ;;
     
      restart)
      echo "restarting the dispatch service" ;;

esac      