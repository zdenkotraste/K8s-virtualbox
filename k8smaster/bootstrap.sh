#!/usr/bin/env bash
sudo apt-get update && sudo apt-get upgrade -y
#Install docker
sudo apt-get install -y docker.io
#Add k8s to the apt repository
sudo sh -c "echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' >> /etc/apt/sources.list.d/kubernetes.list"
#Add google pgp key
sudo sh -c "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"
sudo apt-get update
sudo apt-get install -y kubeadm kubelet kubectl jq
sudo kubeadm init --apiserver-advertise-address=192.168.100.10 --pod-network-cidr=192.168.100.0/24
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
#sudo sh -c "echo 'Environment=”KUBELET_EXTRA_ARGS=--node-ip=192.168.100.10”' >> /etc/systemd/system/kubelet.service.d/10-kubeadm.conf"
#sudo systemctl daemon-reload && sudo systemctl restart kubelet
sudo curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
