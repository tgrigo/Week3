#!/bin/bash
#####

# Create the fruit names list
names='Apple Mango Strawberry Orange Banana'
# For each items in the 'names' list assign each to the variable '$names'
for fruitname in $names
# Do the following
do
# Echo the fruit names to the screen
echo "FRUITS:" $fruitname
done
# The following confirms the script continues to run after the items in the list were executed
echo
echo mmmm now I am hungry !
