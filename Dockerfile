FROM alpine:3.9.2

ARG VCS_REF

LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/jlivermont/docker-base"

# Create the app directory where downstream images
RUN mkdir /app
WORKDIR /app
ENV APP_DIR=/app

# Create the service user for downstream images
RUN apk add --no-cache --virtual .build-deps shadow \
    && useradd -ms /bin/bash service \
    && apk del .build-deps

RUN apk add --no-cache \
    curl \
    ca-certificates

CMD ["/bin/sh"]
