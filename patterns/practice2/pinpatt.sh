#! /bin/bash -x
#pattern matching

read -p "enter your pincode" pin
pat="^[0-9]{4}[ ]([0-9]{2})$"
if [[ $pin =~ $pat ]];
then
        echo "valid"
else
        echo "invalid"
fi
