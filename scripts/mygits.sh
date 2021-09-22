#!/bin/bash

echo "  "
echo " ┌─┐┬  ┬    ┌─┐┬┌┬┐  ┬─┐┌─┐┌─┐┌─┐┌─┐ "
echo " ├─┤│  │    │ ┬│ │   ├┬┘├┤ ├─┘│ │└─┐ "
echo " ┴ ┴┴─┘┴─┘  └─┘┴ ┴   ┴└─└─┘┴  └─┘└─┘ "
echo " "

find /Users/ed -name .git -type d -exec dirname {} \;

