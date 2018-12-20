#!/bin/bash
# Purpose: To check if given file/directory exists in the current directory.
# Execution "sh script_name.sh"
###### Further options -r, -w and -x to check if file has read/write/execute permissions ######

echo "\033[7mInput a file/directory name to check in the current directory:\033[0m "
read fileName
message=""
if [ -f $fileName ]
then
    message="File Exists"
    if [ -s $fileName ]
    then
        message="$message and is not empty"
    else 
        message="$message and is empty"
    fi
elif [ -d $fileName ]
then
    message="Directory exists"
    countOfFiles=`find $fileName -type f | wc -l`
    countOfDirs=`find $fileName -mindepth 1 -type d | wc -l`
    message="$message and has $countOfFiles files and $countOfDirs folders in it..."
else
    message="File/Directory doesnot exist"
fi
echo $message
