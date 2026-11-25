#!/bin/bash

limit=80
usage=90

if [ $usage -ge $limit ]
then
    echo "Alert! Disk usage is high"
else
    echo "Disk usage is normal"
fi

