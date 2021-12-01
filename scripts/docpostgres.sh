#!/bin/sh

cat << endOfBanner
       _           _
   ___| |_ ___ ___| |_
  |_ -|  _| .'|  _|  _|
  |___|_| |__,|_| |_|
               _
   ___ ___ ___| |_ ___ ___ ___ ___
  | . | . |_ -|  _| . |  _| -_|_ -|_ _ _
  |  _|___|___|_| |_  |_| |___|___|_|_|_|
  |_|             |___|

endOfBanner

echo " "
echo " Starting postgres on port 5432....  "
echo ""


docker run --name postgres-local -p 5432:5432 -v ~/.postgres-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=password -d postgres:10.8