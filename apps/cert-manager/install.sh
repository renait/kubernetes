#!/bin/sh

kubectl apply \
    -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.11/deploy/manifests/00-crds.yaml

#kubectl label namespace cert-manager certmanager.k8s.io/disable-validation="true" --overwrite=true

helm upgrade --install cert-manager jetstack/cert-manager -f values.yaml --namespace cert-manager --version v0.11.0

kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace default
kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace kube-system
kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace monitoring

sleep 5

kubectl -n monitoring apply -f issuer-kubernetes.yaml
kubectl -n default apply -f issuer-kubernetes.yaml
kubectl -n kube-system apply -f issuer-kubernetes.yaml
