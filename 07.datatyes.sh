#!/bin/bash

Num1=100
Num2=200
sum=$((Num1 + Num2))
echo "sum of numbers is :$sum "

####Array Data Type###
frurits=("Pineapple" "Apple" "pomogrinate" "kivi")
echo" fruits are:${fruits[@]}"
echo"first fruit:${fruits[0]}"
echo"second fruit:${fruits[1]}"
echo"third fruit:${fruits[2]}"
echo"fourth fruit:${fruits[3]}"