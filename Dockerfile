FROM alpine:3.4

MAINTAINER thuan@nguyens.xyz

RUN apk add --update aria2 && rm -rf /var/cache/apk/*

ADD aria2.conf /etc/aria2.conf

VOLUME /downloads

CMD /usr/bin/aria2c --conf-path=/etc/aria2.conf
