#!/bin/sh

#helm upgrade --install ingress-nginx stable/nginx-ingress --set controller.extraArgs.v=2 --set controller.service.externalIPs={192.168.2.95} --set controller.service.type=NodePort --namespace ingress-nginx --version 1.12.1
helm upgrade --install ingress-nginx stable/nginx-ingress --set controller.extraArgs.v=2 --set controller.service.externalIPs={192.168.2.95} --set controller.service.type=NodePort --namespace ingress-nginx --version 1.24.3
