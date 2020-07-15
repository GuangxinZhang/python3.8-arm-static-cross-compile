# python3.8-arm-static-cross-compile
A script for cross compile standalone static python for arm processor 


# Require docker
``` 
sudo apt-get install docker.io
```

# How to build?

```
cd docker
./docker_build.sh && ./docker_run.sh
```

```
./py-arm-cross
```

# Clean all junk :)
```
./docker_clean.sh
```

## Your binaries will be under py-arm-cross-compile/compiled_python
