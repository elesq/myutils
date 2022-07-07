#!/bin/bash

cat <<endOfBanner

  +-+-+-+-+-+-+-+-+-+-
  |T|y|p|e|s|c|r|i|p|t
  +-+-+-+-+-+-+-+-+-+-
  |S|t|a|r|t|e|r|
  +-+-+-+-+-+-+-+

endOfBanner
echo " typescript project setup... "

# output controllers
bold=$(tput bold)
normal=$(tput sgr0)

# pull the base repo
git clone git@github.com:elesq/ts-app-starter.git $1

e=$(printf "\e")
red=$(echo -e "$e[1;31m")
green=$(echo -e "$e[1;32m")
grey=$(echo -e "$e[1;90m")

echo -e "${green}\xE2\x9C\x94 ${grey}created project" $1

# change into project directory
cd $1

if test -f "./package.json"; then
    echo -e "${green}\xE2\x9C\x94 ${grey}package.json exists. "
fi

# add the npm packages
npm i --save-dev nodemon concurrently @types/node

echo -e "\xE2\x9C\x94 added types."
# remove the origin from the cloned repo
git remote rm origin
echo -e "\xE2\x9C\x94 removed link to base repo as origin."

# remove the readme from the clone
rm -rf readme.md

# run the typescript compiler on the new project
# to create a runnable version with npm start
tsc

echo ""
echo "  ${bold}Added packages:${normal}"
echo "    @types/node"
echo "    nodemon"
echo "    concurrently"
echo ""
echo "Update the scripts in ${bold}package.json ${normal}as per the readme document."
echo "run ${bold}npm start${normal}"
