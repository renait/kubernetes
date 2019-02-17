# Conversions after upgrading

```
$ kubectl exec -it <nextcloud-pod-name> /bin/bash

root# su -s /bin/sh -c  "./occ db:add-missing-indices" www-data
root# su -s /bin/sh -c  "./occ db:convert-filecache-bigint" www-data
```
