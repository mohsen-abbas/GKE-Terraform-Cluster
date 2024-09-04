// outputs.tf
output "project_id" {
  value       = var.project_id
  description = "The GCP project ID."
}

output "cluster_name" {
  value       = google_container_cluster.existing_cluster.name
  description = "The name of the GKE cluster."
}

output "cluster_region" {
  value       = google_container_cluster.existing_cluster.location
  description = "The region of the GKE cluster."
}

output "cluster_endpoint" {
  value       = google_container_cluster.existing_cluster.endpoint
  description = "The endpoint of the GKE cluster."
}

output "bucket_name" {
  value       = data.google_storage_bucket.state_bucket.name
  description = "The name of the GCS bucket."
}

output "bucket_location" {
  value       = data.google_storage_bucket.state_bucket.location
  description = "The location of the GCS bucket."
}
