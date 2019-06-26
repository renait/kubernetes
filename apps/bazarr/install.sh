#!/bin/bash
kubectl apply -f pv-config.yaml
helm upgrade --install bazarr explorer/bazarr
