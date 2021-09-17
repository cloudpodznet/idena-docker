FROM golang:1.17.1-alpine

ARG BUILD_DATE

LABEL maintainer="office@cloudpodz.net"
LABEL org.label-schema.build-date=$BUILD_DATE

ENV IDENA_VERSION 0.26.7

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk \
    && apk add --no-cache bash glibc-2.34-r0.apk

RUN apk update && apk add jq curl parallel

RUN mkdir -p /app/idena \
    && curl -ksL "https://api.github.com/repos/idena-network/idena-go/releases/latest" | jq -r ".assets[0].browser_download_url" >> /app/idena/url.txt \
    && cat /app/idena/url.txt | parallel --gnu "wget {}" -O /app/idena/idena-node \
    && chmod +x /app/idena/idena-node

ADD start.sh /

WORKDIR /app/idena

CMD ["/start.sh"]