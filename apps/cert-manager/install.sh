#!/bin/sh
helm upgrade --install cert-manager stable/cert-manager -f values.yaml --namespace kube-system

kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace default
kubectl create -f issuer-kubernetes.yaml
kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace kube-system
kubectl create -f issuer-kubernetes-kubesystem.yaml
kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace monitoring
kubectl create -f issuer-kubernetes-monitoring.yaml
