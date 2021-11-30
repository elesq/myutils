#!/bin/bash

cat << endOfBanner
       _ _
   ___| |_|
  |  _| | |
  |___|_|_|

   _____         _
  |_   _|___ ___| |___
    | | | . | . | |_ -|
    |_| |___|___|_|___|

endOfBanner

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`


cat << endOfList

${red}- JS projects
  ${green}vwa ${grey}- create a vanila webapp (html, css & js).
  ${green}cra ${grey}- wrapper around npx create-react-app.
  ${green}csa ${grey}- create a svelte project.
  ${green}cwa ${grey}- create a project using webpack as the build tool.
  ${green}cpa ${grey}- create a project with parcel as the build tool.
  ${green}cja ${grey}- create a project with react, jest, babel base.

${red}- Automation projects
  ${green}pup ${grey}- create a project with puppeteer

${red}- typescript web apps
  ${green}tra ${grey}- create-react-app with typescript support
  ${green}tsa ${grey}- An empty typescript webapp project.

endOfList
