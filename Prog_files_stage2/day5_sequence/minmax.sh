#! /bin/bash -x

num1=$(($RANDOM%1000))
num2=$(($RANDOM%1000))
num3=$(($RANDOM%1000))

echo $num1 "||" $num2 "||" $num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "max="$num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "max="$num2
else
    echo "max="$num3
fi

if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]
then
    echo "min="$num1
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]
then
    echo "min="$num2
else
    echo "min="$num3
fi


