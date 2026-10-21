#!/bin/bash

echo "Enter path:"
read p

if [ -f "$p" ]
then
    echo "It is a file"
elif [ -d "$p" ]
then
    echo "It is a directory"
elif [ -L "$p" ]
then
    echo "It is a symbolic link"
else
    echo "It does not exist"
fi
