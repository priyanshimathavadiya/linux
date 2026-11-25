#!/bin/bash

while true
do
    echo "------ SYSTEM INFORMATION MENU ------"
    echo "1. System Information"
    echo "2. Disk Usage"
    echo "3. Memory Usage"
    echo "4. Logged-in Users"
    echo "5. Running Processes"
    echo "6. List Ports"
    echo "7. Failed Services"
    echo "8. Date and Time"
    echo "9. Exit"

    echo "Enter your choice:"
    read choice

    case $choice in
        1) hostnamectl ;;
        2) df -h ;;
        3) free -h ;;
        4) whoami ;;
        5) ps aux ;;
        6) ss -tuln ;;
        7) systemctl --failed ;;
        8) date ;;
        9) echo "Exiting program"; exit ;;
        *) echo "Invalid choice" ;;
    esac

    echo "Press Enter to continue"
    read
done
