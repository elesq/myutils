#!/bin/bash

cat <<endOfBanner

   +-+-+-+-+-+-+-+-+-+-+
   |N|P|M| |G|l|o|b|a|l|
+-+-+-+-+-+-+-+-+-+-+-+-+-+
|I|n|s|t|a|l|l|a|t|i|o|n|s|
+-+-+-+-+-+-+-+-+-+-+-+-+-+

endOfBanner

echo " "

npm list -g --depth=0
