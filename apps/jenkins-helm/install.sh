#!/bin/sh
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
helm upgrade --install -f values.yaml jenkins stable/jenkins

