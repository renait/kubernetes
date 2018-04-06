#!/bin/sh
docker run --rm --name kubespray -v ~/github/renait/kubernetes/kubespray/inventory:/kubespray/inventory kubespray ansible-playbook -u core -i  ./inventory/explorer/hosts.ini cluster.yml -b -v --private-key=./inventory/explorer/.ssh/id_rsa
