#!/bin/sh
helm install -n v0-cert-manager --namespace kube-system \
  --set ingressShim.extraArgs='{--default-issuer-name=ca-kubernetes-issuer,--default-issuer-kind=Issuer}' \
  stable/cert-manager

kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace default
kubectl create -f issuer-kubernetes.yaml
kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace kube-system
kubectl create -f issuer-kubernetes-kubesystem.yaml
