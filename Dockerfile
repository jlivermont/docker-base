FROM alpine:3.9.2

RUN apk add --no-cache --virtual .build-deps \
    curl \
    vim \
    ca-certificates \
    && apk del .build-deps

CMD ["/bin/sh"]
