#!/bin/bash
helm delete --purge bazarr
kubectl delete pv bazarr-config
