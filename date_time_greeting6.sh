#!/bin/bash

echo "current date and time"
date

echo "date :
 $(date +%d-%m-%y)"
echo "date : $(date +%d-%m-%y)"
echo "date : $(date +%d/%m/%y)"
echo "time : $(date +%H-%M-%S)"
echo "day : $( date +%a)"
echo "month : $( date +%b)"
echo "year : $( date +%y)"
echo "AM/PM time : $( date '+%I:%M:%S %P')"
h=$(date +%H)
if [ $h -lt 12  ]
then 
    echo "good morning"
elif [ $h -lt 17 ]
then 
    echo "good afternoon"
else
    echo "good evening"
fi

