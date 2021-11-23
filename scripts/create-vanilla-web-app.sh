#!/bin/bash

cat << endOfBanner

             _ _ _
 _ _ ___ ___|_| | |___
| | | .'|   | | | | .'|
 \_/|__,|_|_|_|_|_|__,|


           _
 _ _ _ ___| |_    ___ ___ ___
| | | | -_| . |  | .'| . | . |
|_____|___|___|  |__,|  _|  _|
                     |_| |_|

endOfBanner
echo "Cloning repo...."

git clone git@github.com:elesq/vanilla-web-app.git $1
echo -e "\xE2\x9C\x94 cloned base repository"

echo "Cleaning repository status and removing remote..."
cd $1 && rm -rf .git

echo -e "\xE2\x9C\x94 removed origin and git."
echo -e "\xE2\x9C\x94 created"