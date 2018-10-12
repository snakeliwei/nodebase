FROM node:9-alpine
LABEL maintainer="Lyndon"
# Installs latest Chromium (68) package.
RUN apk update && apk upgrade && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk add --no-cache \
            make git curl \
            chromium@edge \
            nss@edge && \
    mkdir -p /app && \
    mkdir -p /build

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true