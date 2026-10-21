#!/bin/bash

echo "Enter file name:"
read file

if [ -e "$file" ]
then
    echo "File exists"
    ls -l "$file"
else
    echo "File does not exist"
fi
