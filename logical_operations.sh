#!/bin/bash
# ***** Perform logical operations *****
# Execution: "sh script_name.sh"

echo "\033[7mInput a number between 1 and 100:\033[0m "
read num

# use any of the below syntaxes
# if [ $num -ge 1 -a $num -le 100 ] # -o for OR operator
if [ $num -ge 1 ] && [ $num -le 100 ] # || for OR operator
then
    echo "The number is in the given range."
else
    echo "You crossed the range. Please try again."
fi

echo "\033[7mInput a char:\033[0m \c"
read char
if [ `echo $char | wc -c` -eq 2 ]
then
    if [ $char = a -o $char = A -o $char = e -o $char = E -o $char = i -o $char = I -o $char = o -o $char = O -o $char = u -o $char = U ]
    then
        echo "You entered a vowel."
    else
        echo "You entered a consonant."
    fi
else
    echo "Invalid Input..."
fi
