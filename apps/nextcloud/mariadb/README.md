MariaDB can be accessed via port 3306 on the following DNS name from within your cluster:
owncloud-mariadb.default.svc.cluster.local

To get the root password run:

    export MARIADB_ROOT_PASSWORD=$(kubectl get secret --namespace default owncloud-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)

To get the password for "bn_owncloud" run:

    export MARIADB_PASSWORD=$(kubectl get secret --namespace default owncloud-mariadb -o jsonpath="{.data.mariadb-password}" | base64 --decode)To connect to your database:

1. Run a pod that you can use as a client:

    kubectl run owncloud-mariadb-client --rm --tty -i --env MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD --image bitnami/mariadb --command -- bash

2. Connect using the mysql cli, then provide your password:
    mysql -h owncloud-mariadb -uroot -p$MARIADB_ROOT_PASSWORD

To connect to your database from outside the cluster execute the following commands:

    export POD_NAME=$(kubectl get pods --namespace default -l "app=mariadb" -o jsonpath="{.items[0].metadata.name}")
    kubectl port-forward --namespace default $POD_NAME 3306:3306 &
    mysql -h 127.0.0.1 -uroot -p$MARIADB_ROOT_PASSWORD
