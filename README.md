# python3.8-arm-static-cross-compile
A script for cross compile standalone static python for arm processor 


# Require docker
``` 
sudo apt-get install docker.io
```

# How to build?
```
sudo docker build -t py-arm-cross .
```

# Copy binaries from docker image
```
containerId=$(sudo create py-arm-cross)
sudo docker cp "$containerId":/py-arm-cross/py-arm-cross-compile/compiled_python .
docker rm "$containerId"
```

# Clean all after compile
```
sudo docker image rm py-arm-cross --force
```
