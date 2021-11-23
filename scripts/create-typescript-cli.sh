#!/bin/bash

cat << endOfBanner

  _                           _     _
 | |_ _ _ ___ ___ ___ ___ ___|_|___| |_
 |  _| | | . | -_|_ -|  _|  _| | . |  _|
 |_| |_  |  _|___|___|___|_| |_|  _|_|
     |___|_|                   |_|
        ___ ___ ___
       | .'| . | . |
       |__,|  _|  _|
           |_| |_|
      _           _
  ___| |_ ___ ___| |_ ___ ___
 |_ -|  _| .'|  _|  _| -_|  _|
 |___|_| |__,|_| |_| |___|_|

endOfBanner
echo " typescript project setup... "

# output controllers
bold=$(tput bold)
normal=$(tput sgr0)

# pull the base repo
git clone git@github.com:elesq/ts-app-starter.git $1
echo -e "\xE2\x9C\x94 created project" $1

# change into project directory
cd $1

if test -f "./package.json"; then
    echo -e "\xE2\x9C\x94 package.json exists. "
fi

# add the npm packages
npm i --save-dev nodemon concurrently @types/node

echo -e "\xE2\x9C\x94 added types."
# remove the origin from the cloned repo
git remote rm origin
echo -e "\xE2\x9C\x94 removed link to base repo as origin."

echo ""
echo "  ${bold}Added packages:${normal}"
echo "    @types/node"
echo "    nodemon"
echo "    concurrently"
echo ""
echo "Update the scripts in ${bold}package.json ${normal}as per the readme document."
echo "run ${bold}npm start${normal}"

