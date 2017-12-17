FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.0
MAINTAINER Viktor Verbitsky <vektory79@gmail.com>

ARG VERSION

COPY files /

RUN . proxyenv && \
    wget https://github.com/jwilder/docker-gen/releases/download/$VERSION/docker-gen-linux-amd64-$VERSION.tar.gz && \
    tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$VERSION.tar.gz && \
    rm /docker-gen-linux-amd64-$VERSION.tar.gz && \
    chmod --recursive +x /etc/my_init.d/*.sh /etc/service /usr/local/bin

ENV DOCKER_HOST unix:///tmp/docker.sock
