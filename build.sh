#!/bin/sh

echo "Moving to /src"
cd /src

echo "Install packages"
yarn install --frozen-lockfile

echo "Build static"
yarn run build

echo "Move static to Nginx"
mv /src/build/* /usr/share/nginx/html

echo "Cleaning..."
rm -rf /src

echo "Done"
