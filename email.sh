#! /bin/bash -x
shopt -s extglob
read -p "enter your email : " email
pattern="^([A-Za-z]+(\-|\.|\_|\+)?[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
if [[ ( $email =~ $pattern ) ]]
then
 echo "valid email"
else
  echo "invalid email"
fi
