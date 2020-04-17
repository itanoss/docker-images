FROM jenkins/jnlp-slave

USER root
RUN apt-get update && apt-get upgrade -y            && \
    apt-get install -y ruby ruby-dev make gcc g++   && \
    gem install bundler
USER jenkins
