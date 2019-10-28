#~/bin/sh
helm delete --purge ingress-nginx

kubectl -n ingress-nginx delete cm tcp-services

