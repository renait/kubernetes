#!/bin/bash
helm delete --purge gitlab
kubectl delete pvc gitlab-data
kubectl delete pvc gitlab-pgsql
kubectl delete pvc gitlab-redis
kubectl delete pv gitlab-data
kubectl delete pv gitlab-pgsql
kubectl delete pv gitlab-redis
