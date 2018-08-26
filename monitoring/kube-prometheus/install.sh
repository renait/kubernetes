#!/bin/sh
helm upgrade --install kube-prometheus coreos/kube-prometheus -f values.yaml --namespace monitoring
