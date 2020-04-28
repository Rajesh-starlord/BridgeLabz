#! /bin/bash -x
#pattern matching

read -p "enter a no" no
pattern="^([1-9]*[a-z A-Z]){3}[1-9 a-z A-Z]*$"
if [[ $no =~ $pattern ]];
then
        echo "valid"
else
        echo "invalid"
fi

