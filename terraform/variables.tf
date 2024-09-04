// variables.tf
variable "project_id" {
  description = "The GCP project ID."
  type        = string
  default     = "my-demo-project-434216"
}

variable "region" {
  description = "The GCP region."
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "autopilot-cluster-1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket for storing Terraform state."
  type        = string
  default     = "my-demo-project-terraform-state-bucket"
}

variable "cluster_labels" {
  description = "A map of labels to apply to the GKE cluster."
  type        = map(string)
  default     = {
    environment = "production"
    team        = "devops"
  }
}