#!/bin/sh


echo " "
echo " ┌─┐┌┬┐┌─┐┬─┐┌┬┐             "
echo " └─┐ │ ├─┤├┬┘ │               "
echo " └─┘ ┴ ┴ ┴┴└─ ┴               "
echo " ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌─┐  "
echo " ├─┘│ │└─┐ │ │ ┬├┬┘├┤ └─┐   "
echo " ┴  └─┘└─┘ ┴ └─┘┴└─└─┘└─┘   "
echo " "
echo " Starting postgres on port 5432....  "
echo ""


docker run --name postgres-local -p 5432:5432 -v ~/.postgres-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=password -d postgres:10.8