#!/bin/bash
######

# Colour Variables
RED="\033[0;31m"
BRed="\033[1;31m"
NC="\033[0m"
# IFS to ignore spaces, new lines etc.
IFS=$'\n'
# While loop begins and associate url variable
while read -p "Please type a website URL to download or type $(echo -e $BRed'exit'$NC) to quit: " url; 
do
    # uses url variable and if input is exit then it breaks the while loop
    if [ "$url" == exit ]; then
        echo "Goodbye" && break
    else
    # The creation of the new folder and its variable
        read -p "Please enter a folder name to save the URL to: " folder
        mkdir -p $folder
    # Change the current directory to the newly created one
        cd "$folder"
    # Save the url sepcified by its variable by wget to a file
        sudo wget -O -P - "$url"
        echo
        echo -e "Well done your URL has been saved to the folder:${BRed} $PWD${NC}."
        echo
    fi
done
exit 0