#!/bin/bash

#There are four tyope of commands available

#1)Binary                      -->(Used for /bin , /sbin)
#2)Aliases                     -->(Used for shortcut ex. alias gp="git pull")
#3)Shell built-in commands     -->(cd, pwd, exit, export, alias)
#4)Functions              -->(you have common pattern and this pattern using function can effictively)

#how to declare function?
f() {
    echo hello
}
# how to call a function?
f               # calling functions
echo "today we learn bash"
echo "i am sagar"
f

#can we call function from another function ?? YES
sample(){
    echo "hey i sample"
    echo "thank you"
    f
}


sample

stat() {
    echo "Number of opened sessions $(who|wc -l)"
    echo "Number of opened sessions $(who|wc -l)"
    echo "Todays date is $(date +%F)"
    echo "Load Average in last 1 minute : $(uptime | awk -F : '{print $NF}' | awk -F ',' '{print $1}')" 
}
stat
sleep 3
stat 
sleep 3
stat 