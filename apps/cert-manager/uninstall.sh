#!/bin/sh
helm delete --purge cert-manager

kubectl delete secret ca-kubernetes-secret -n kube-system
kubectl delete secret ca-kubernetes-secret -n monitoring
kubectl delete secret ca-kubernetes-secret -n default

kubectl delete issuer ca-kubernetes-issuer -n kube-system
kubectl delete issuer ca-kubernetes-issuer -n monitoring
kubectl delete issuer ca-kubernetes-issuer -n default

