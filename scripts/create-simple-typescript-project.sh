#!/bin/bash

cat <<endOfBanner

  +-+-+-+-+-+-
  |S|i|m|p|l|e
  +-+-+-+-+-+-+-+-+-+-
  |T|y|p|e|s|c|r|i|p|t
  +-+-+-+-+-+-+-+-+-+-
  |P|r|o|j|e|c|t|
  +-+-+-+-+-+-+-+
  |S|t|a|r|t|e|r|
  +-+-+-+-+-+-+-+

endOfBanner
echo " typescript project setup... "

# output controllers
bold=$(tput bold)
normal=$(tput sgr0)

e=$(printf "\e")
red=$(echo -e "$e[1;31m")
green=$(echo -e "$e[1;32m")
grey=$(echo -e "$e[1;90m")

# ----------------------------------------
# Create a folder for the project based on
# the paramater name provided. Run the npm
# init sequence in the project
# ----------------------------------------
mkdir $1
cd $1
npm init -y

echo -e "${green}\xE2\x9C\x94 ${grey}created project"
echo -e "${green}\xE2\x9C\x94 ${grey}created a package.json file"

# ----------------------------------------
# add npm packages
# ----------------------------------------
npm i typescript

echo -e "${green}\xE2\x9C\x94 ${grey}added Typescript"

# ----------------------------------------
# Create the project configuration for TS.
# ----------------------------------------
cat >tsconfig.json <<EOF
{
    "compilerOptions": {
        "target": "es2018",
        "outDir": "./dist",
        "rootDir": "./src",
        "module": "commonjs"
    }
}
EOF

echo -e "${green}\xE2\x9C\x94 ${grey}created a tsconfig.json"

# ----------------------------------------
# Create the project directories.
# ----------------------------------------
mkdir src dist

echo -e "${green}\xE2\x9C\x94 ${grey}created project directories"
# ----------------------------------------
# write the test TS file
# ----------------------------------------
cat >./src/index.ts <<EOF
console.log("Hey Typescript!")
EOF

echo -e "${green}\xE2\x9C\x94 ${grey}added a sample typescript file"
echo ""

# ----------------------------------------
# run the typescript compiler on the index
# ----------------------------------------
tsc

# ----------------------------------------
# run the generated javascrpt
# ----------------------------------------
node ./dist/index.js
