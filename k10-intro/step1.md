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

## Wait for K10 platform to become available
While we wait, let's install an application in the next step
