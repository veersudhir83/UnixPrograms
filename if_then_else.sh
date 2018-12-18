#!/bin/bash
# ***** To demonstrate if-then-else-fi syntax *****
# Execution "sh scriptname.sh"

echo "\033[7mEnter a number\033[0m"
read num
if [ $num -gt 0 ]
then
    echo "It is a positive number"
elif [ $num -eq 0 ]
then
    echo "num is equal to zero"
else
    echo "It is a negative integer"
fi
