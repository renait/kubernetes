#!/bin/sh
helm delete --purge prometheus-operator
kubectl delete pvc -n monitoring prometheus-operator-grafana
kubectl delete pvc -n monitoring prometheus-prometheus-operator-prometheus-db-prometheus-prometheus-operator-prometheus-0
kubectl delete pvc -n monitoring alertmanager-prometheus-operator-alertmanager-db-alertmanager-prometheus-operator-alertmanager-0
kubectl delete pv -n monitoring prometheus-operator-grafana
kubectl delete pv -n monitoring prometheus-operator-db-prometheus
kubectl delete pv -n monitoring prometheus-operator-db-alertmanager
