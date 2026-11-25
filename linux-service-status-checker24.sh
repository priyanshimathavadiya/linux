#!/bin/bash

echo "Enter service names:"
read services

for service in $services
do
    if systemctl is-active --quiet "$service"
    then
        echo "$service is running"
    else
        echo "$service is not running"
    fi
done

