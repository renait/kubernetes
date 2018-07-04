#!/bin/sh
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
#helm upgrade --install -f values.yaml nexus stable/sonatype-nexus
helm upgrade --install -f values2.yaml nexus stable/sonatype-nexus

