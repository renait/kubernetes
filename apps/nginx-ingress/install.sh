#!/bin/sh

helm upgrade --install ingress-nginx stable/nginx-ingress \
 --set controller.extraArgs.v=2 \
 --set tcp.2222="default/gitlab-ssh:ssh" \
 --set controller.service.externalIPs={192.168.2.95} \
 --set controller.service.type=NodePort \
 --namespace ingress-nginx  \
 --version 1.24.4
