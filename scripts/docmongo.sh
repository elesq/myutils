#!/bin/sh

echo " ┌─┐┌┬┐┌─┐┬─┐┌┬┐        "
echo " └─┐ │ ├─┤├┬┘ │          "
echo " └─┘ ┴ ┴ ┴┴└─ ┴          "
echo " ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌┬┐┌┐  "
echo " ││││ │││││ ┬│ │ ││├┴┐  "
echo " ┴ ┴└─┘┘└┘└─┘└─┘─┴┘└─┘ "
echo " "
echo " Starting a docker container running MongoDB...."


docker run --name postgres -e POSTGRES_DB=vapor_database -e POSTGRES_USER=ed -e POSTGRES_PASSWORD=foolsgold -p 5432:5432 postgres