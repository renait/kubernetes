#!/bin/bash
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
helm install --name openproject-postgresql -f values.yaml stable/postgresql
