#!/bin/bash
# Purpose: To demonstrate advanced concepts in case statements.
# Execution: "sh script_name.sh"

echo "\033[7mPlease input a character:\033[0m \c"
read input

case $input in 
[0-9]*)
    echo "The word begins with a digit."
    ;;
*[0-9])
    echo "The word ends with a digit."
    ;;
[aeiou]* | [AEIOU]*)
    echo "The word begins with a vowel."
    ;;
[bcdfghjklmnpqrstvwxyz]* | [BCDFGHJKLMNPQRSTVWXYZ]*)
    echo "The word beings with a consonant."
    ;;
???)
    echo "You entered a three letter word."
    ;;
*)  
    echo "I am not sure what you've entered."
    ;;
esac
