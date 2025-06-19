#!/bin/bash

sudo apt-get update -y
sudo apt-get install curl -y

export K3S_INTERNAL_IP=192.168.56.110

curl -sfL https://get.k3s.io | sh -

sudo k3s server &

cp /var/lib/rancher/k3s/server/node-token /vagrant