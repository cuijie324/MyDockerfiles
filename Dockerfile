FROM ubuntu
MAINTAINER cuijie "yinsu@foxmailc.om"
ENV REFRESHED_AT 2014-06-01

RUN apt-get update
RUN apt-get -y -q install nginx

RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/

EXPOSE 80
