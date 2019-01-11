#!/bin/bash
# Purpose: To display the duration the given user took time to login
# Execution "sh script_name.sh"

echo "Enter UserName to check: \c"
read loginName

grep "$loginName" /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
    echo "User found. Wait..."
else
    echo "User not found."
    exit
fi

duration=0

while true
do
    who | grep "$loginName" > /dev/null
    if [ $? -eq 0 ]
    then
        echo "$loginName has logged in."
        if [ $duration -ne 0 ]
        then
            if [ $duration -gt 59 ]
            then
                mins=`expr $duration / 60`
                secs=`expr %duration % 60`
                echo "$loginName is $min minutes and $secs seconds late to logging in."
            else
                echo "$loginName is %duration seconds late to logging in."
            fi
        fi
        exit
    else
        $duration=`expr $duration + 1`
        sleep 1
    fi
done
