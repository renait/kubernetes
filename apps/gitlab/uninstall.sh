#!/bin/bash
helm delete --purge gitlab
kubectl delete pvc gitlab-logs
kubectl delete pvc gitlab-data
kubectl delete pv gitlab-data
kubectl delete pv gitlab-logs
