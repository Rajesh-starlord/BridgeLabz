#! /bin/bash -x

#to generate random no between two use defined numbers

read -p "enter starting no" start
read -p "enter ending point" end

diff=$(($start-$end+1));
rno=$(($(($RANDOM%$diff))+$start));
echo $rno


