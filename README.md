# python3.8-arm-static-cross-compile
A script for cross compile standalone static python for arm processor 


Note:
for lazy installing you can simply use the [auto_compile](https://github.com/thewh1teagle/python3.8-arm-static-cross-compile/blob/master/auto_compile) script
```
curl -L https://git.io/JfkS6 | sh
```

before you begin:

1. Install the required tools
```
sudo apt-get update
sudo apt-get install wget curl make gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf python3 git
```
2. add armhf arch to dpkg for installing required libaries
```
sudo dpkg --add-architecture armhf
sudo apt-get update
```

3. install libaries
```
sudo apt-get install libssl-dev:armhf zlib1g-dev:armhf
```

4. clone the repo
```
git clone https://github.com/thewh1teagle/python3.8-arm-static-cross-compile.git
```

5. change file premission for executing 
```
cd python3.8-arm-static-cross-compile
chmod +x python3.8-arm-static-compile
```
6. 
let's begin!
```
./python3.8-arm-static-compile
```
