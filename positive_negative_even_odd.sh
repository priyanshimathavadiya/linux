#!/bin/bash

echo "enter a number:"
read num

if [ $num -gt 0 ]; then 
    echo "number is positive"
elif [ $num -lt 0 ]; then
    echo "number is negetive"
else 
    echo "number is zero"
fi

if [ $((num % 2)) -eq 0 ]; then
    echo "number is even "
else 
    echo "number is odd"
fi

