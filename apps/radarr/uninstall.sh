#!/bin/bash
helm delete --purge radarr
kubectl delete pv radarr-config
