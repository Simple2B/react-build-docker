#!/bin/sh

cd /build

# echo "Install packages"
# npm install

# echo "Build static"
# npm run build

# echo "Move static to Nginx"
# mv -rp /build/build/* /var/www/localhost/

openrc
touch /run/openrc/softlevel
# lsof -i -P -n | grep LISTEN
# rc-service nginx start

/etc/init.d/nginx start