#!/bin/bash

echo ""
echo ""
echo " _    _ _______ __   _ _____               _______  "
echo "  \  /  |_____| | \  |   |   |      |      |_____|  "
echo "   \/   |     | |  \_| __|__ |_____ |_____ |     |  "
echo "                                                    "
echo " _  _  _ _______ ______                             "
echo " |  |  | |______ |_____]                            "
echo " |__|__| |______ |_____]                            "
echo ""
echo ""
echo "Cloning started...."

git clone git@github.com:elesq/vanilla-web-app.git $1
echo -e "\xE2\x9C\x94 cloned base repository"

echo "Cleaning repository status and removing remote..."
cd $1 && rm -rf .git

echo -e "\xE2\x9C\x94 removed origin and git."
echo -e "\xE2\x9C\x94 created"