# [Apache Kafka](https://kafka.apache.org)

## Build

```bash
docker build kafka/ -t <your_tag>
```

## Run

```bash
docker run -it --rm -p 2181:2182 -p 9092:9092 <your_tag>
```

### Test

Create a topic from kafka-installed host to the created container:
```bash
<kafka_home>/bin/kafka-topic.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 test
```