// backend.tf
terraform {
  backend "gcs" {
    bucket  = "my-demo-project-terraform-state-bucket"
    prefix  = "terraform/state"
  }
}