# GitLab helm chart

## Unmount iscsi target on node

After uninstalling chart;

sudo iscsiadm -m node -T  iqn.2019-10.explorer.san:gitlab-data -p 172.16.0.11:3260 -u

