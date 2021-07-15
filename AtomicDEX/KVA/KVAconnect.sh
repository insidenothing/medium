#!/bin/bash
source userpass
curl -vvv --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"electrum\",\"coin\":\"KVA\",\"servers\":[{\"url\":\"ec1.kevacoin.org:50002\",\"protocol\":\"SSL\",\"disable_cert_verification\":false},{\"url\":\"ec0.kevacoin.org:50002\",\"protocol\":\"SSL\",\"disable_cert_verification\":false}]}"
