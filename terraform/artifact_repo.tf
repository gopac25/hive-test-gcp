resource "google_artifact_registry_repository" "hive-test-gcp" {
  location = var.region
  repository_id = "hive-test-gcp"
  description = "Image Repository"
  format = "DOCKER"
}