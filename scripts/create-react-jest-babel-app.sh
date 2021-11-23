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

echo -e "\xE2\x9C\x94 added babel dev packages"
echo -e "\xE2\x9C\x94 added babel runtime"
echo -e "\xE2\x9C\x94 added jest"
echo -e "\xE2\x9C\x94 added react & react-dom"

