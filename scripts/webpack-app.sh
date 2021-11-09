#!/bin/bash

echo ""
echo " ┬ ┬┌─┐┌┐ ┌─┐┌─┐┌─┐┬┌─   "
echo " │││├┤ ├┴┐├─┘├─┤│  ├┴┐   "
echo " └┴┘└─┘└─┘┴  ┴ ┴└─┘┴ ┴   "
echo " ┌─┐┌─┐┌─┐                 "
echo " ├─┤├─┘├─┘                 "
echo " ┴ ┴┴  ┴                    "
echo ""
echo " webpack based app generator..."
echo ""
echo " creating app directory" $1

mkdir $1

cd $1 && npm init -y

npm install --save @babel/core
npm install --save @babel/cli
npm install --save @babel/preset-env
npm install --save @babel/polyfill

npm install --save babel-loader

npm install --save webpack
npm install --save webpack-cli

