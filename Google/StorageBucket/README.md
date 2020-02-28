## Storage

This scripts create storage bucket in GCP

**Run terraform command as below** 

`terraform init -backend-config="environments/sbx/sbx.config"`

`terraform plan -var-file="environments/sbx/sbx.tfvars"`

`terraform apply -var-file="environments/sbx/sbx.tfvars"`

`terraform destroy -var-file="environments/sbx/sbx.tfvars"`
