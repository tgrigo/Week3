#!/bin/bash
chmod a+x ~/scripts/portfolio/Week2/passwordCheck.sh
chmod a+x ~/scripts/portfolio/Week2/foldermaker.sh
chmod a+x ~/scripts/portfolio/Week2/setPassword.sh
chmod a+x ~/scripts/portfolio/Week2/foldercopier.sh
chmod a+x ~/scripts/portfolio/Week3/calculator.sh
chmod a+x ~/scripts/portfolio/Week3/megafoldermaker.sh
chmod a+x ~/scripts/portfolio/Week3/filenames.sh
chmod a+x ~/scripts/portfolio/Week3/webDownloader.sh
     
# Some colours
RED="\033[0;31m"
BRed="\033[1;31m"
BBlu="\033[1;34m"
YELLOW="\033[1;33m"
LBLUE="\033[1;34m"
ULINE="\033[3m"
WHONBLU="\033[37;44m"
BLCKONWHTE='\033[30;47m'
REDONWHTE='\033[31;47m'
BGREEN='\033[1;32m'
BLUEONWHTE='\033[34;47m'
NC="\033[0m"

echo 
echo -e "${BLCKONWHTE} Hello and welcome to my improved menu page, first we need you to enter your password: ${NC}"
################### Intial password is 1234   ##############################################

# the two pipes exits the parent script if the child script returns a false return value
# the parent script is initiated by the following command

~/scripts/portfolio/Week2/passwordCheck.sh || exit 1

echo -e "${BBlu}Please select what you would like to do from the below menu: ${NC}"

# Created Lists become our input

select os in Create\ Folder Copy\ Folder Set\ New\ Password Calculator Create\ Weekly\ Folders Check\ File\ Names Download\ A\ File
do
case $os in 

# The Create Folder case is used here
    "Create Folder")
    bash ~/scripts/portfolio/Week2/foldermaker.sh
    # exit 0
    ;;
# The Copy Folder case is used here
    "Copy Folder")
    bash ~/scripts/portfolio/Week2/foldercopier.sh
    # exit 0
    ;;
# The Set New Pssword case is used here
    "Set New Password")
    bash ~/scripts/portfolio/Week2/setPassword.sh
    # exit 0
    ;;
# The Calculator case is used here
    "Calculator")
    bash ~/scripts/portfolio/Week3/calculator.sh
    # exit 0
    ;;
# The Create Weekly Folders case is used here
    "Create Weekly Folders")
    bash ~/scripts/portfolio/Week3/megafoldermaker.sh
    # exit 0
    ;;
# The Check File Names case is used here
    "Check File Names")
    bash ~/scripts/portfolio/Week3/filenames.sh
    # exit 0
    ;;
# The Download A File case is used here
    "Download A File")
    bash ~/scripts/portfolio/Week3/webDownloader.sh
    # exit 0
    ;;
# invalid data
    *)
    echo -e "${RED}Sorry but thats an invalid entry, try again.${NC}"
    # exit 1
    ;;
esac

read -p "$(echo -e ${BBlu}Press ${NC})$(echo -e ${BRed}enter ${NC})$(echo -e ${BBlu}to make another selection or type${NC})$(echo -e ${BRed} exit ${NC})$(echo -e ${BBlu}to exit: ${NC})" exit;

if [ "$exit" = "exit" ]; then
    echo -e "${BLCKONWHTE}Goodbye and have a nice day${NC}" && exit 0
    echo
else
echo "1) Create Folder
2) Copy Folder
3) Set New Password
4) Calculator
5) Create Weekly Folders
6) Check File Names
7) Download A File"

fi
done