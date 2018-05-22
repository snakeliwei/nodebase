FROM node:8-alpine
LABEL maintainer="Lyndon"

RUN npm config set registry https://r.cnpmjs.org/ -g \
    && npm config set sass_binary_site http://cnpmjs.org/mirrors/node-sass/ \
    && apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build
