kubectl -n monitoring delete crd prometheuses.monitoring.coreos.com
kubectl -n monitoring delete crd prometheusrules.monitoring.coreos.com
kubectl -n monitoring delete crd servicemonitors.monitoring.coreos.com
kubectl -n monitoring delete crd alertmanagers.monitoring.coreos.com

