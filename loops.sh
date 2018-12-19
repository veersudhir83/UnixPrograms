#!/bin/bash
# ***** To demonstrate different kind of loops *****
# Execution: "sh script_name.sh"

echo "\033[7mPlease input max number:\033[0m \c"
read maxNum
output=""

# using while loop
whileCount=1
while [ $whileCount -le $maxNum ]
do
    output="$output $whileCount"
    whileCount=`expr $whileCount + 1`
done
echo "Output using while loop = $output"

# using until loop
untilCounter=1
output=""
until [ $untilCounter -gt $maxNum ]
do
    output="$output $untilCounter"
    untilCounter=`expr $untilCounter + 1`
done
echo "Output using until loop = $output"

# using for loop
output=""
for i in $(seq 1 $maxNum); do
  output="$output $i"
done
echo "Output using   for loop = $output"
