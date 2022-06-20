#!/bin/sh

# create a banner to show as intro to the scaffold.
cat <<endOfBanner

   +-+-+-+-+-+-+
   |S|v|e|l|t|e|
   +-+-+-+-+-+-+
     |T|D|D|
     +-+-+-+

endOfBanner

e=$(printf "\e")
red=$(echo -e "$e[1;31m")
green=$(echo -e "$e[1;32m")
grey=$(echo -e "$e[1;90m")

# ------------------------------------
#     Create the Scaffold
# ------------------------------------
echo "Cybernetically enhanced web apps"
echo "Creating " $1
npx degit sveltejs/template $1
echo -e "${green}\xE2\x9C\x94 ${grey}created project "
echo "Installing npm modules... "
cd $1
npm install

echo "Adding dependencies... "
npm i -D jest @testing-library/svelte @testing-library/user-event
npm i -D @testing-library/jest-dom jest-environment-jsdom svelte-jester
npm i -D babel-jest @babel/preset-env
echo "Initliasing GIT repo... "
git init

echo "Adding folders..."
mkdir -p ./src/pages

# ------------------------------------
#     update the package files
# ------------------------------------
echo "Updating package.json... "
echo "Adding npm scripts... "
packageCheck=$(npm list -location=global | grep npm-add-scripts)
if [ -z "$packageCheck" ]; then
    npm i -D npm-add-script
fi
npmAddScript -k test -v "jest --watch"

# update for tesing packages. Move to the
# end of the package.json file and add a
# new section.
sed -i '' -e '$ d' package.json
cat <<EOF >>package.json
,
"jest": {
    "transform": {
      "^.+\\\.svelte$": "svelte-jester",
      "^.+\\\.js$": "babel-jest"
    },
    "testEnvironment": "jsdom"
  }
}
EOF

# ------------------------------------
#     Create additional files
# ------------------------------------
echo "  Creating babel configuration file... "
cat <<EOF >>babel.config.js
module.exports = {
  presets: [['@babel/preset-env', { targets: { node: 'current' } }]],
};
EOF

echo ""
echo "  Creating sample component... "
cat <<EOF >>./src/pages/Example.svelte
<h1>Example</h1>
EOF

echo "  Creating sample component test file... "
cat <<EOF >>./src/pages/Example.spec.js
import Example from './Example.svelte';
import { render, screen } from '@testing-library/svelte';

it('has a sign up header', () => {
  render(Example);
  const header = screen.getAllByRole('heading', { name: 'example' });
  expect(header).toBeTruthy();
});
EOF
