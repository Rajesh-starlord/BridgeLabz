#! /bin/bash -x

#to print the random no of a dice

rno=$(($(($RANDOM%6))+1));
echo $rno
