#!/bin/sh

cat << endOfBanner

                 _
 ___ ___ ___ ___| |_ ___
|  _|  _| -_| .'|  _| -_|
|___|_| |___|__,|_| |___|
             _ _
 ___ _ _ ___| | |_ ___
|_ -| | | -_| |  _| -_|
|___|\_/|___|_|_| |___|

 ___ ___ ___
| .'| . | . |
|__,|  _|  _|
    |_| |_|

endOfBanner
echo "...Cybernetically enhanced web apps"
echo ""
echo "...Creating " $1

npx degit sveltejs/template $1

echo -e "\xE2\x9C\x94 created project "
echo ""
echo "  cd " $1
echo "  npm install"
echo "  npm run dev"
echo ""