provider "google" {
  project = "my-demo-project-434216"
  region  = "us-central1"
}

resource "google_container_cluster" "my_gke_cluster" {
  name     = "gk3-autopilot-cluster-1"
  location = "us-central1"

  autopilot {
    enabled = true
  }

  # No need for initial_node_count or node_config since it's an Autopilot cluster.
}

output "cluster_name" {
  value = google_container_cluster.my_gke_cluster.name
}

