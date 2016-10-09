FROM alpine:3.4

MAINTAINER thuan@nguyens.xyz

ADD https://github.com/kelseyhightower/confd/releases/download/v0.12.0-alpha3/confd-0.12.0-alpha3-linux-amd64 /usr/bin/confd

RUN chmod +x /usr/bin/confd

ADD ./confd /etc/confd

RUN apk add --update aria2 && rm -rf /var/cache/apk/*

VOLUME /downloads

EXPOSE 6800

CMD confd -onetime -backend env && aria2c --conf-path=/etc/aria2.conf
