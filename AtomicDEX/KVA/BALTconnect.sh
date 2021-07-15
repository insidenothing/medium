#!/bin/bash
source userpass
curl --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"enable\",\"coin\":\"BALT\",\"urls\":[\"http://eth1.cipig.net:8555\"],\"swap_contract_address\":\"0x8500AFc0bc5214728082163326C2FF0C73f4a871\"}"
