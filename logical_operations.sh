#!/bin/bash
# ***** Perform logical operations *****
# Execution: "sh script_name.sh"

echo "\033[7mInput a number between 1 and 100:\033[0m \c"
read num
if [ $num -ge 1 -a $num -le 100 ] 
then
    echo "The number is in the given range."
else
    echo "You crossed the range. Please try again."
fi
