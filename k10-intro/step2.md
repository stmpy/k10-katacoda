# Next Install an application
using a stateless voting docker sample application. The default layout of this application uses an empty directory to store the database state, which means it isn’t a data volume, it won’t be backed up

## clone from github
`git clone https://github.com/dockersamples/example-voting-app`{{execute}}

## create namespace (application) and deploy
`kubectl create ns vote`{{execute}}
`kubectl apply -f example-voting-app/k8s-specifications/`{{execute}}

`watch -n 2 “kubectl -n vote get pods”`{{execute}}

once all of the pods are ready, `clear`{{execute interrupt}}

## Verify application is running
Click on the tab “Vote: Submit” to submit your vote (or even have others) or click on the following link:
https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com/

Once your vote is submitted click on the tab “Vote: Result” to see the results of your vote, or click the following link: https://[[HOST_SUBDOMAIN]]-31001-[[KATACODA_HOST]].environments.katacoda.com/