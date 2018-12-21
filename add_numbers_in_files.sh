#!/usr/bin/env bash
# Purpose: Script to add numbers in two files and give result
# Copyright: (C) 2018 Sudheer K Veeravalli - All Rights Reserved
# Permission to copy and modify is granted under the public license
# Last revised: 2018/10/09
# @(#)$Id$

## Usage: ./addNumbersInFiles.sh file1 file2 ... fileN

if (test "$#" -gt "0"); then
    result=0
    filesThatDonotExist=""
    delimiter=","
    for arg; do
        if [ -f $arg ]; then
            result=$((result+$(tr "\n" "+" <$arg | sed 's/+$/\n/')))
        else
            filesThatDonotExist+=$delimiter$arg
        fi
    done
    echo "Sum of Numbers="$result
    if [[ ! -z "$filesThatDonotExist" ]]; then
        echo 'Files that donot exist: '
        echo ${filesThatDonotExist:1:`expr length $filesThatDonotExist`}
    fi
else
    echo "Provide at least one file to run the program"
fi