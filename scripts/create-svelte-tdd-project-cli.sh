#!/bin/sh

cat << endOfBanner

   +-+-+-+-+-+-+
   |S|v|e|l|t|e|
   +-+-+-+-+-+-+
     |T|D|D|
     +-+-+-+


endOfBanner
echo "...Cybernetically enhanced web apps"
echo ""
echo "...Creating " $1

npx degit sveltejs/template $1

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

echo -e "${green}\xE2\x9C\x94 ${grey}created project "

echo ""
echo "  Installing npm modules... "

cd $1
npm install

echo ""
echo "  Adding dependencies... "
npm i -D jest @testing-library/svelte @testing-library/user-event @testing-library/jest-dom jest-environment-jsdom svelte-jester

echo ""
echo "  Initliasing GIT repo... "
git init

echo ""
echo "  Adding npm scripts... "
npmAddScript -k test -v "jest --watch"

sed -i '' -e '$ d' package.json

cat << EOF >> package.json
,
"jest": {
    "transform": {
      "^.+\\\.svelte$": "svelte-jester",
      "^.+\\\.js$": "babel-jest"
    },
    "testEnvironment": "jsdom"
  }
}
EOF