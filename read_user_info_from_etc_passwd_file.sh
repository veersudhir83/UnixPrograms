#!/bin/bash
# Purpose: Retrieve user information from /etc/passwd file using IFS and grep.
# Execution: "sh script_name.sh"

echo "\033[7mPlease input username:\033[0m \c"
read userName

match_found="no"
# check if file exists
if [ -f /etc/passwd ]
then
    if [ -r /etc/passwd ]
    then
        for line in `grep $userName /etc/passwd`
        do
            if [ "$match_found" = "no" ]
            then 
                part=`echo $line | cut -c1-${#userName}`
                if [ "$part" = "$userName" ]
                then
                    IFS=:
                    set $line
                    echo "User Name=$1"
                    echo "Home Directory=$6"
                    echo "User ID=$3"
                    echo "Group ID=$4"
                    match_found="yes"
                fi
            fi
        done
        if [ "$match_found" = "no" ]
        then
            echo "No such user found."
        fi
    else
        echo "You donot have read permission on /etc/passwd file."
    fi
else
    echo "The passwd file /etc/passwd file does not exist."
fi
