#!/bin/bash
kubectl apply -f pv-config.yaml
#helm upgrade --install -f values.yaml plex explorer/plex
helm upgrade --install -f values.yaml plex billimek/kube-plex