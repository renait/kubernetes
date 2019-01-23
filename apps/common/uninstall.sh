#!/bin/bash
kubectl delete pvc lib-movies
kubectl delete pvc lib-pictures
kubectl delete pvc transcode
kubectl delete pv lib-movies
kubectl delete pv lib-pictures
kubectl delete pv transcode
