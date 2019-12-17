## Restore from backup

Return to application page

https://[[HOST_SUBDOMAIN]]-32000-[[KATACODA_HOST]].environments.katacoda.com/k10/#/applications

Click "Filter by status"

![Filter by Status](/travis-kasten/scenarios/k10-intro/assets/filter-by-status.png)

Select "Removed"

![Removed Applications](/travis-kasten/scenarios/k10-intro/assets/removed-apps.png)

On guestbook application click restore

![Restore Point List](/travis-kasten/scenarios/k10-intro/assets/restore-point-list.png)

and select the restore point that was created from the backup

![Restore Point](/travis-kasten/scenarios/k10-intro/assets/restore-point.png)

We are going to restore to the same namespace as before, no changes are needed, click "Restore"

return to the dashboard:

https://[[HOST_SUBDOMAIN]]-32000-[[KATACODA_HOST]].environments.katacoda.com/k10/#/

The restore will process and once completed you'll see it's status in the "Jobs" list

![Completed Restore](/travis-kasten/scenarios/k10-intros/assets/completed-restoreo.png)

