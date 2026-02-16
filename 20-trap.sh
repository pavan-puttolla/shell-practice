#!/bin/bash
set -e #ERR

trap "echo 'this is trap block, this will execute when any command in script is failed'" ERR

echo "hello world"
echo "this is shell script for trap command"
eecho "this is second line"
echo0 "this is third line"
echo "this is fourth line"