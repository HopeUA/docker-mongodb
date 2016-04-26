FROM hope/base-alpine:3.3

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV MONGO_VERSION=3.2.4

RUN \
    apk add --no-cache mongodb@edge

VOLUME /data/db
EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]
