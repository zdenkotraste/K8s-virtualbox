#!/usr/bin/env bash
sudo apt-get update && sudo apt-get upgrade -y
#Install docker
sudo apt-get install -y docker.io
#Add k8s to the apt repository
sudo sh -c "echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' >> /etc/apt/sources.list.d/kubernetes.list"
#Add google pgp key
sudo sh -c "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"
sudo apt-get update