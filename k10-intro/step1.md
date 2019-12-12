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
It will take a minute for K10 to finish coming up, you can watch the pods come up with the command below
`watch -n 2 "kubectl -n kasten-io get pods"`{{execute}}
once all pods are running hit `clear`{{execute interrupt}} or `CTRL + C` to exit watch

Once the gateway pod is ready, we want to launch a port-forward so we can view the dashboard

`kubectl -n kasten-io port-forward service/gateway 8080:8000`{{execute T2}}

To view the dashboard click on "K10 Dashboard" or on the link below to view

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/k10/#/status
