#!/bin/bash
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
helm install --name owncloud-mariadb -f values.yaml stable/mariadb
