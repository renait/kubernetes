#!/bin/sh
kubectl apply \
    -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.8/deploy/manifests/00-crds.yaml

kubectl label namespace cert-manager certmanager.k8s.io/disable-validation="true" --overwrite=true

helm upgrade --install cert-manager jetstack/cert-manager -f values.yaml --namespace cert-manager

kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace default
kubectl -n default create -f issuer-kubernetes.yaml

kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace kube-system
kubectl -n kube-system create -f issuer-kubernetes.yaml

kubectl create secret tls ca-kubernetes-secret --cert=ca-kubernetes.cert.pem --key=ca-kubernetes.key.pem --namespace monitoring
kubectl -n monitoring create -f issuer-kubernetes.yaml
