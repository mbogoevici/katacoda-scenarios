Let's see what we have registered:

```app list```{{execute}}

Obviously, there is nothing there yet.

Now register the time source:

```app register --name time --type source --uri maven://org.springframework.cloud.stream.app:time-source-kafka-10:1.2.0.BUILD-SNAPSHOT```{{execute}}

Now register the file sink:

```app register --name file --type sink --uri maven://org.springframework.cloud.stream.app:file-sink-kafka-10:1.2.0.BUILD-SNAPSHOT```{{execute}}
