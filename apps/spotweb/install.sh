#!/bin/bash
kubectl apply -f mariadb-pv.yaml
helm upgrade --install -f values.yaml spotweb explorer/spotweb
