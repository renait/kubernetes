#!/bin/bash
helm delete --purge spotweb
kubectl delete pvc data-spotweb-mariadb-0
kubectl delete pv data-spotweb-mariadb-0
