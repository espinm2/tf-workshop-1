# Terraform Docker Example

## Notable
- created dev, stage, prod environments
- using variables and tfvar files
- lots of repeat code across environments
- tedious to apply or destory all
- backend hardcoded to 'dev' 'stage' 'prod' directories

To apply with terraform in these examples you'd need to pass in the .tfvar files like so:

```bash
terraform apply -var-file="4-inputs.tfvars"
```
