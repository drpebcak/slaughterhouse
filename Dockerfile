FROM alpine:3.8

ADD entrypoint.sh /usr/bin/entrypoint.sh

RUN apk add --no-cache docker curl && \
chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
