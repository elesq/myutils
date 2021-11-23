#!/bin/bash

cat << endOfBanner
  _
 | |_ ___ ___ _ _ _    _ _ ___
 | . |  _| -_| | | |  | | | . |
 |___|_| |___|_____|  |___|  _|
                          |_|
endOfBanner
echo "running brew services.... "

brew outdated
echo -e "\xE2\x9C\x94 brew outdated"

brew update
echo -e "\xE2\x9C\x94 brew update"

brew upgrade
echo -e "\xE2\x9C\x94 brew upgrade"

brew cleanup
echo -e "\xE2\x9C\x94 brew cleanup"

brew doctor
echo -e "\xE2\x9C\x94 brew doctor"