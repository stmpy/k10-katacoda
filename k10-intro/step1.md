First step is installing K10 platform

## Installing Helm
### setup service account for tiller
`kubectl create sa tiller --namespace kube-system`{{execute}}
`kubectl create clusterrolebinding --serviceaccount kube-system:tiller --clusterrole cluster-admin tiller-crb`{{execute}}
### Initialize tiller in cluster (helm init)
`helm init --service-account tiller`{{execute}}

## Install K10

`helm repo add kasten https://charts.kasten.io/`{{execute}}

basic install, including EULA accept with company and email

`helm install --name=k10 --namespace=kasten-io kasten/k10 --set eula.accept=true,eula.company=k10-demo,eula.email=katacoda@kasten.io`{{execute}}
