# K8s-virtualbox
K8s cluster running on virtualbox + ELK stack + nginx for POC

The purpose of this project is to setup a 3 node kubernetes cluster (1 master + 2 nodes) on virtualbox (using vagrant). Over this cluster, run some services (lostash, elasticsearch, kibana, nginx and filebeat). The idea is to setup an ELK stack on a kubernetes cluster, using nginx server and sending the logs using filebeat to logstash. 
