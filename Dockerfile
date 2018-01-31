FROM node:8-alpine
LABEL Author "snakeliwei@gmail.com"

RUN yarn config set registry https://registry.npm.taobao.org -g \
    && apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build
