FROM alpine:3.4

RUN apk --no-cache add transmission
RUN apk --no-cache add transmission-daemon

EXPOSE 51413 9091

ENTRYPOINT ["/usr/bin/transmission-daemon", "-f"]
