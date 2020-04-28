#! /bin/bash -x

#program to add  random numbers  from two dices 

dice1=$(($(($RANDOM%6))+1));
echo $dice1
dice2=$(($(($RANDOM%6))+1));
echo $dice2
sum=$(($dice1+$dice2));
echo "sum of two random dice no="$sum
