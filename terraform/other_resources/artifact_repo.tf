resource "google_artifact_registry_repository" "hive-test-gcp" {
  location = var.region
  repository_id = var.repository_id
  description = "Image Repository"
  format = "DOCKER"
}