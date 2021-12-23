#!/bin/sh

echo "Moving to /build"
cd /src

echo "Install packages"
yarn install

echo "Build static"
yarn run build

echo "Move static to Nginx"
mv /src/build/* /usr/share/nginx/html

echo "Done"
rm -rf /src
