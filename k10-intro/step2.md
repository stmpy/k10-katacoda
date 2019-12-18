For the demonstration we will be using a guestbook application. The application will keep messages in the temporary redis cache.

# Clone Application from Github
First lets, clone the application from GitHub

`git clone https://github.com/kubernetes/examples`{{execute}}

# Ready application for deployment
The application needs some prep work before being deployed to the cluster.

reduce the amount of replicas to 1 for the frontend deployment

`sed -i "s/replicas: [0-9]/replicas: 1/g" examples/guestbook/frontend-deployment.yaml`{{execute}}

as well as the redis cluster, for the purpose of the demonstration we only need 1 instance of each pod running.

`sed -i "s/replicas: [0-9]/replicas: 1/g" examples/guestbook/redis-slave-deployment.yaml`{{execute}}

Now, deploy the application by creating a new namespace to house the application
First we will create a new namespace that will house our application in the Kubernetes cluster

`kubectl create ns guestbook`{{execute}}

applying frontend deployment, service and redis deployment and service

`kubectl -n guestbook apply -f guestbook-frontend-svc.yaml -f examples/guestbook/`{{execute}}

wait for the application to become ready

`watch -n 2 "kubectl -n guestbook get pods"`{{execute}}

once all of the pods are `Ready`, `clear`{{execute interrupt}} to move to the next step

# Verify application is running
The application has a web UI that can be accessed using the following link. The application will be fully functioning and can send messages back to the redis cluster for caching. You can refresh the page to see that the temporary state is retained.

https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com/
