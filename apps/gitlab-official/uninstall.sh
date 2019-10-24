#!/bin/bash
helm delete --purge gitlab
kubectl delete pvc gitlab-gitlab-ee-redis
kubectl delete pvc gitlab-gitlab-ee-pgsql
kubectl delete pv gitlab-gitlab-ee-redis
kubectl delete pv gitlab-gitlab-ee-data
kubectl delete pv gitlab-gitlab-ee-config
kubectl delete pv gitlab-gitlab-ee-pgsql
