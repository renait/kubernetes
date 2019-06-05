#!/bin/bash
helm delete --purge sickchill
kubectl delete pv sickchill-config
