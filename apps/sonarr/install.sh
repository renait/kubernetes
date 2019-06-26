#!/bin/bash
kubectl apply -f pv-config.yaml
helm upgrade --install sonarr explorer/sonarr
