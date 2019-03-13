FROM alpine:3.9.2

ARG VCS_REF

LABEL org.label-schema.vcs-ref=$VCS_REF 
LABEL org.label-schema.vcs-url="https://github.com/jlivermont/docker-base"

RUN apk add --no-cache --virtual .build-deps \
    curl \
    vim \
    ca-certificates \
    && apk del .build-deps

CMD ["/bin/sh"]
