In the first terminal, launch the Spring Cloud Data Flow server:

```java -Xmx300m -jar spring-cloud-dataflow-server-local-1.2.1.RELEASE.jar```{{execute}}

In the second terminal, launch the shell.

```java -Xmx128m -jar spring-cloud-dataflow-shell-1.2.1.RELEASE.jar```{{execute}}

Now register the time source:

```app register --name time --type source --uri maven://org.springframework.cloud.stream.app:time-source-kafka-10:1.2.0.BUILD-SNAPSHOT```{{execute}}

Now register the file sink:

```app register --name file --type sink --uri maven://org.springframework.cloud.stream.app:file-sink-kafka-10:1.2.0.BUILD-SNAPSHOT```{{execute}}

Now create the stream:

```stream create --name ticktock --definition "time | file --directory=/tmp/ticktock --name=data"```{{execute}}

Now deploy the stream

```stream deploy ticktock --properties "deployer.time.memory=128m,deployer.file.memory=128m" ```{{execute}}

Open a new terminal and visualize the data:

```touch /tmp/ticktock/data; tail -f /tmp/ticktock/data```{{execute}}
