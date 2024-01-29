#!/bin/bash

subscribeClash="https://api.v1.mk/sub?target=clash&url=https%3A%2F%2Fghp.ci%2Fhttps%3A%2F%2Fraw.githubusercontent.com%2FAkkunYo%2FHysteriaNode%2Fmain%2FhysteriaNode.txt&insert=false&config=https%3A%2F%2Fraw.githubusercontent.com%2FACL4SSR%2FACL4SSR%2Fmaster%2FClash%2Fconfig%2FACL4SSR_Online_Mini.ini&append_type=true&emoji=true&list=false&xudp=false&udp=true&tfo=false&expand=true&scv=true&fdn=true&clash.doh=true&new_name=true"
subscribeClashAll="https://api.v1.mk/sub?target=clash&url=https%3A%2F%2Fghp.ci%2Fhttps%3A%2F%2Fraw.githubusercontent.com%2FAkkunYo%2FHysteriaNode%2Fmain%2Fsubscribe.txt&insert=false&config=https%3A%2F%2Fraw.githubusercontent.com%2Flhl77%2Fsub-ini%2Fmain%2Ftsutsu-full.ini&append_type=true&emoji=true&list=false&xudp=false&udp=true&tfo=false&expand=true&scv=true&fdn=true&clash.doh=true&new_name=true"

echo "start getting the subscribe"

echo "------------------- clash_hysteriaNode -------------------"
wget $subscribeClash -O ./clash1.yaml
clashNodeSize=$(grep -c '{name:' ./clash1.yaml)
echo "clashNodeSize:$clashNodeSize"
if [ $clashNodeSize -gt 0 ]; then
    echo "上一条命令执行失败（返回值大于0）"
    rm -rf ./clash.yaml
    mv ./clash1.yaml ./clash.yaml
else
    rm -rf ./clash1.yaml
fi

echo "------------------- clash_allNode -------------------"
wget $subscribeClashAll -O ./clashAll.yaml
clashAllNodeSize=$(grep -c '{name:' ./clashAll.yaml)
echo "clashAllNodeSize:$clashAllNodeSize"

echo "getting the subscribe succeed,enjoy it~"
