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
    terminal=`tty` # this will capture original terminal settings to restore later after script execution

    noOfLines=`wc -l $fileName | awk '{print $1}'`
    exec < $fileName

    count=1
    while IFS= read -r line
    do
        while [ ${#count} -ne ${#noOfLines} ] # to pad line numbers with zeros prefixed
        do
            count="0"$count
        done
        echo $count. $line
        count=`expr $count + 1`
    done
fi
exec < $terminal # restore original terminal settings
