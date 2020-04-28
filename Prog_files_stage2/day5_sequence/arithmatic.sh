#! /bin/bash -x
#to perform arithmatic operations between two user given variables

read -p "enter 1st no" a
read -p "enter 2nd no" b

sum=`awk "BEGIN {print $a + $b}"`
diff=`awk "BEGIN {print $a - $b}"`
mul=`awk "BEGIN {print $a * $b}"`
div=`awk "BEGIN {print $a / $b}"`


echo "sum=" $sum
echo "diff= "$diff
echo "mul= "$mul
echo "div= " $div
