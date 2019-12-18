To create a policy, and backup our application click on "Applications"

![Applications](/travis-kasten/scenarios/k10-intro/assets/applications.png)

and click on "Create a Policy", this creates a policy to backup application.

![Create a Policy](/travis-kasten/scenarios/k10-intro/assets/create-policy.png)

The policy will take a backup based on the frequency  provided, and will also clean up backup snapshots based on the retention policy. This greatly helps reduce the storage consumed by backups by only keeping what you need.

![Policy Creation](/travis-kasten/scenarios/k10-intro/assets/policy-creation.png)

# Policy Customization

The policy can be changed in many ways to allow complete control of the policy.
- The frequency can be increase or decreased to ensure you are capturing at a cadence that matches the type of data and application being backed-up.
- The retention can also be modified to make sure that you've always got the backup you need, but you're not wasting space on backups you don't need.
- The resources can also be selectively chosen, if you are using more than one policy per application you may want to ignore some resources to be captured by another policy.

