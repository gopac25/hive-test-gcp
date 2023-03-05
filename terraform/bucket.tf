# Create a GCS Bucket

resource "google_storage_bucket" "hive" {
  name          = var.bucket_name
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}