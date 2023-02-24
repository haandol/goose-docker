FROM public.ecr.aws/docker/library/alpine:3.17
MAINTAINER haandol <ldg55d@gmail.com>

RUN apk update && \
    apk upgrade && \
    apk add bash jq aws-cli && \
    rm -rf /var/cache/apk/*

ADD https://github.com/pressly/goose/releases/download/v3.9.0/goose_linux_x86_64 /bin/goose
RUN chmod +x /bin/goose

WORKDIR /migrations
