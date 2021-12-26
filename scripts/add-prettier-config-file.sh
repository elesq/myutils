#!/bin/bash

cat << endOfBanner

   _____   _   _
  |  _  |_| |_| |
  |     | . | . |
  |__|__|___|___|
               _   _   _
   ___ ___ ___| |_| |_|_|___ ___
  | . |  _| -_|  _|  _| | -_|  _|
  |  _|_| |___|_| |_| |_|___|_|
  |_|
               ___ _
   ___ ___ ___|  _|_|___
  |  _| . |   |  _| | . |_ _ _
  |___|___|_|_|_| |_|_  |_|_|_|
                    |___|

endOfBanner


# create the file
cat > .prettierrc <<EOF
{
    "tabWidth": 4,
    "singleQuote": true,
    "jsxSingleQuote": true,
    "arrowParens": "avoid",
    "overrides": [
        {
            "files": "*.json",
            "options": {
                "tabWidth": 2
            }
        }
    ]
}
EOF

e=$(printf "\e")
red=`echo -e "$e[1;31m"`
green=`echo -e "$e[1;32m"`
grey=`echo -e "$e[1;90m"`

echo -e "${green} \xE2\x9C\x94 ${grey}added prettier config to project"