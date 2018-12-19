#!/bin/bash
# ***** To read .txt files from a directory and append the contents to a new output file *****
# Exection: "sh script_name.sh source_folder output_file"

source_folder=$1
output_file=$2

if [ $# -eq 2 ]
then
    dd if=/dev/null of=$output_file   # or echo > $output_file or cp /dev/null $output_file or truncate -s 0 $output_file
    for file_name in `ls -al $source_folder/*.txt | awk '{print $9}'`
    do
        cat $file_name >> $output_file
    done
else
    echo "\033[7mAw!! Snap.. Please provide source folder and output file name as arguments\033[0m"
    echo "Example: sh script_name.sh source_folder output_file"
fi
