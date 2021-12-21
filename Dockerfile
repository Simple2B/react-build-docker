FROM node:alpine

RUN apk update
RUN apk add nginx
RUN apk add openrc

# add /app/node_modules/.bin to $PATH
ENV PATH /app/node_modules/.bin:$PATH
ENV NODE_OPTIONS --openssl-legacy-provider

RUN mkdir -p /build

COPY build.sh /bin
RUN mv /bin/build.sh /bin/build

COPY default.conf /etc/nginx/http.d/

RUN openrc
RUN touch /run/openrc/softlevel
RUN rc-service nginx start

# RUN cat /etc/nginx/http.d/default.conf