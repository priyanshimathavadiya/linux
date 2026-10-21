#!/bin/bash

echo "Enter username:"
read username

if id "$username" > /dev/null 2>&1
then
    echo "User already exists"
else
    if sudo useradd "$username"
    then
        echo "User created successfully"
    else
        echo "User creation failed"
    fi
fi
