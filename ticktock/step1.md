In the first terminal, launch the Spring Cloud Data Flow server:

```java -Xmx300m -jar spring-cloud-dataflow-server-local-1.2.1.RELEASE.jar```{{copy}}

In the second terminal, launch the shell.

```java -Xmx128m -jar spring-cloud-dataflow-shell-1.2.1.RELEASE.jar```{{copy}}

Now register the time source:

```app register --name time --type source --uri maven://org.springframework.cloud.stream.app:time-source-rabbit:1.2.0.BUILD-SNAPSHOT```{{copy}}

Now register the file sink:

```app register --name file --type sink --uri maven://org.springframework.cloud.stream.app:file-sink-rabbit:1.2.0.BUILD-SNAPSHOT```{{copy}}

Now create the stream:

```stream create --name ticktock --definition "time | file"```{{copy}}

Now deploy the stream

```stream deploy ticktock --properties "deployer.time.memory=128m" ```{{copy}}
