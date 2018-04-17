#!/bin/sh
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
helm install -n chartmuseum -f values.yaml stable/chartmuseum

