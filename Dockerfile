FROM golang:1.16.3-alpine

ARG BUILD_DATE

LABEL maintainer="office@cloudpodz.net"
LABEL org.label-schema.build-date=$BUILD_DATE

ENV IDENA_VERSION 0.26.1

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk \
    && apk add --no-cache bash glibc-2.33-r0.apk

RUN mkdir -p /app/idena \
    && wget -O /app/idena/idena-node https://github.com/idena-network/idena-go/releases/download/v0.26.1/idena-node-linux-0.26.1 \
    && chmod +x /app/idena/idena-node

ADD start.sh /

WORKDIR /app/idena

CMD ["/start.sh"]