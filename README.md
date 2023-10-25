# testing custom policy (terraform) using trivy

## Issue
input received when passing custom policy to trivy contains limited data.
hence, unable to create policy for certain cases.
eg. creating a policy to capture volumes that have a count of 1 is not possible because the input received does not contain data for that attribute.

## Steps
Run this command:
```
    trivy  config  --config-policy=./policy.rego --severity=CRITICAL --namespaces=user main.tf
```

Edit policy.rego to test different cases.
In the same file is included codes to print out the input.
I've generated and included the input 
- [input-volume.json](./input-volume.json)
- [input-bucket.json](./input-bucket.json)