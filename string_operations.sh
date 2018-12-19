#!/bin/bash
# ***** Play with string operations *****
# Execution: "sh script_name.sh"

str1="Hello"
str2="There!!"
str4=""
# Checks if the strings are equal
[ "$str1" = "$str2" ]
echo $?

# Checks if the strings are not equal
[ "$str1" != "$str2" ]
echo $?

# Checks if the length of the string is greater than zero
[ -n "$str1" ]
echo $?

# Checks if the string is null or has size zero
[ -z "$str3" ]
echo $?
[ -z "$str4" ]
echo $?

