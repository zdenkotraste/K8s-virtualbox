#!/usr/bin/env bash
sudo apt-get update && sudo apt-get upgrade -y
#Install docker
sudo apt-get install -y docker.io
#Add k8s to the apt repository
sudo sh -c "echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' >> /etc/apt/sources.list.d/kubernetes.list"
#Add google pgp key
sudo sh -c "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"
sudo apt-get update
sudo apt-get install -y kubeadm kubelet kubectl
#sudo sh -c "echo 'Environment=”KUBELET_EXTRA_ARGS=--node-ip=192.168.100.11”' >> /etc/systemd/system/kubelet.service.d/10-kubeadm.conf"
sudo systemctl daemon-reload && sudo systemctl restart kubelet
#sudo kubectl label nodes k8snode1 logstash=true kibana=true filebeat=true elasticsearch=false