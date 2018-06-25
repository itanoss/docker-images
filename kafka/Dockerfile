FROM openjdk:8
ARG KAFKA_VERSION=1.1.0
ARG SCALA_VERSION=2.11

WORKDIR /kafka
RUN curl http://www-us.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz | tar xzv

WORKDIR /kafka/kafka_${SCALA_VERSION}-${KAFKA_VERSION}
CMD (nohup bin/zookeeper-server-start.sh config/zookeeper.properties &); bin/kafka-server-start.sh config/server.properties