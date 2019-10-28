#!/bin/bash
helm delete --purge gitlab
kubectl delete pvc gitlab-config
kubectl delete pvc gitlab-logs
kubectl delete pvc gitlab-data
kubectl delete pvc gitlab-pgsql
kubectl delete pvc gitlab-redis
kubectl delete pv gitlab-data
kubectl delete pv gitlab-logs
kubectl delete pv gitlab-config
kubectl delete pv gitlab-pgsql
kubectl delete pv gitlab-redis
