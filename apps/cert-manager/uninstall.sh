#!/bin/sh
helm delete --purge cert-manager

kubectl delete secret ca-kubernetes-secret -n kube-system
kubectl delete secret ca-kubernetes-secret -n monitoring
kubectl delete secret ca-kubernetes-secret -n default

