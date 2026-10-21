!/bin/bash

ls | cut -d. -f2 | sort | uniq -c
