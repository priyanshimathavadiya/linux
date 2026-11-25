#!/bin/bash
echo "Enter IP or hostname:"
read ip
ping -c 4 $ip
