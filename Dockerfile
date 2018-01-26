FROM node:8-alpine
MAINTAINER Lyndon <snakeliwei@gmail.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && yarn config set registry https://registry.npm.taobao.org -g \
    && apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build
