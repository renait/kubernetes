#!/bin/bash
helm delete --purge sabnzbd
kubectl delete pvc sabnzbd-config
kubectl delete pv sabnzbd-config
kubectl delete pvc sabnzbd-download
kubectl delete pv sabnzbd-download
