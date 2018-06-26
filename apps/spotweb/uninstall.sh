#!/bin/bash
helm delete --purge spotweb
kubectl delete pv spotweb-mariadb
