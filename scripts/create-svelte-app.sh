#!/bin/sh

cat << endOfBanner


   +-+-+-+-+-+-+
   |c|r|e|a|t|e|
   +-+-+-+-+-+-+
   |S|v|e|l|t|e|
   +-+-+-+-+-+-+
   |a|p|p|
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

echo "  Start server with:"
echo "  npm run dev"
echo ""