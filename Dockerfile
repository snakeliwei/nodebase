FROM node:8-alpine
LABEL maintainer="Lyndon"

RUN npm config set registry https://r.cnpmjs.org/ -g \
    # && yarn config set registry https://r.cnpmjs.org/ \
    # && npm config set sass_binary_site https://cnpmjs.org/mirrors/node-sass/ \
    && apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build
