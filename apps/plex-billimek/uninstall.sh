#!/bin/bash
helm delete --purge plex
kubectl delete pv plex-config
