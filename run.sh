#!/bin/bash

subscribeClash="https://api.v1.mk/sub?target=clash&url=https%3A%2F%2Fmirror.ghproxy.com%2Fhttps%3A%2F%2Fraw.githubusercontent.com%2FAkkunYo%2FHysteriaNode%2Fmain%2FhysteriaNode.txt&insert=false&config=https%3A%2F%2Fraw.githubusercontent.com%2Flhl77%2Fsub-ini%2Fmain%2Ftsutsu-full.ini&append_type=true&emoji=true&list=false&xudp=false&udp=true&tfo=false&expand=true&scv=true&fdn=true&clash.doh=true&new_name=true"
subscribeClashAll="https://api.v1.mk/sub?target=clash&url=https%3A%2F%2Fmirror.ghproxy.com%2Fhttps%3A%2F%2Fraw.githubusercontent.com%2FAkkunYo%2FHysteriaNode%2Fmain%2Fsubscribe.txt&insert=false&config=https%3A%2F%2Fraw.githubusercontent.com%2Flhl77%2Fsub-ini%2Fmain%2Ftsutsu-full.ini&append_type=true&emoji=true&list=false&xudp=false&udp=true&tfo=false&expand=true&scv=true&fdn=true&clash.doh=true&new_name=true"

echo "start getting the subscribe"

echo "------------------- clash_hysteriaNode -------------------"
wget $subscribeClash -O ./clash.yaml
clashNodeSize=$(grep -c 'type:' ./clash.yaml)
echo "clashNodeSize:$clashNodeSize"

echo "------------------- clash_allNode -------------------"
wget $subscribeClashAll -O ./clashAll.yaml
clashAllNodeSize=$(grep -c 'type:' ./clashAll.yaml)
echo "clashAllNodeSize:$clashAllNodeSize"

echo "getting the subscribe succeed,enjoy it~"
