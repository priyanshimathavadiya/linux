#!/bin/bash

echo "Enter directory:"
read dir

echo "Enter file name:"
read file

find $dir -name $file
