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
      echo -e "\e[32m starting the dispatch service  \e[0m" ;;
      exit 1

      stop)
      echo -e "\e[33m stopping the dispatch service  \e[0m" ;;
     
      restart)
      echo -e "\e[34m restarting the dispatch service  \e[0m" ;;

       *)
        echo -e "\e[35m Valid options are: start  stop  restart   only \e[0m"
        echo -e "\e[31m Usage: \e[0m \n\tbash conditions.sh  start  \e[0m"

esac      