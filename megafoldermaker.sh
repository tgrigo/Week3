#!/bin/bash

# I have modified the original mege folder maker to allow the user to input the two folder names, 
# rather that having to put them in the command line after the script name as per the copy and
# paste opton provided in the text

# Some colours
# $(echo -e $BRed'<text>'$NC) can be used in a read line
RED="\033[0;31m"
BRed="\033[1;31m"
YELLOW="\033[1;33m"
LBLUE="\033[1;34m"
ULINE="\033[3m"
WHONBLU="\033[37;44m"
NC="\033[0m"

echo
while read -p "Please enter your two new $(echo -e $YELLOW'Week Folder'$NC) numbers$(echo -e $LBLUE -two new folder numbers with single space between-$NC) or type $(echo -e $BRed'exit'$NC) to close: " A B;
echo
do
# Having the two variables exit without an error output caused problems, I had to separate the two variables into an if and elif structure
    if [ "$A" = "exit" ]; then
        echo "Goodbye :-)" && break
        echo
    elif [ "$B" = "exit" ]; then
        echo "Goodbye :-)" && break
        echo
    else
# this bumps the cd to the scripts folder
        cd /home/student/scripts
        echo "Creating $(echo -e $YELLOW'Week Folder'$NC) named $(echo -e "$WHONBLU"Week"$A"$NC) and $(echo -e $YELLOW'Week Folder'$NC) named $(echo -e "$WHONBLU"Week"$B"$NC) in$(echo -e $ULINE "$PWD"$NC)"
            mkdir "Week$A"
            mkdir "Week$B"
        echo
    fi
done