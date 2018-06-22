#!/bin/bash
helm delete --purge sickrage
kubectl delete pv sickrage-config
