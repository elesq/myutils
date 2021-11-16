#!/bin/bash

echo ""
echo ""
echo " ┌┬┐┌─┐  ┌─┐┌─┐┌─┐  ┌─┐┌┬┐┌─┐┬─┐┌┬┐┌─┐┬─┐ "
echo "  │ └─┐  ├─┤├─┘├─┘  └─┐ │ ├─┤├┬┘ │ ├┤ ├┬┘   "
echo "  ┴ └─┘  ┴ ┴┴  ┴    └─┘ ┴ ┴ ┴┴└─ ┴ └─┘┴└─   "
echo ""
echo " typescript project setup... "
echo ""

git clone git@github.com:elesq/ts-app-starter.git $1
echo -e " \xE2\x9C\x94 created project" $1

cd $1

if test -f "./package.json"; then
    echo -e " \xE2\x9C\x94 package.json exists. "
fi

npm i --save-dev nodemon concurrently @types/node

git remote rm origin

echo ""
echo " Update the scripts in package.json as per the readme document."
echo " run npm start"

