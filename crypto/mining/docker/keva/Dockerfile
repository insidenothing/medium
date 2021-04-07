FROM ubuntu:bionic

RUN apt update

RUN apt-get -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

RUN git clone https://github.com/insidenothing/xmrig.git; cd xmrig; mkdir build; cd build; cmake ..; make; cp xmrig /usr/local/bin

RUN xmrig -o keva.bmorecoin.com:3333 -u VHDxcNZEzuwd1mx7LVivPXVdXFnk7oNnVQ  -p x
