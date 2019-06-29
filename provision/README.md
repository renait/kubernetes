Configure yaml

1. Configure cloud-config.yaml
2. base64 encode cloud-config.yaml with base64encode.sh
3. Copy/paste the result from 2 in the coreos-node.json as value for key "guestinfo.coreos.config.data"

Import node

./import-coreos-ova.sh coreos-node1

Configure node from vmconsole

1. Virtual Hardware
- Mem: 2048 (minimum)
- Disk: 32GB
- Upgrade hardware
- VMOptions -> VMware tools -> sync time with host
- Add Network SAN

2. Boot VM

3. Shutdown VM

4. VMOptions -> Generation Options -> Guest OS Version -> Other 3.x or later Linux (64-bit)

5. Boot VM 

Ready for use.


