#!/bin/bash

cat << endOfBanner
                   _
   ___ ___ ___ ___| |_ ___
  |  _|  _| -_| .'|  _| -_|
  |___|_| |___|__,|_| |___|
                       _
   ___ ___ ___ ___ ___| |
  | . | .'|  _|  _| -_| |
  |  _|__,|_| |___|___|_|
  |_|
   ___ ___ ___
  | .'| . | . |
  |__,|  _|  _|
      |_| |_|

endOfBanner


e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`


echo "generating app...."

if npm list --depth 1 --global parcel-bundler > /dev/null 2>&1; then
    echo -e "${green}\xE2\x9C\x94 ${grey}parcel-bundler is installed"
else
    # add the parcel bundler globally
    npm i --g parcel-bundler
    echo -e "${green}\xE2\x9C\x94 ${grey}added parcel-bundler as a global npm package"
fi


git clone git@github.com:elesq/ts-parcel-app.git $1
echo -e "${green}\xE2\x9C\x94 ${grey}cloned starter repo as" $1

cd $1 && rm -rf .git
echo -e "${green}\xE2\x9C\x94 ${grey}Removed starter repo git trail."


