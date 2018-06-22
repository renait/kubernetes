#!/bin/bash
helm delete --purge plex
#kubectl delete pvc serviio-config
kubectl delete pv plex-config
