#!/bin/bash

cat << endOfBanner
                       _
   ___ _ _ ___ ___ ___| |_ ___ ___ ___
  | . | | | . | . | -_|  _| -_| -_|  _|
  |  _|___|  _|  _|___|_| |___|___|_|
  |_|     |_| |_|
       _           _
   ___| |_ ___ ___| |_ ___ ___
  |_ -|  _| .'|  _|  _| -_|  _|
  |___|_| |__,|_| |_| |___|_|
                 _         _
   ___ ___ ___  |_|___ ___| |_
  | . |  _| . | | | -_|  _|  _|
  |  _|_| |___|_| |___|___|_|
  |_|         |___|

endOfBanner

git clone git@github.com:elesq/new-puppeteer-project-cli.git $1
cd $1 && git remote rm origin
npm i puppeteer@10.1.0 mocha chai
npm i @types/puppeteer


echo -e "\xE2\x9C\x94 created project" $1
echo -e "\xE2\x9C\x94 cloned starter repo"
echo -e "\xE2\x9C\x94 added npm packages: puppeteer, mocha & chai" $1
echo -e "\xE2\x9C\x94 added puppeteer types"
