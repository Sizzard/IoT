#!/bin/bash

sudo apt-get update -y
sudo apt-get install curl -y

export K3S_TOKEN=$(cat /vagrant/node-token)
export K3S_URL=https://192.168.56.110:6443

# curl -sfL https://get.k3s.io | sh -

# sudo k3s agent --server ${K3S_URL} --token ${K3S_TOKEN}