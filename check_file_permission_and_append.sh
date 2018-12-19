#!/bin/bash
# ***** To check if user has write permission to given file and append *****
# Execution "sh check_file_permission_and_append.sh"

echo "\033[7mInput a file to check in the current directory:\033[0m"
read fileName
if [ -f $fileName ]
then
    if [ -w $fileName ]
    then
        echo "\033[7mYou have permission to write.. Start writing text to append.. press Ctrl+D to stop writing\033[0m"
        cat >> $fileName
    else 
        echo "You donot have write permission on the given file"
    fi
else
    echo "File doesnot exist"
fi
