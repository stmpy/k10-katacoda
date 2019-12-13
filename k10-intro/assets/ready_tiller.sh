#!/bin/bash

# once ready, install tiller
echo "Waiting for Tiller to start..."
kubectl create sa tiller --namespace kube-system 1> /dev/null 2>&1
kubectl create clusterrolebinding \
  --serviceaccount kube-system:tiller \
  --clusterrole cluster-admin tiller-crb 1> /dev/null 2>&1
helm init --service-account tiller 1> /dev/null 2>&1

sleep 2

while [ "Running" != "$(kubectl -n kube-system get pods | grep tiller | awk {'print $3'})" ]
do
  sleep 1
done
echo "Tiller started"
