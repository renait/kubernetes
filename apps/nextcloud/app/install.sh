#!/bin/bash
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
helm upgrade --install -f values.yaml nextcloud explorer/nextcloud
