#!/bin/bash
helm delete --purge sonarr
kubectl delete pv sonarr-config
