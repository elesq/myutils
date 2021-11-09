#!/bin/sh

echo ""
echo "  ___ ____ ____ ____ ___ ____                    "
echo " |    |__/ |___ |__|  |  |___                    "
echo " |___ |  \ |___ |  |  |  |___                    "
echo ""
echo " ____ _  _ ____ _    ___ ____    ____ ___  ___   "
echo " [__  |  | |___ |     |  |___    |__| |__] |__]  "
echo " ___]  \/  |___ |___  |  |___    |  | |    |     "
echo ""
echo "...Cybernetically enhanced web apps"
echo ""
echo "...Creating " $1

npx degit sveltejs/template $1

echo ""
echo "cd " $1
echo "npm install"
echo "npm run dev"
echo ""