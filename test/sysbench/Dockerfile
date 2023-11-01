FROM alpine:3.18 AS builder

ENV SYSBENCH_VERSION 1.0.20-r1

RUN apk add --no-cache --update sysbench=${SYSBENCH_VERSION}
ENTRYPOINT ["/usr/bin/sysbench"]
