#!/bin/bash

sudo apt-get update -y
sudo apt-get install curl -y

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-ip=192.168.56.110 --node-external-ip=192.168.56.110 --flannel-iface=eth1" sh -s || echo "Failed to install K3s server"

sudo kubectl apply -f /vagrant/config