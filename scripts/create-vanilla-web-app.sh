#!/bin/bash

cat << endOfBanner

               _ _ _
   _ _ ___ ___|_| | |___
  | | | .'|   | | | | .'|
   \_/|__,|_|_|_|_|_|__,|
             _
   _ _ _ ___| |_    ___ ___ ___
  | | | | -_| . |  | .'| . | . |
  |_____|___|___|  |__,|  _|  _|
                       |_| |_|

endOfBanner

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`


echo "Cloning repo...."

git clone git@github.com:elesq/vanilla-web-app.git $1
echo -e "${Green}\xE2\x9C\x94 ${grey}cloned base repository"

echo "Cleaning repository status and removing remote..."
cd $1 && rm -rf .git

echo -e "${green}\xE2\x9C\x94 ${grey}removed origin and git."
echo -e "${green}\xE2\x9C\x94 ${grey}created"