#!/bin/bash
helm delete --purge plex
kubectl delete pvc plex-config
kubectl delete pv plex-config
