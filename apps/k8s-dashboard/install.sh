#!/bin/bash
kubectl -n kube-system apply -f serviceaccount.yaml
kubectl -n kube-system apply -f clusterrolebinding.yaml

helm upgrade --namespace kube-system --install -f values.yaml k8s-dashboard stable/kubernetes-dashboard
