# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.202.5/containers/alpine/.devcontainer/base.Dockerfile

# [Choice] Alpine version: 3.14, 3.13, 3.12, 3.11
ARG VARIANT="3.14"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}

RUN apk update \
    apk add --no-cache git ca-certificates wget build-base

#RUN git submodule update --init \
#    && cd pikchr && make


