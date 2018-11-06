FROM jenkins/jnlp-slave

ARG FLINK_VERSION=1.6.2
ARG SCALA_VERSION=2.11
ARG APACHE_MIRROR_BASEURL=https://www-us.apache.org/dist

USER root
RUN wget ${APACHE_MIRROR_BASEURL}/flink/flink-${FLINK_VERSION}/flink-${FLINK_VERSION}-bin-scala_${SCALA_VERSION}.tgz && \
    tar xzvf flink-${FLINK_VERSION}-bin-scala_${SCALA_VERSION}.tgz -C /

ENV PATH="$PATH:/flink-${FLINK_VERSION}/bin"
USER jenkins
