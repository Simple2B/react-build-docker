FROM nginx:alpine

RUN apk update
RUN apk add --update npm

ENV PATH /app/node_modules/.bin:$PATH

RUN mkdir -p /src

COPY build.sh /bin/build
RUN chmod +x /bin/build