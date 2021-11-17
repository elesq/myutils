#!/bin/bash

echo ""
echo " ┬ ┬┌─┐┌┐ ┌─┐┌─┐┌─┐┬┌─   "
echo " │││├┤ ├┴┐├─┘├─┤│  ├┴┐   "
echo " └┴┘└─┘└─┘┴  ┴ ┴└─┘┴ ┴   "
echo " ┌─┐┌─┐┌─┐                 "
echo " ├─┤├─┘├─┘                 "
echo " ┴ ┴┴  ┴                    "
echo ""
echo "webpack based app generator..."
echo ""
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
echo -e "\xE2\x9C\x94 created"