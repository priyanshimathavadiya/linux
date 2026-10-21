!/bin/bash

echo "Linux Distribution:"
cat /etc/os-release

echo "Kernel Version:"
uname -r

echo "Hostname:"
hostname

echo "CPU Architecture:"
uname -m

echo "Memory Information:"
free -h

echo "System Uptime:"
uptime
