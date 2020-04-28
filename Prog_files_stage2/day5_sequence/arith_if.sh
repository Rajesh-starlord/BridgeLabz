#! /bin/bash -x
#finding min and max 

read -p "enter no1---" a
read -p "enter no2---" b
read -p "enter no3---" c

val1=`awk "BEGIN {print $a + $b * $c}"`
val2=`awk "BEGIN {print $a % $b * $c}"`
val3=`awk "BEGIN {print $c + $a / $b}"`
val4=`awk "BEGIN {print $a * $b + $c}"`

echo "$val1 || $val2 || $val3 || $val4"

var=$val1-$val2-$val3-$val4

max=`echo $var | awk -F"-" '{m=$1; for (i=2; i<=NF; i++) if ($i > m) m = $i; print m}'`
min=`echo $var | awk -F"-" '{m=$1; for (i=2; i<=NF; i++) if ($i < m) m = $i; print m}'`
echo "min=$min"
echo "max=$max" 




