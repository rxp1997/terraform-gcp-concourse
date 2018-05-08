Project to enable APIs and StackDriver export to PubSub in a project

Update gcp.tfvars
```terraform
project_id = "project_id"
credentials = "<path-to-credentials-file>"
```

To Apply
```terraform
terraform apply -parallelism=1 -var-file="gcp.tfvars"
```
