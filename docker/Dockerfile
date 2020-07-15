FROM debian

# Install dependencies
RUN apt-get update && apt-get install -y  \
	wget make gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf python3 git \
	build-essential zlib1g-dev libncurses5-dev libgdbm-dev \
	libnss3-dev libssl-dev libsqlite3-dev libreadline-dev \ 
	libffi-dev curl libbz2-dev
RUN dpkg --add-architecture armhf && apt-get update
RUN apt-get -y install libssl-dev:armhf zlib1g-dev:armhf libc6-dev-armhf-cross

# install python3.8
RUN curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz
RUN tar -xf Python-3.8.2.tar.xz
RUN cd Python-3.8.2 && \
	./configure && \
	make -j$(nproc) && \
	make altinstall
RUN rm -rf /Python-3.8.2*

RUN mkdir /py-arm-cross
WORKDIR /py-arm-cross
