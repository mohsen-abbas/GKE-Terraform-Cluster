// main.tf
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "existing_cluster" {
  name     = var.cluster_name
  location = var.region
  project  = var.project_id

  # Specify that this is an Autopilot cluster
  enable_autopilot = true

  # Metadata and description
  resource_labels = var.cluster_labels

}

data "google_storage_bucket" "state_bucket" {
  name = var.bucket_name
}
