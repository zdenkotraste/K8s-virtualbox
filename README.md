# K8s-virtualbox
K8s cluster running on virtualbox + ELK stack + apache for POC

The purpose of this project is to setup a 3 node kubernetes cluster (1 master + 2 nodes) on virtualbox (using vagrant). Over this cluster, run some services (lostash, elasticsearch, kibana, apache and syslog server). The idea is to setup an ELK stack on a kubernetes cluster, using apache server and sendind the logs using syslog to a syslog server and from there to logstash. 
