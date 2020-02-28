
provider "google" {
  credentials = "./credentials.json"
  project     = "${var.project}"
  #region      = "us-central1"
}


terraform {
  backend "gcs" {
  credentials = "./credentials.json"
  }
}

module "Storage" {
  source              = ".//Modules/Storage"
  names = "${var.names}"
  locations = "${var.locations}"
  storage_classes = "${var.storage_classes}"
}



####      To run the script

#terraform init -backend-config="environments/sbx/sbx.config"

#terraform plan -var-file="environments/sbx/sbx.tfvars"

#terraform apply -var-file="environments/sbx/sbx.tfvars"

#terraform destroy -var-file="environments/sbx/sbx.tfvars"

