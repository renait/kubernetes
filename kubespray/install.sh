#!/bin/sh
docker run --rm --name kubespray -v ~/github/kubespray/kubespray/inventory:/kubespray/inventory kubespray ansible-playbook -i  ./inventory/explorer/hosts.ini cluster.yml -b -v --private-key=./inventory/explorer/.ssh/id_rsa
