#! /bin/bash -x

read -p "enter a string ends with 'thing'" word
if [[ $word =~ ^(some|any)+thing$ ]];
then
 	echo "yes"
else
	echo "no"
fi
