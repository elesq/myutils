#!/bin/bash

echo ""
echo ""
echo " ┌─┐┌┬┐┌┬┐                 "
echo " ├─┤ ││ ││                  "
echo " ┴ ┴─┴┘─┴┘                  "
echo " ┌─┐┬─┐┌─┐┌┬┐┌┬┐┬┌─┐┬─┐   "
echo " ├─┘├┬┘├┤  │  │ │├┤ ├┬┘    "
echo " ┴  ┴└─└─┘ ┴  ┴ ┴└─┘┴└─    "
echo " ┌─┐┌─┐┌┐┌┌─┐┬┌─┐         "
echo " │  │ ││││├┤ ││ ┬          "
echo " └─┘└─┘┘└┘└  ┴└─┘         "
echo ""
echo ""


# create the file
cat > .prettierrc <<EOF
{
    "tabWidth": 4,
    "singleQuote": true,
    "jsxSingleQuote": true,
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

echo " Config added..."