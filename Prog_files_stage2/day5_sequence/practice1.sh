#! /bin/bash -x

#Alternative way to find out random no between two no


read -p "enter starting point" a
read -p "ending point" b

seq $a $b | sort -R | head -n 1

