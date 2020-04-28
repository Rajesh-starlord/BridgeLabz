#! /bin/bash -x

#unit conversion from inches to feet

read -p  "enter inches" in
feet=`awk "BEGIN {print $in / 12}"`
echo "$in inches = $feet feet"
