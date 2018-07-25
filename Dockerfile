FROM node:alpine
LABEL maintainer="Lyndon"

RUN apk --update --no-cache add make git \
    && mkdir -p /app \
    && mkdir -p /build