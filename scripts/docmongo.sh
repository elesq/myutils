#!/bin/sh

cat << endOfBanner

       _           _
   ___| |_ ___ ___| |_
  |_ -|  _| .'|  _|  _|
  |___|_| |__,|_| |_|

   _____                 ____  _____
  |     |___ ___ ___ ___|    \| __  |
  | | | | . |   | . | . |  |  | __ -|_ _ _
  |_|_|_|___|_|_|_  |___|____/|_____|_|_|_|
                |___|

endOfBanner

echo " "
echo " Starting a docker container running MongoDB...."


docker run --name postgres -e POSTGRES_DB=vapor_database -e POSTGRES_USER=ed -e POSTGRES_PASSWORD=foolsgold -p 5432:5432 postgres