#!/bin/bash

cat << endOfBanner

   _
  | |_ ___ ___ _ _ _ _ _ ___
  | . |  _| -_| | | | | | . |_ _ _
  |___|_| |___|_____|___|  _|_|_|_|
                        |_|

endOfBanner

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

echo "running brew services.... "

brew outdated
echo -e "${green}\xE2\x9C\x94 ${grey}brew outdated"

brew update
echo -e "${green}\xE2\x9C\x94 ${grey}brew update"

brew upgrade
echo -e "${green}\xE2\x9C\x94 ${grey}brew upgrade"

brew cleanup
echo -e "${green}\xE2\x9C\x94 ${grey}brew cleanup"

brew doctor
echo -e "${green}\xE2\x9C\x94 ${grey}brew doctor"