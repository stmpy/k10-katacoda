To ensure that the K10 application is running check the pod status to make sure they are `Ready`

`watch -n 2 "kubectl -n kasten-io get pods"`{{execute}}
once all pods are running and `Ready`, hit `clear`{{execute interrupt}} or `CTRL + C` to exit watch

# Expose Dashboard via NodePort
To access the K10 dashboard we are going to run a nodeport (though not the recommended way to expose the K10 dashboard, due to security concerns - to view the recommended ways when installing in your own cluster visit our docs [here](https://docs.kasten.io/access/dashboard.html?highlight=dashboard#dashboard-access)).

`kubectl apply -f k10-nodeport-svc.yaml`{{execute}}

To view the dashboard click on "K10 Dashboard" or on the link below to view

https://[[HOST_SUBDOMAIN]]-32000-[[KATACODA_HOST]].environments.katacoda.com/k10/#/
