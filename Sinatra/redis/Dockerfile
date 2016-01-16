FROM ubuntu
MAINTAINER cuijie "yinsu@foxmail.com"
ENV REFRESHED_AT 2016-01-16

RUN apt-get -yqq update && apt-get -yqq install redis-server redis-tools

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
CMD []
