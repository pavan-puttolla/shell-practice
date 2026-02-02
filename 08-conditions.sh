#!/bin/bash

NUMBER=25

#-gt=> greater than
#-eq=> equal to
#-lt=> less than
if [ $NUMBER -gt 20 ]; then
echo "given number is :$NUMBER greater than 20"
elif[$NUMBER -eq 20 ]; then
echo "given number is :$NUMBER equal to 20"
else[$NUMBER -lt 20 ];then
echo "given number is:$NUMBER less than 20"
fi
