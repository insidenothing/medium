cd /home/ubuntu
sudo apt update
sudo apt-get -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/insidenothing/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
echo "
#!/bin/bash
hs=`hostname`
echo $hs
/home/ubuntu/xmrig/build/xmrig -o keva.bmorecoin.com:3333 -u VHDxcNZEzuwd1mx7LVivPXVdXFnk7oNnVQ --rig-id=$hs -p x@$hs
" > start.sh
chmod +x start.sh
/home/ubuntu/xmrig/build/start.sh
