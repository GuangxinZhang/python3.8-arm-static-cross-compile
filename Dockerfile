FROM debian

# Install dependencies
RUN apt-get update
RUN apt-get install -y  \
	gcc-arm-linux-gnueabihf \
	g++-arm-linux-gnueabihf \
	python3 git \
	lsb-release \
	wget \
	make
	
# Install armhf required libs
RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get install -y \
	libssl-dev:armhf \
	zlib1g-dev:armhf \
	libc6-dev-armhf-cross

# Install python3.8 ( backports )
RUN wget "https://people.debian.org/~paravoid/python-all/unofficial-python-all.asc"
RUN mv unofficial-python-all.asc /etc/apt/trusted.gpg.d/
RUN echo "deb http://people.debian.org/~paravoid/python-all $(lsb_release -sc) main" \
	| tee /etc/apt/sources.list.d/python-all.list
RUN apt-get update
RUN apt-get install -y \
	python3.8

# Copy compile script and start build
RUN mkdir /py-arm-cross
WORKDIR /py-arm-cross
COPY py-arm-cross .
RUN "./py-arm-cross"
