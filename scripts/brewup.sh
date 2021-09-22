#!/bin/bash

echo "  "
echo " ┌┐ ┬─┐┌─┐┬ ┬   ┬ ┬┌─┐ "
echo " ├┴┐├┬┘├┤ │││───│ │├─┘ "
echo " └─┘┴└─└─┘└┴┘   └─┘┴   "
echo " "

brew outdated
brew update
brew upgrade
brew cleanup
brew doctor