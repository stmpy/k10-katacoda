## Verify pods

`kubectl -n guestbook get pods`{{execute}}

## Reapply NodePort Service

To verify our application is functioning again

`kubectl -n guestbook apply -f guestbook-frontend-svc.yaml`{{execute}}

## Visit Web UI

https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com/
