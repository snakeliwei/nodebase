FROM node:8-alpine
LABEL maintainer = "snakeliwei@gmail.com"

RUN yarn config set registry https://registry.npm.taobao.org -g \
    && npm config set registry https://registry.npm.taobao.org -g \
    && apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build
