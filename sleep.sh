#!/bin/bash
# Purpose: To demonstrate usage of sleep command.
# Execution: "sh script_name.sh"

echo "\033[7mPlease input a sentence:\033[0m \c"
read sentence

for word in $sentence
do
    printf %s "$word "
    sleep 1
done
echo ""
