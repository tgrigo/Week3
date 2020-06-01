#!/bin/bash
###########
# Colour Variables
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'

# No colour
NC='\033[0m' # No Color

# Bold Yellow
BIYellow='\033[1;33m'

# The user puts in two numbers for the input
echo
echo -e "Enter Your First Number To Be Calulated : \c" 
read Number1
echo -e "Enter Your Second Number To Be Calulated : \c" 
read Number2
  
# Echo Input type of operation 
echo 
echo -e "${RED}1. Add ${NC}"
echo -e "${BLUE}2. Subtract ${NC}"
echo -e "${GREEN}3. Multiply ${NC}"
echo -e "${PURPLE}4. Divide ${NC}"
echo
echo -e "Please enter the calculation you would like (1-4): \c"
read Calc
  
# THe case function undertakes the calulator operations 
case $Calc in

  1)res=`echo $Number1 + $Number2 | bc`
  ;; 
  2)res=`echo $Number1 - $Number2 | bc` 
  ;; 
  3)res=`echo $Number1 \* $Number2 | bc` 
  ;; 
  4)res=`echo "scale=2; $Number1 / $Number2" | bc` 
  ;; 
esac

# the following is the outcome 
echo
echo -e "${BIYellow}Result : $res ${NC}"
echo
exit 0
