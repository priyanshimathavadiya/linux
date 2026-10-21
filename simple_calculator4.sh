#!/bin/bash

echo "enter first number"
read a
echo "etner second number"
read b

echo "enter your choice"
echo "1.addition"
echo "2.subtraction"
echo "3.multiplication"
echo "4.division"
echo "5.modules"
read choice

case $choice in
    1) echo "result = $(( a+b ))"
         ;;
    2) echo "result = $(( a-b ))"
         ;;
    3) echo "result = $(( a*b ))"
         ;;
    4) echo "result = $(( a/b ))"
         ;;
    5) echo "result = $(( a%b ))"
         ;;
    *) echo "invalid choice"
         ;;
esac
 
