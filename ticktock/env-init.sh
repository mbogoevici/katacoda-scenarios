wget https://repo.spring.io/libs-release-local/org/springframework/cloud/spring-cloud-dataflow-server-local/1.2.1.RELEASE/spring-cloud-dataflow-server-local-1.2.1.RELEASE.jar > out &
wget https://repo.spring.io/libs-release-local/org/springframework/cloud/spring-cloud-dataflow-shell/1.2.1.RELEASE/spring-cloud-dataflow-shell-1.2.1.RELEASE.jar > out &
wget http://mirrors.koehn.com/apache/kafka/0.10.2.1/kafka_2.12-0.10.2.1.tgz > out &
tar xzvf kafka_2.12-0.10.2.1.tgz &

kafka_2.12-0.10.2.1/bin/zookeeper-server-start.sh kafka_2.12-0.10.2.1/config/zookeeper.properties  &
kafka_2.12-0.10.2.1/bin/kafka-server-start.sh kafka_2.12-0.10.2.1/config/server.properties &

nc -w20 -zv localhost 9092

echo "Ready!"
