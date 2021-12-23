FROM nginx:alpine

RUN apk update
RUN apk add --update yarn

ENV PATH /app/node_modules/.bin:$PATH

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /src

COPY build.sh /bin/build
RUN chmod +x /bin/build
