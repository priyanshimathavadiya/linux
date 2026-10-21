#!/bin/bash

today=$(date +%-d-%-m)
user=$(whoami)

while IFS=: read name login birthday
do
    if [ "$birthday" = "$today" ]
    then
        if [ "$login" = "$user" ]
        then
            echo "Happy Birthday $name!"
        fi
    fi
done < /home/linux23/260160450327/birthday.txt
