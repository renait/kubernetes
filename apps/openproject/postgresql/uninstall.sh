#!/bin/bash
helm delete --purge openproject-postgresql
kubectl delete pvc openproject-pgsql
kubectl delete pv openproject-pgsql
