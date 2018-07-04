#!/bin/bash
helm delete --purge nexus
kubectl delete pvc nexus
kubectl delete pv nexus
