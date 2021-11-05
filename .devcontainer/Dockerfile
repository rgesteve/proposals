# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.202.5/containers/alpine/.devcontainer/base.Dockerfile

# [Choice] Alpine version: 3.14, 3.13, 3.12, 3.11
ARG VARIANT="3.14"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}

#RUN apk update \
#    && apk add --no-cache git ca-certificates wget build-base

# Add alpine v3.6 main repo to get mongo db
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories

RUN apk update \
    && apk add --no-cache \
#    nodejs \
#    npm \
    git \
    wget \
    build-base \
#    python3 \
#    py3-pip \
    markdown
#    pandoc
#    mongodb=3.4.4-r0

#RUN npm install -g bower
#RUN npm install -g markdown-it \
#                   gulp-cli
#RUN npm install -g nodemon

#RUN git submodule update --init \
#    && cd pikchr && make
