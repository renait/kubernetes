#!/bin/bash
helm delete --purge jenkins
kubectl delete pvc jenkins
kubectl delete pv jenkins
