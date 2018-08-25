#!/bin/bash
helm delete --purge openproject
kubectl delete pvc openproject-logs
kubectl delete pvc openproject-data
kubectl delete pvc openproject-pgsql
kubectl delete pv openproject-logs
kubectl delete pv openproject-data
kubectl delete pv openproject-pgsql
