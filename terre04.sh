#!/bin/bash

# Determine if the given argument is an even or odd integer...
# Attention: also handle negative integers.
# Langage : Shell
# Exec Command in Shell : (chmod +x terre04.sh) ./terre04.sh 

read -rp "Enter a number: " number

if ! [[ "$number" =~ ^[-+]?[0-9] ]];
  then echo "${number} is not an integer number";
  exit;
elif [ $((number%2)) -eq 0 ];
  then echo "$number is even";
else
  echo "$number is odd";
fi
