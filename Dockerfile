FROM hope/base

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV MONGO_VERSION 3.2.1

# pub   4096R/EA312927 2015-10-09 [expires: 2017-10-08]
#       Key fingerprint = 42F3 E95A 2C4F 0827 9C49  60AD D68F A50F EA31 2927
# uid                  MongoDB 3.2 Release Signing Key <packaging@mongodb.com>
#
RUN gpg --keyserver pool.sks-keyservers.net --recv-keys \
    42F3E95A2C4F08279C4960ADD68FA50FEA312927

COPY Resources/mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo
RUN yum -y install mongodb-org-${MONGO_VERSION} \
    && mkdir -p /data/db

VOLUME /data/db
EXPOSE 27017

ENTRYPOINT ["/usr/bin/mongod"]
