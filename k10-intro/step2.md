using a stateless voting docker sample application.

# Clone Application from Github
`git clone https://github.com/kubernetes/examples`{{execute}}

# create namespace (application) and deploy
`kubectl create ns guestbook`{{execute}}

Change replicas to only 1

`sed -i "s/replicas: [0-9]/replicas: 1/g" examples/guestbook/frontend-deployment.yaml`{{execute}}
`sed -i "s/replicas: [0-9]/replicas: 1/g" examples/guestbook/redis-slave-deployment.yaml`{{execute}}

Deploy application by applying frontend deployment, service and redis deployment and service

`kubectl -n guestbook apply -f guestbook-frontend-svc.yaml -f examples/guestbook/`{{execute}}

Wait for application to become ready

`watch -n 2 "kubectl -n guestbook get pods"`{{execute}}

once all of the pods are ready, `clear`{{execute interrupt}}

# Verify application is running
https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com/
