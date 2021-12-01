#!/bin/bash

cat << endOfBanner

 _____                     _
|     |___ ___ _ _ ___ ___| |_
|   --| . | . | | |  _| .'|  _|_ _ _
|_____|___|  _|_  |___|__,|_| |_|_|_|
          |_| |___|

endOfBanner

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

# copy passed value to clipboard
pbcopy < $1
echo -e "${green}\xE2\x9C\x94 ${grey}copied $1 to clipboard!"
