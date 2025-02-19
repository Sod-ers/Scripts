#!/bin/bash

prompt="Enter password: "
password=""

# Turn off echo
stty -echo

# Print prompt
printf "$prompt"

while IFS= read -r -s -n1 char; do
  if [[ $char == $'\0' ]]; then
    break
  elif [[ $char == $'\177' ]]; then
    if [ ${#password} -gt 0 ]; then
      password="${password%?}"
      printf "\b \b"
    fi
  else
    password+="$char"
    printf "*"
  fi
done

# Turn echo back on
stty echo
printf "\n"

# The password is now stored in the $password variable
echo "Password entered: $password"
