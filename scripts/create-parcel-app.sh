#!/bin/bash

cat << endOfBanner
                  _
  ___ ___ ___ ___| |_ ___
 |  _|  _| -_| .'|  _| -_|
 |___|_| |___|__,|_| |___|
                      _
  ___ ___ ___ ___ ___| |
 | . | .'|  _|  _| -_| |
 |  _|__,|_| |___|___|_|
 |_|
  ___ ___ ___
 | .'| . | . |
 |__,|  _|  _|
     |_| |_|

endOfBanner
echo "generating app...."

if npm list --depth 1 --global parcel-bundler > /dev/null 2>&1; then
    echo -e "\xE2\x9C\x94 parcel-bundler is installed"
else
    # add the parcel bundler globally
    npm i --g parcel-bundler
    echo -e "\xE2\x9C\x94 added parcel-bundler as a global npm package"
fi


git clone git@github.com:elesq/ts-parcel-app.git $1
echo -e "\xE2\x9C\x94 cloned starter repo as" $1

cd $1 && rm -rf .git
echo -e "\xE2\x9C\x94 Removed starter repo git trail."


