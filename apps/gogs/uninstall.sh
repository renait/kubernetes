#!/bin/bash
helm delete --purge gitea
kubectl delete pvc gitea-data
kubectl delete pv gitea-data
