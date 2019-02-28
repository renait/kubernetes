#!/bin/sh
#kubectl apply -f dashboards.yaml
helm upgrade --install prometheus-operator stable/prometheus-operator -f custom-values.yaml --namespace monitoring
kubectl apply -f pv.yaml
