FROM ubuntu:18.04

ARG JDK_URL=https://cdn.azul.com/zulu/bin/
ARG JDK_FILENAME=zulu11.35.13-ca-jdk11.0.5-linux_amd64.deb

RUN apt-get update && \
	apt-get install -y locales asciinema wget && \
    locale-gen en_US.UTF-8 && \
    wget ${JDK_URL}${JDK_FILENAME} && \
    dpkg -i ${JDK_FILENAME} || \
    apt-get install -f -y

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8