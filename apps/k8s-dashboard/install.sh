#!/bin/bash
helm upgrade --namespace kube-system --install -f values.yaml k8s-dashboard stable/kubernetes-dashboard
