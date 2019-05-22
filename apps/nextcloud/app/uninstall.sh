#!/bin/bash
helm delete --purge nextcloud
kubectl delete pvc nextcloud-data
kubectl delete pvc data-nextcloud-mariadb-0
kubectl delete pv nextcloud-data
kubectl delete pv data-nextcloud-mariadb-0
