#!/bin/sh

. ./env.sh

export

govc import.ova -options=coreos-node$1.json coreos_production_vmware_ova.ova
