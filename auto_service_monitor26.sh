#!/bin/bash

for service in ssh cron NetworkManager ufw
do
    if systemctl is-active --quiet "$service"
    then
        echo "$service is running"
    else
        echo "$service is stopped"
    fi
done

