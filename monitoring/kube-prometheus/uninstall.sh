#!/bin/sh
helm delete --purge kube-prometheus
kubectl delete pvc -n monitoring kube-prometheus-grafana
kubectl delete pvc -n monitoring prometheus-kube-prometheus-db-prometheus-kube-prometheus-0
kubectl delete pvc -n monitoring alertmanager-kube-prometheus-db-alertmanager-kube-prometheus-0
kubectl delete pv -n monitoring kube-prometheus-grafana
kubectl delete pv -n monitoring kube-prometheus-db-prometheus
kubectl delete pv -n monitoring kube-prometheus-db-alertmanager
kubectl delete configmap -n monitoring custom-dashboards