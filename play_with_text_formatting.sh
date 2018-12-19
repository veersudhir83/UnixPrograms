#!/bin/bash
# ***** Display text in different formats using escape sequences *****
# Execution: "sh script_name.sh"

echo "display as normal text"
echo "\033[1mdisplay as bold text\033[0m"
echo "\033[7mdisplay as reversed ink\033[0m"
echo "using         carriage return \rreplaced with"

echo "total files/directories in the current folder="$#
