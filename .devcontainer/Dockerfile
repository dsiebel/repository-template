# https://hub.docker.com/_/debian
FROM debian:bullseye-slim

LABEL org.opencontainers.image.authors="https://github.com/dsiebel"
LABEL org.opencontainers.image.description="DevContainer base image"
LABEL org.opencontainers.image.source="https://github.com/dsiebel/repository-template"
LABEL org.opencontainers.image.licenses="Unlicense"
LABEL org.opencontainers.image.version="1.0.0"

SHELL ["/bin/bash", "-euxc"]
WORKDIR /

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  && apt-get upgrade --yes \
  && apt-get install \
    --auto-remove \
    --no-install-recommends \
    --no-install-suggests \
    --show-upgraded \
    --yes \
    bash \
    bash-completion \
    build-essential \
    ca-certificates \
    colordiff \
    curl \
    direnv \
    fzf \
    git \
    jq \
    make \
    pre-commit \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*

ARG JUST_VERSION=1.9.0
RUN curl -SLo just.tar.gz https://github.com/casey/just/releases/download/${JUST_VERSION}/just-${JUST_VERSION}-$(uname -m)-unknown-linux-musl.tar.gz \
    && tar -xzf just.tar.gz \
    && install just /usr/local/bin/ \
    && rm just.tar.gz just

COPY .bashrc /root/.bashrc
