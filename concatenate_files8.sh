#!/bin/bash


for file in "$@"
do
    echo "filename:$file" >> output1.txt
    cat "$file" >> output1.txt
done
