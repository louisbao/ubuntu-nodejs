FROM ubuntu:16.04
LABEL maintainer="louis.bao@icloud.com"

# install build deps
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y
RUN apt-get install -y software-properties-common build-essential curl \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get install -y nodejs
