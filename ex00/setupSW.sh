#!/bin/bash

sudo apt-get update -y
sudo apt-get install curl -y

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-ip=192.168.56.111 --flannel-iface=eth1" K3S_URL="https://192.168.56.110:6443" K3S_TOKEN_FILE="/vagrant/node-token" sh -
