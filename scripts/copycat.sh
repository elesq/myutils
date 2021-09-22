#!/bin/bash

echo ""
echo " ┌─┐┌─┐┌─┐┬ ┬┌─┐┌─┐┌┬┐ "
echo " │  │ │├─┘└┬┘│  ├─┤ │  "
echo " └─┘└─┘┴   ┴ └─┘┴ ┴ ┴  "
echo " "
echo " ... copied $1 to clipboard!"

pbcopy < $1