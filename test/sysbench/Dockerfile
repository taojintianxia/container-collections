FROM alpine:3.18 AS builder

ENV SYSBENCH_VERSION 1.0.20

RUN apk add --no-cache --update \
        bash-completion \
        autoconf \
        automake \
        build-base \
        git \
        libaio-dev \
        libtool \
        pkgconf \
        mariadb-dev \
        postgresql-dev

RUN git clone https://github.com/akopytov/sysbench.git --branch ${SYSBENCH_VERSION} --depth 1

WORKDIR /sysbench
RUN ./autogen.sh && \
    ./configure && \
    make -j && \
    make install


# Target image
FROM alpine:3.18

RUN apk add --no-cache libaio libgcc
COPY --from=builder /usr/local/share/sysbench /usr/local/share/sysbench
COPY --from=builder /usr/local/bin/sysbench   /usr/local/bin/sysbench

ENTRYPOINT ["/usr/local/bin/sysbench"]
