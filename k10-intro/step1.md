K10 requires a kubernetes cluster, and an installation method, we will be using Helm (v2) and tiller.

Right now the cluster is being readied by ensuring that both kubernetes and tiller are ready before we continue. Once the prompt returns with `master #` then everything should be setup and ready to go.

# Install K10

K10's default installation method is through Helm. In order to perform the installation we are going to add Kastens helm repository to pull K10 from.

`helm repo add kasten https://charts.kasten.io/`{{execute}}

Next, we will run the helm installation for K10. We are setting a few options which will streamline the process a little bit:
- `eula.accept=true` will accept our end user license agreement, which would typically come up on the first visit to the K10 Dashboard
- `eula.company=k10-demo`, `eula.email=katacoda@kasten.io` The EULA agreement asks for your company and email, we are passing in a "demo" company and email.
- `persistence.enabled=false` will disable persistence since it won't be used in this demonstration
- `prometheus.enabled=false` will disable prometheus since it won't be used in this demonstration

The rest of the command will install K10 into the `kasten-io` namespace, and will name it `k10` in the local helm system

`helm install --name=k10 --namespace=kasten-io kasten/k10 \
  --set eula.accept=true \
  --set eula.company=k10-demo \
  --set eula.email=katacoda@kasten.io \
  --set persistence.enabled=false \
  --set prometheus.enabled=false`{{execute}}

While we wait, let's install an application in the next step

# Verify application readiness

To verify that the K10 application is running we can wait for the pods to be in `Ready` state. To monitor the pod state, use the following command:

`watch -n 2 "kubectl -n kasten-io get pods"`{{execute}}

Once the pods all register as `Ready` then you can `clear`{{execute interrupt}} to move on to the application installtion
