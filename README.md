# Docker образ с рервисом автоконфигурации docker-gen

[ ![Download](https://api.bintray.com/packages/javister/docker/javister%3Ajavister-docker-docker-gen/images/download.svg) ](https://bintray.com/javister/docker/javister%3Ajavister-docker-docker-gen/_latestVersion)
[![Build Status](https://travis-ci.org/javister/javister-docker-docker-gen.svg?branch=master)](https://travis-ci.org/javister/javister-docker-docker-gen)

## Введение

Данный образ базируется на образе [javister-docker-base](https://github.com/javister/javister-docker-nginx)
и содержит сервис автоконфигурации [docker-gen](https://github.com/jwilder/docker-gen)
с [шаблоном конфигурирования Nginx](https://github.com/jwilder/nginx-proxy),
адаптированным для базового образа [javister-docker-base](https://github.com/javister/javister-docker-nginx).
