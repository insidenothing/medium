#!/bin/bash -e

# https://xmrig.com/docs/miner/hugepages#onegb-huge-pages

sysctl -w vm.nr_hugepages=$(nproc)

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d);
do
    echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

echo "1GB pages successfully enabled"

sudo xmrig --donate-level=1 -o blo.pool-pay.com:3393 -u abLoc6HBaYeHijGse3UDdVhCCCRi4Ct3aVrqeMhYWYUsG2qjfBCVN2jjAv17nNMEVEVWoHENMMacN29FpA1DdQVkHGC18ReiWfa.698 --rig-id=rpi2gb -p x@rpi2gb
