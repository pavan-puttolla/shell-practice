#!/bin/bash
#########Special variables in bash########
echo "All arguments are passed to script:$@"
echo "number of varibles are passed to script:$#"
echo "script name is:$0"
echo " present running directoruy:$PWD"
echo " is running the script:$USER"
echo "home directory of current user:$HOME"
echo "PID of the script is:$$"
sleep 100 &
echo "PID of last background process:$!"
