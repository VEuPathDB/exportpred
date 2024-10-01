FROM alpine:latest

RUN apk update && apk add --no-cache \
    build-base

WORKDIR /app

COPY . /app

RUN ./configure \
    && make \
    && make install

ENTRYPOINT ["/usr/local/bin/exportpred"]
