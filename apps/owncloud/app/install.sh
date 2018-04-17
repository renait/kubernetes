#!/bin/bash
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
helm install --name owncloud -f values.yaml stable/owncloud
#helm install --name owncloud -f values.yaml helm/owncloud
