#!/bin/sh
set -e
echo ${KUBECONFIG_VALUE} | base64 --decode > /.kube/config
kubectl port-forward --namespace $NAMESPACE  $SERVICE 5432:5432
