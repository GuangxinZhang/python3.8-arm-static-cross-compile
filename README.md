# python3.8-arm-static-cross-compile
A script for cross compile standalone static python for arm processor 


# Require docker
``` 
sudo apt-get install docker.io
```

# How to build? 
Copy & Paste !
```
sudo docker build -t py-arm-cross . # Build image + python3.8 for arm
containerId=$(sudo docker create py-arm-cross) # Create container
sudo docker cp "$containerId":/py-arm-cross/py-arm-cross-compile/compiled_python . # Copy the binaries
sudo docker rm "$containerId" # clean container
sudo docker image rm py-arm-cross --force # clean image

```

