#!/bin/bash
# Purpose: To read contents of a file and prefix each line with line numbers.
# Execution: "sh script_name.sh"

echo "\033[7mPlease input the name of the file:\033[0m \c"
read fileName

if [ ! -f $fileName ]
then
    echo "File doesn't exist."
    exit
fi

if [ -z $fileName ]
then
    echo "File name is not provided."
    exit
fi

if [ -f $fileName ]
then
    noOfLines=0
    noOfWords=0

    # this will capture original terminal settings to restore later after script execution
    terminal=`tty`

    exec < $fileName

    while read -r line
    do
        noOfLines=`expr $noOfLines + 1`

        set $line
        noOfWords=`expr $noOfWords + $#`
    done

    echo "Total Lines=$noOfLines"
    echo "Total Words=$noOfWords"
fi

# restore original terminal settings
exec < $terminal
