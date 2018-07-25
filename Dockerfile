FROM node:8
LABEL maintainer="Lyndon"

RUN apt update && apt install make git -qy \
    && mkdir -p /app \
    && mkdir -p /build