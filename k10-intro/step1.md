K10 requires a kubernetes cluster, and an installation method, we will be using Helm (v2) and tiller. Right now the cluster is being readied by ensuring that both kubernetes and tiller are ready before we continue.
# Install K10

`helm repo add kasten https://charts.kasten.io/`{{execute}}

basic install, including EULA accept with company and email

`helm install --name=k10 --namespace=kasten-io kasten/k10 \
  --set eula.accept=true \
  --set eula.company=k10-demo \
  --set eula.email=katacoda@kasten.io \
  --set persistence.enabled=false \
  --set prometheus.enabled=false`{{execute}}

While we wait, let's install an application in the next step
