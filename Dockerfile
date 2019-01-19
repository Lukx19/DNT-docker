FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
        ca-certificates \
        wget \
        software-properties-common \
        && rm -rf /var/lib/apt/lists/*

RUN apt-add-repository universe
RUN apt-add-repository multiverse
RUN  wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add
RUN apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.8 main"

# apt-get install build-essential gcc-multilib gcc-4.8-multilib g++-multilib g++-4.8-multilib lib32z1 lib32ncurses5 lib32bz2-1.0 libc6-dev libgmp-dev libmpfr-dev libmpc-dev
# dpkg --add-architecture i386

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata  && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y \
        build-essential \
        tmux \
        curl \
        htop \
        nano \
        less \
        cmake \
        clang-3.8 \
        clang \
        doxygen \
        gdb \
        mc \
        qt5-default \
        libjpeg-turbo8-dev \
        avahi-discover \
        libopencv-dev \
        lib32z1 \
        && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/dnt/repo
COPY .bashrc /root/.bashrc
WORKDIR /home/dnt/repo
