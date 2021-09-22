#!/bin/sh

echo " "
echo " ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌─┐ "
echo " ├─┘│ │└─┐ │ │ ┬├┬┘├┤ └─┐  "
echo " ┴  └─┘└─┘ ┴ └─┘┴└─└─┘└─┘  "
echo " ┌─┐┬ ┬┌─┐┬  ┬               "
echo " └─┐├─┤├┤ │  │               "
echo " └─┘┴ ┴└─┘┴─┘┴─┘            "
echo " "

docker exec -i -t postgres-local psql -U postgres