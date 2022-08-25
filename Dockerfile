FROM nginx:alpine

RUN apk update
RUN apk add --update yarn

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /src

COPY build.sh /bin/build
RUN chmod +x /bin/build
