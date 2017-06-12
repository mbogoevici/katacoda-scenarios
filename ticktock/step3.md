Do we have any streams registered? Let's run a command:

```stream list```{{execute}}

Now create the stream:

```stream create --name ticktock --definition "time | file --directory=/tmp/ticktock --name=data"```{{execute}}

Now deploy the stream

```stream deploy ticktock --properties "deployer.time.memory=128m,deployer.file.memory=128m" ```{{execute}}

Open a new terminal and visualize the data:

```tail --retry -F /tmp/ticktock/data```{{execute}}
