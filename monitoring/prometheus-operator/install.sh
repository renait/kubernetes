#!/bin/sh
helm upgrade --install prometheus-operator coreos/prometheus-operator -f values.yaml --namespace monitoring
