#!/bin/bash

cat <<endOfBanner

     +-+-+-+-+-+-+-+
     |T|h|r|e|e|J|S|
     +-+-+-+-+-+-+-+-+-+-+
     |t|y|p|e|s|c|r|i|p|t|
     +-+-+-+-+-+-+-+-+-+-+
     |a|p|p|
     +-+-+-+

endOfBanner
echo "creating app directory" $1

# output controllers
bold=$(tput bold)
normal=$(tput sgr0)

# create directory and cd, run npm init
mkdir $1

cd $1 && npm init -y

# write the scripts section of the package.json
cat >./package.json <<EOL
{
  "name": "$1",
  "version": "1.0.0",
  "description": "three.js and typescript",
  "main": "index.js",
  "scripts": {
    "dev": "webpack serve --config ./src/client/webpack.dev.js",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "three js",
    "typescript"
  ],
  "author": "elesq",
  "license": "ISC"
}
EOL

# add the dependency packages for a webpack project
npm i -D webpack webpack-cli webpack-dev-server webpack-merge typescript ts-loader three @types/three dat.gui @types/dat.gui

echo "  ${bold}added packages:${normal}"
echo "    webpack"
echo "    webpack-cli"
echo "    webpack-dev-server"
echo "    webpack-merge"
echo "    typescript"
echo "    ts-loader"
echo "    three"
echo "    @types/three"
echo "    dat.gui"
echo "    @types/dat.gui"

echo ""

echo "creating project directory structure..."
mkdir -p dist/client dist/server src/client src/server

echo "creating webpack files..."
cat >./src/client/webpack.common.js <<EOL
const path = require('path');

module.exports = {
  entry: './src/client/client.ts',
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
    ],
  },
  resolve: {
    extensions: ['.tsx', '.ts', '.js'],
  },
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, '../../dist/client'),
  },
};
EOL

cat >./src/client/webpack.dev.js <<EOL
const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');
const path = require('path');

module.exports = merge(common, {
  mode: 'development',
  devtool: 'eval-source-map',
  devServer: {
    static: {
      directory: path.join(__dirname, '../../dist/client'),
    },
    hot: true,
  },
});
EOL

echo "creating a typescript config..."
cat >./src/client/tsconfig.json <<EOL
{
  "compilerOptions": {
    "moduleResolution": "node",
    "strict": true
  },
  "include": ["**/*.ts", "client.ts"]
}
EOL

echo "creating project starter boilerplate..."
cat >./dist/client/index.html <<EOL
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Three.js | new project</title>
    <style>
        body {
            overflow: hidden;
            margin: 0px;
        }

        #debug1 {
            font-family: monospace;
            font-size: larger;
            position: absolute;
            left: 0px;
            top: 50px;
            border: 1px solid red;
            width: 180px;
            height: 220px;
            color: white;
            pointer-events: none;
        }
    </style>
</head>

<body>
    <div id="debug1"></div>
    <script type="module" src="bundle.js"></script>
</body>

</html>
EOL

cat >./src/client/client.ts <<EOL
import * as THREE from 'three';
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls';
import Stats from 'three/examples/jsm/libs/stats.module';
import { GUI } from 'dat.gui';

const scene = new THREE.Scene();
scene.add(new THREE.AxesHelper(5));

const camera = new THREE.PerspectiveCamera(
  75,
  window.innerWidth / window.innerHeight,
  0.1,
  1000
);
camera.position.z = 2;

const renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

new OrbitControls(camera, renderer.domElement);
//controls.addEventListener('change', render);

const geometry = new THREE.BoxGeometry();
const material = new THREE.MeshBasicMaterial({
  color: 0xff6288,
  wireframe: true,
});

const cube = new THREE.Mesh(geometry, material);
scene.add(cube);

window.addEventListener('resize', onWindowResize, false);
function onWindowResize() {
  camera.aspect = window.innerWidth / window.innerHeight;
  camera.updateProjectionMatrix();
  renderer.setSize(window.innerWidth, window.innerHeight);
  render();
}

const stats = Stats();
document.body.appendChild(stats.dom);

const gui = new GUI();
const cubeFolder = gui.addFolder('Cube');
const cubeRotationFolder = cubeFolder.addFolder('Rotation');
cubeRotationFolder.add(cube.rotation, 'x', 0, Math.PI * 2);
cubeRotationFolder.add(cube.rotation, 'y', 0, Math.PI * 2);
cubeRotationFolder.add(cube.rotation, 'z', 0, Math.PI * 2);
cubeFolder.open();

const cubePositionFolder = cubeFolder.addFolder('Position');
cubePositionFolder.add(cube.position, 'x', -10, 10, 0.1);
cubePositionFolder.add(cube.position, 'y', -10, 10, 0.1);
cubePositionFolder.add(cube.position, 'z', -10, 10, 0.1);
cubeFolder.open();

const cubeScaleFolder = cubeFolder.addFolder('Scale');
cubeScaleFolder.add(cube.scale, 'x', 0, 5, 0.1);
cubeScaleFolder.add(cube.scale, 'y', 0, 5, 0.1);
cubeScaleFolder.add(cube.scale, 'z', 0, 5, 0.1);
cubeFolder.open();
cubeFolder.add(cube, 'visible');

// const cameraFolder = gui.addFolder('Camera');
// cameraFolder.add(camera.position, 'z', 0, 10);
// cameraFolder.open();

function animate() {
  requestAnimationFrame(animate);

  // comment out to retain full control of cube
  cube.rotation.x += 0.005;
  cube.rotation.y += 0.01;

  render();
  stats.update();
}

function render() {
  renderer.render(scene, camera);
}

animate();
EOL

e=$(printf "\e")
red=$(echo -e "$e[1;31m")
green=$(echo -e "$e[1;32m")
grey=$(echo -e "$e[1;90m")

echo -e "${green}\xE2\x9C\x94 ${grey}created"
