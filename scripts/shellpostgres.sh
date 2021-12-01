#!/bin/sh

cat << endOfBanner

               _
   ___ ___ ___| |_ ___ ___ ___ ___
  | . | . |_ -|  _| . |  _| -_|_ -|
  |  _|___|___|_| |_  |_| |___|___|
  |_|             |___|
       _       _ _
   ___| |_ ___| | |
  |_ -|   | -_| | |_ _ _
  |___|_|_|___|_|_|_|_|_|


endOfBanner

echo " "

docker exec -i -t postgres-local psql -U postgres