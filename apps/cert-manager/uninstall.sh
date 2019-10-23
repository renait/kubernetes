#!/bin/sh
helm delete --purge cert-manager

kubectl delete secret ca-kubernetes-secret -n kube-system
kubectl delete secret ca-kubernetes-secret -n monitoring
kubectl delete secret ca-kubernetes-secret -n default

kubectl delete issuer ca-kubernetes-issuer -n kube-system
kubectl delete issuer ca-kubernetes-issuer -n monitoring
kubectl delete issuer ca-kubernetes-issuer -n default

kubectl delete issuer renait-prod -n default
kubectl delete issuer renait-staging -n default
#kubectl label namespace cert-manager certmanager.k8s.io/disable-validation-
