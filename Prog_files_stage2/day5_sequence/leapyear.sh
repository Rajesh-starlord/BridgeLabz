#! /bin/bash -x

#to check given year is leap year or not

echo -n "Enter year (yyyy) : "
read yy

isleap="false"

# find out if it is a leap year or not

if [ $((yy % 4)) -ne 0 ] ; then
   : #  not a leap year 
elif [ $((yy % 400)) -eq 0 ] ; then
   # yes, it's a leap year
   	isleap="true"
elif [ $((yy % 100)) -eq 0 ] ; then
   : # not a leap year 
else
   # it is a leap year
	isleap="true"
fi
if [ $isleap == "false" ] ; then
	echo "$yy is not a leap year"
else
	echo "$yy is a leap year"
fi
