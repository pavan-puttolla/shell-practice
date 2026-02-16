#!/bin/bash
set -e #ERR

trap "echo 'this is error in line $LINENO,command $BASH_COMMAND'" ERR

echo "hello world"
echo "this is shell script for trap command"
eecho "this is second line"
echo0 "this is third line"
echo "this is fourth line"