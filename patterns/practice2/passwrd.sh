#! /bin/bash -x
#validatin password
#passwrd_pat="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[\!|\@|\#|\$|\%|\^|\&|\*]){8,}$"#for linux only

read -p "enter passwrd---" passwrd
one_upper="[A-Z]+"
char="[a-z]+"
atleast_one_no="[0-9]+"
one_sp_char=`echo $passwrd | grep -o "\!\|\@\|\#\|\$\|\%\|\^\|\&\|\*" | wc -l`
echo $one_sp_char
no_of_char="${#passwrd}"

if [[ $no_of_char -ge 8 ]] && [[ $passwrd =~ $one_upper ]] && [[ $passwrd =~ $char ]] && [[ $passwrd =~ $atleast_one_no ]] && [[ $one_sp_char -eq 1 ]];
then
   echo "passwrd successfully registered:"
else
   echo "invalid passwrd:"
fi

