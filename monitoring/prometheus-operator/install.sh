#!/bin/sh
#kubectl apply -f dashboards.yaml
#helm upgrade --install prometheus-operator stable/prometheus-operator -f values.yaml --namespace monitoring --version 6.4.0
helm upgrade --install prometheus-operator stable/prometheus-operator -f values.yaml --namespace monitoring --version 6.20.1
kubectl apply -f pv.yaml
