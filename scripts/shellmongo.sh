#!/bin/sh

echo " ┌┬┐┌─┐┌┐┌┌─┐┌─┐    "
echo " ││││ │││││ ┬│ │     "
echo " ┴ ┴└─┘┘└┘└─┘└─┘    "
echo " ┌─┐┌┐┌               "
echo " │ ││││               "
echo " └─┘┘└┘               "
echo " ┌┬┐┌─┐┌─┐┬┌─┌─┐┬─┐ "
echo "  │││ ││  ├┴┐├┤ ├┬┘  "
echo " ─┴┘└─┘└─┘┴ ┴└─┘┴└─ "
echo " run mongo --username admin --password password for authenticated mongo shell"

# open bash in contaner to connect to mongo shell
docker exec -it mongodb bash
