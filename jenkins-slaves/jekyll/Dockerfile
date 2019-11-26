FROM jenkins/jnlp-slave

USER root
RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y ruby ruby-dev make gcc g++ && \
	gem install jekyll -v '~> 2.4' 
USER jenkins
