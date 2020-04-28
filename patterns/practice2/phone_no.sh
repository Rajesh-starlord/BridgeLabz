#! /bin/bash -x
#validating  phone no

read -p "enter phone no ---" phone
phone_pat="^((\+){1}91)[ ]{1}[1-9]{1}[0-9]{9}$"

if [[ $phone  =~ $phone_pat ]];
then
   echo "number successfully registered:"
else
   echo "enter a valid phone number:"
fi

validate $phone $phone_pat "number"
