#!/bin/bash

cat << endOfBanner
                       _
   ___ _ _ ___ ___ ___| |_ ___ ___ ___
  | . | | | . | . | -_|  _| -_| -_|  _|
  |  _|___|  _|  _|___|_| |___|___|_|
  |_|     |_| |_|
                 _         _
   ___ ___ ___  |_|___ ___| |_
  | . |  _| . | | | -_|  _|  _|
  |  _|_| |___|_| |___|___|_|
  |_|         |___|
endOfBanner

# colors
e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`




if [[ $1 == "-jest" ]]
then
    echo "         _ _   _        _         _           "
    echo "   _ _ _|_| |_| |_     |_|___ ___| |_         "
    echo "  | | | | |  _|   |    | | -_|_ -|  _|_ _ _   "
    echo "  |_____|_|_| |_|_|   _| |___|___|_| |_|_|_|  "
    echo "                     |___|                    "
    echo ""

    #create_repo()
    git clone git@github.com:elesq/new-puppeteer-project-cli.git $2
    cd $2 && git remote rm origin
    npm i --save puppeteer@10.1.0 jest jest-image-snapshot @types/puppeteer

elif [[ $1 == "-mocha" ]]
then
    echo "         _ _   _                    _               "
    echo "   _ _ _|_| |_| |_    _____ ___ ___| |_ ___         "
    echo "  | | | | |  _|   |  |     | . |  _|   | .'|_ _ _   "
    echo "  |_____|_|_| |_|_|  |_|_|_|___|___|_|_|__,|_|_|_|  "
    echo ""

    #create_repo()
    git clone git@github.com:elesq/new-puppeteer-project-cli.git $2
    cd $2 && git remote rm origin
    npm i --save puppeteer@10.1.0 mocha chai @types/puppeteer
else
    echo -e "Bad call to script. Use: scriptName -teslib projectName"
    exit 1
fi


echo -e "${green}\xE2\x9C\x94 ${grey}created project" $2
echo -e "${green}\xE2\x9C\x94 ${grey}cloned starter repo"
echo -e "${green}\xE2\x9C\x94 ${grey}added npm packages"
echo -e "${green}\xE2\x9C\x94 ${grey}added puppeteer types"
