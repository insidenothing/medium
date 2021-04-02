cd ~
sudo apt update
sudo apt-get -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
echo "./xmrig - donate-level=1 -o keva.bmorecoin.com:3333 -u VHDxcNZEzuwd1mx7LVivPXVdXFnk7oNnVQ - rig-id=t2micro -p x@t2micro" > start.sh
chmod +x start.sh
./start.sh
