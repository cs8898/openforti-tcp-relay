FROM debian:buster-slim

RUN apt-get update -yqq && \
    apt-get install -y \
    openfortivpn \
    nginx \
    libnginx-mod-stream && \
    apt-get clean

COPY app/* /app/

VOLUME /tmp/conf

ENTRYPOINT /app/start.sh