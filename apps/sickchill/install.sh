#!/bin/bash
kubectl apply -f pv-config.yaml
helm upgrade --install sickchill explorer/sickchill
