#!/bin/bash

echo ""
cat << endOfBanner
                  _
  ___ ___ ___ ___| |_
 |  _| -_| .'|  _|  _|
 |_| |___|__,|___|_|
  _     _   _
 | |_ _| |_| |
 |  _| . | . |
 |_| |___|___|
    _         _
   |_|___ ___| |_
   | | -_|_ -|  _|
  _| |___|___|_|
 |___|

endOfBanner
echo "react project with jest & babel"


git clone git@github.com:elesq/react-jest-babel-kit.git $1
echo -e "\xE2\x9C\x94 react, jest & babel project cloned as" $1


# change into project directory, remove existing git origin
echo "Cleaning repository status and removing remote..."
cd $1 && git remote rm origin


# babel
npm i --save-dev @babel/core
npm i --save-dev @babel/preset-env
npm i --save-dev @babel/preset-react
npm i --save-dev @babel/plugin-transform-runtime
npm i --save @babel/runtime

# jest
npm i --save-dev jest

# react
npm i --save react react-dom

# jest types
npm install @types/jest

# webpack related
npm i --save-dev webpack webpack-cli babel-loader

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

echo -e "${green}\xE2\x9C\x94 ${grey}added babel dev packages"
echo -e "${green}\xE2\x9C\x94 ${grey}added babel runtime"
echo -e "${green}\xE2\x9C\x94 ${grey}added jest"
echo -e "${green}\xE2\x9C\x94 ${grey}added react & react-dom"
echo -e "${green}\xE2\x9C\x94 ${grey}added webpack, webpack-cli & babel-loader"

