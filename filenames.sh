#!/bin/bash
#######

IFS=$'\n'
for line in $(cat ./filenames.txt)

do
    if [ -f "$line" ]; then
        echo -e "$line - that file exists"
    elif [ -d "$line" ]; then
        echo -e "$line - is a directory"
    else 
        echo -e "$line - i dont know what that is"
    fi
done