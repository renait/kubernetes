#!/bin/bash

cp -rfp inventory/sample inventory/$1

declare -a IPS=(192.168.2.90 192.168.2.91)
CONFIG_FILE=inventory/$1/hosts.ini python3 contrib/inventory_builder/inventory.py ${IPS[@]}
