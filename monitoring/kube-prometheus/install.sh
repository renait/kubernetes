#!/bin/sh
kubectl apply -f dashboards.yaml
helm upgrade --install kube-prometheus coreos/kube-prometheus -f values.yaml --namespace monitoring
kubectl apply -f pv.yaml
#kubectl apply -f pvc.yaml
