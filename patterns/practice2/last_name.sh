#! /bin/bash -x
#validating user name

read -p "enter Last name---" Last_name
Lname_pat="^([A-Z]{1})+[a-z]{2,}$"
if [[ $Last_name =~ $Lname_pat ]];
then
        echo "Last name successfully registered:"
else
        echo "enter a valid Last name:"
fi
