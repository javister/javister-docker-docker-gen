FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.1
MAINTAINER Viktor Verbitsky <vektory79@gmail.com>

ARG VERSION

COPY files /

RUN . /usr/local/bin/proxyenv && \
    http_proxy=${http_proxy} https_proxy=${https_proxy} wget https://github.com/jwilder/docker-gen/releases/download/$VERSION/docker-gen-linux-amd64-$VERSION.tar.gz && \
    tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$VERSION.tar.gz && \
    rm /docker-gen-linux-amd64-$VERSION.tar.gz && \
    chmod --recursive +x /etc/my_init.d/*.sh /etc/service /usr/local/bin

ENV DOCKER_HOST=unix:///tmp/docker.sock \
    DEFAULT_HOST="localhost" \
    DEFAULT_USE_LETSENCRYPT="no"
