#!/bin/bash

while true
do
    echo "----- USER MANAGEMENT MENU -----"
    echo "1. Create a new user"
    echo "2. Delete an existing user"
    echo "3. Modify user information"
    echo "4. Change user password"
    echo "5. Lock a user account"
    echo "6. Unlock a user account"
    echo "7. Display user information"
    echo "8. Display user's groups"
    echo "9. Display all system users"
    echo "10. Check whether a user exists"
    echo "11. Display logged-in users"
    echo "12. Change user's login shell"
    echo "13. Change user's home directory"
    echo "14. Set account expiration date"
    echo "15. Display account aging information"
    echo "16. Remove user with home directory"
    echo "17. Exit"

    echo "Enter your choice:"
    read ch

    case $ch in
        1)
            echo "Enter username:"
            read u
            sudo useradd "$u"
            ;;
        2)
            echo "Enter username:"
            read u
            sudo userdel "$u"
            ;;
        3)
            echo "Enter username:"
            read u
            sudo usermod -c "New User" "$u"
            ;;
        4)
            echo "Enter username:"
            read u
            sudo passwd "$u"
            ;;
        5)
            echo "Enter username:"
            read u
            sudo passwd -l "$u"
            ;;
        6)
            echo "Enter username:"
            read u
            sudo passwd -u "$u"
            ;;
        7)
            echo "Enter username:"
            read u
            id "$u"
            ;;
        8)
            echo "Enter username:"
            read u
            groups "$u"
            ;;
        9)
            cut -d: -f1 /etc/passwd
            ;;
        10)
            echo "Enter username:"
            read u
            if id "$u" >/dev/null 2>&1
            then
                echo "User exists"
            else
                echo "User does not exist"
            fi
            ;;
        11)
            who
            ;;
        12)
            echo "Enter username:"
            read u
            echo "Enter new shell:"
            read s
            sudo usermod -s "$s" "$u"
            ;;
        13)
            echo "Enter username:"
            read u
            echo "Enter new home directory:"
            read h
            sudo usermod -d "$h" "$u"
            ;;
        14)
            echo "Enter username:"
            read u
            echo "Enter expiration date (YYYY-MM-DD):"
            read d
            sudo chage -E "$d" "$u"
            ;;
        15)
            echo "Enter username:"
            read u
            sudo chage -l "$u"
            ;;
        16)
            echo "Enter username:"
            read u
            echo "Are you sure? (y/n)"
            read ans
            if [ "$ans" = "y" ]
            then
                sudo userdel -r "$u"
            else
                echo "Deletion cancelled"
            fi
            ;;
        17)
            echo "Exiting program"
            exit
            ;;
        *)
            echo "Invalid choice"
            ;;
     esac

    echo "------------------------------"
done


