#! /bin/bash -x

#program to read length and width in feet and display area in acre

read -p "enter a side of rectangle" length
read -p "enter another side of reactangle" width

area=$(($length*$width))
area_in_acre=`awk "BEGIN {print $area / 43560}"`

echo "area="$area_in_acre "acre"
