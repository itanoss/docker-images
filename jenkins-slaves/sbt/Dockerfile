FROM jenkins/jnlp-slave:latest

ARG SBT_VERSION=1.0

USER root
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
    apt-get update && \
    apt-get install sbt

USER jenkins
COPY ./global.sbt $HOME/.sbt/${SBT_VERSION}/