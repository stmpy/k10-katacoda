using a stateless voting docker sample application.

# Clone Application from Github
`git clone https://github.com/kubernetes/examples`{{execute}}

# create namespace (application) and deploy
`kubectl create ns guestbook`{{execute}}
`kubectl -n guestbook apply -f guestbook-frontend-svc.yaml -f guestbook/frontend-deployment.yaml -f guestbook/redis-master-deployment.yaml -f guestbook/redis-master-service.yaml`{{execute}}

`watch -n 2 "kubectl -n guestbook get pods"`{{execute}}

once all of the pods are ready, `clear`{{execute interrupt}}

# Verify application is running
https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com/
