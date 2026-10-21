#!/bin/bash
echo "enter first number"
read a 
echo "enter a secode number"
read b
echo "enter a thired number "
read c
if [ $a -ge $b ] && [ $a -ge $c ];
 then
        echo"lager number is $a"
elif [ $b -ge $a ] && [ $b -ge $c ];
then
echo "than lagres number is : $b"
else
echo "lagers number is number $c"
 fi

