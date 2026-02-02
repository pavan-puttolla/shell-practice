#!/bin/bash

Num1=100
Num2=200
sum=$((Num1 + Num2))
echo "sum of numbers is :$sum "

####Array Data Type###

FRUITS=("Pineapple" "Apple" "pomogrinate" "kivi")
echo "fruits are:${FRUITS[@]}"
echo "first fruit:${FRUITS[0]}"
echo "second fruit:${FRUITS[1]}"
echo "third fruit:${FRUITS[2]}"
echo "fourth fruit:${FRUITS[3]}"