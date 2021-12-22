#!/bin/sh

echo "Moving to /build"
cd /src

echo "Install packages"
npm install

echo "Build static"
npm run build

echo "Move static to Nginx"
mv /src/build/* /usr/share/nginx/html

echo "Done"
rm -rf /src