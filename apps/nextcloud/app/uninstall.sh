#!/bin/bash
helm delete --purge nextcloud
kubectl delete pvc nextcloud-mariadb
kubectl delete pvc nextcloud-data
kubectl delete pvc nextcloud-apache
kubectl delete pv nextcloud-mariadb
kubectl delete pv nextcloud-data
kubectl delete pv nextcloud-apache
