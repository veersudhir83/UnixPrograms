#!/bin/bash
# ***** To check if user has write permission to given file and append *****
# Execution "sh script_name.sh"

echo "\033[7mInput a file to check in the current directory:\033[0m "
read fileName
if [ -f $fileName ]
then
    if [ -w $fileName ]
    then
        echo "\033[7mYou have permission to write.. Type matter to append.. To quit press Ctrl+D\033[0m"
        cat >> $fileName
    else 
        echo "Aw.. Snap !! You donot have write permission on the given file"
    fi
else
    echo "File doesnot exist"
fi
