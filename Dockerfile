FROM alpine:3.9

RUN apk add --no-cache curl

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
