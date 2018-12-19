#!/bin/bash
# ***** To demonstrate if-then-else-fi syntax *****
# Execution "sh script_name.sh"

echo "\033[7mEnter a number:\033[0m \c"
read num
if [ $num -eq 0 ]
then
    echo "It is Zero"
elif [ $num -ge 0 ]
then
    echo "It is a positive integer"
elif [ $num -lt 0 ]
then
    echo "It is a negative integer"
fi
