First step is installing K10 platform
# Install K10

`helm repo add kasten https://charts.kasten.io/`{{execute}}

basic install, including EULA accept with company and email

`helm install --name=k10 --namespace=kasten-io kasten/k10 \
  --set eula.accept=true \
  --set eula.company=k10-demo \
  --set eula.email=katacoda@kasten.io \
  --set persistence.enabled=false \
  --set prometheus.enabled=false`{{execute}}

### Wait for K10 platform to become available
`kubectl -n kasten-io port-forward service/gateway 8080:8000`{{execute T2}}

watch as K10 becomes available

click on "K10 Dashboard" or the link below

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

once all pods are running hit `CTRL + C` to exit watch
