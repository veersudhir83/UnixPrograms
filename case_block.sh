#!/bin/bash
# Purpose: To demonstrate case statements.
# Execution: "sh script_name.sh"

echo "\033[7mPlease input a character:\033[0m \c"
read input

case $input in 
[a-z])
    echo "You entered a lower case character."
    ;;
[A-Z])
    echo "You entered an upper case character."
    ;;
[0-9])
    echo "You entered a digit."
    ;;
?)
    echo "You entered a special symbol."
    ;;
*)  
    echo "You entered more than one character."
    ;;
esac
