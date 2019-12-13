# K10 interface

## Ready
running the following command we want to make sure that all of K10 is available and ready

`watch -n 2 "kubectl -n kasten-io get pods"`{{execute}}
once all pods are running hit `clear`{{execute interrupt}} or `CTRL + C` to exit watch

## Expose Dashboard via NodePort

`kubectl apply -f nodeport-svc.yaml`{{execute}}

To view the dashboard click on "K10 Dashboard" or on the link below to view

https://[[HOST_SUBDOMAIN]]-32000-[[KATACODA_HOST]].environments.katacoda.com/k10/#/
