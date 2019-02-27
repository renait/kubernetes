#!/bin/bash
helm delete --purge gogs
kubectl delete pvc gogs-data
kubectl delete pvc gogs-pgsql
kubectl delete pv gogs-data
kubectl delete pv gogs-pgsql
