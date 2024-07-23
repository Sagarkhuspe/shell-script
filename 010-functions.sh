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