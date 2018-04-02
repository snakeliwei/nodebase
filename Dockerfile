FROM node:8-alpine
LABEL maintainer="Lyndon"

RUN npm config set registry https://registry.npm.taobao.org -g \
    && apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build
