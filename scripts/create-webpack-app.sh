#!/bin/bash

cat << endOfBanner

             _               _
   _ _ _ ___| |_ ___ ___ ___| |_
  | | | | -_| . | . | .'|  _| '_|
  |_____|___|___|  _|__,|___|_,_|
                |_|
     ___ ___ ___
    | .'| . | . |
    |__,|  _|  _|
        |_| |_|

endOfBanner
echo "creating app directory" $1

# output controllers
bold=$(tput bold)
normal=$(tput sgr0)

# create directory and cd, run npm init
mkdir $1

cd $1 && npm init -y

# add the dependency packages for a webpack project
npm install --save @babel/core
npm install --save @babel/cli
npm install --save @babel/preset-env
npm install --save @babel/polyfill

npm install --save babel-loader

npm install --save webpack
npm install --save webpack-cli

echo "  ${bold}added packages:${normal}"
echo "    @babel/core"
echo "    @babel/cli"
echo "    @babel/preset-env"
echo "    @babel/polyfill"
echo "    babel-loader"
echo "    webpack"
echo "    webpack-cli"

echo ""

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

echo -e "${green}\xE2\x9C\x94 ${grey}created"