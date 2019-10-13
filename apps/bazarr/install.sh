#!/bin/bash
kubectl apply -f pv-config.yaml
helm upgrade --install -f values.yaml bazarr explorer/bazarr
