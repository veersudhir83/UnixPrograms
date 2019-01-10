#!/bin/bash
# Purpose: To display the duration the given user took time to login
# Execution "sh script_name.sh"

echo "Enter UserName to check: \c"
read loginName
duration=0

while true
do
    who | grep "$loginName" > /dev/null
    if [ $? -eq 0 ]
    then
        echo "$loginName has logged in"
        if [ $duration -ne 0 ]
        then
            echo "$loginName is $duration minutes late to login"            
        fi
        exit
    else
        $duration=`expr $duration + 1`
        sleep 60
    fi
done
