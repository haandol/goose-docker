FROM public.ecr.aws/docker/library/alpine:latest
MAINTAINER haandol <ldg55d@gmail.com>

RUN apk update && \
    apk upgrade && \
    apk add bash jq aws-cli && \
    rm -rf /var/cache/apk/*

ADD https://github.com/pressly/goose/releases/download/v3.19.2/goose_linux_arm64 /bin/goose
RUN chmod +x /bin/goose

WORKDIR /migrations
