#! /bin/bash

read -p "enter your key" key
read -p "ennter $key value" val

arr=( "$key:$val" )
echo ${arr[@]}
