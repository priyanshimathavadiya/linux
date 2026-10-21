!/bin/bash

while true
do
    echo "----- FILE SEARCH MENU -----"
    echo "1. Find file by name"
    echo "2. Find file by extension"
    echo "3. Find file by size"
    echo "4. Find file by owner"
    echo "5. Find file by permission"
    echo "6. Files modified within given days"
    echo "7. Files not modified for given days"
    echo "8. Files modified between two dates"
    echo "9. Find files using multiple conditions"
    echo "10. Count matching files"
    echo "11. Exit"

    echo "Enter your choice:"
    read ch

    case $ch in

    1)
        echo "Enter directory:"
        read dir
        echo "Enter file name:"
        read name
        find "$dir" -type f -name "$name"
        ;;

    2)
        echo "Enter directory:"
        read dir
        echo "Enter extension (txt, c, py):"
        read ext
        find "$dir" -type f -name "*.$ext"
        ;;

    3)
        echo "Enter directory:"
        read dir
        echo "Enter size in bytes:"
        read size
        find "$dir" -type f -size "${size}c"
        ;;

    4)
        echo "Enter directory:"
        read dir
        echo "Enter owner name:"
        read owner
        find "$dir" -type f -user "$owner"
        ;;

    5)
        echo "Enter directory:"
        read dir
        echo "Enter permission (e.g. 644):"
        read perm
        find "$dir" -type f -perm "$perm"
        ;;

    6)
        echo "Enter directory:"
        read dir
        echo "Enter number of days:"
        read days
        find "$dir" -type f -mtime "-$days"
        ;;

    7)
        echo "Enter directory:"
        read dir
        echo "Enter number of days:"
        read days
        find "$dir" -type f -mtime "+$days"
        ;;

    8)
        echo "Enter directory:"
        read dir
        echo "Enter start date (YYYY-MM-DD):"
        read start
        echo "Enter end date (YYYY-MM-DD):"
        read end
        find "$dir" -type f -newermt "$start" ! -newermt "$end 23:59:59"
        ;;

    9)
        echo "Enter directory:"
        read dir
        echo "Enter file name:"
        read name
        echo "Enter owner:"
        read owner
        echo "Enter permission (e.g. 644):"
        read perm
        echo "Enter maximum size in bytes:"
        read size

        find "$dir" -type f -name "$name" -user "$owner" -perm "$perm" -size "-${size}c"
        ;;

    10)
        echo "Enter directory:"
        read dir
        echo "Enter file name:"
        read name

        count=$(find "$dir" -type f -name "$name" | wc -l)
        echo "Total matching files: $count"
        ;;

    11)
        echo "Program ended."
        break
        ;;

    *)
        echo "Invalid choice! Please enter 1 to 11."
        ;;
    esac

done


