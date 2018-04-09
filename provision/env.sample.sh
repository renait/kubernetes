#!/bin/sh

export GOVC_INSECURE=1
export GOVC_URL=<hostname/ipi esxi host>
export GOVC_USERNAME=root
export GOVC_PASSWORD=<password>
export GOVC_DATASTORE=<datastore name>
export GOVC_NETWORK="LAN"
export GOVC_RESOURCE_POOL='*/Resources'

