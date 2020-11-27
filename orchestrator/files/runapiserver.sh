#!/bin/bash
/opt/kubernetes/server/bin/kube-apiserver --cert-dir /opt/kubernetes/server/bin --etcd-servers=http://127.0.0.1:2379 --admission-control="" --insecure-bind-address 0.0.0.0