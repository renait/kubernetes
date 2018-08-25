#!/bin/bash
helm delete --purge chartmuseum
kubectl delete pvc chartmuseum
kubectl delete pv chartmuseum
