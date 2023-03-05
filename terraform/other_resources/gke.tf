resource "google_container_cluster" "hive-test-gke" {
  name                     = var.gke_cluster_name
  location                 = var.region
  network                  = var.vpc_name
  subnetwork               = var.subnet_name

  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = true
    master_ipv4_cidr_block  = var.gke_master_ipv4_cidr_block
  }

  maintenance_policy {
    recurring_window {
      start_time = "2023-03-05T00:00:00Z"
      end_time   = "2050-01-01T04:00:00Z"
      recurrence = "FREQ=WEEKLY"
    }
  }

  enable_autopilot = true  # Enable Autopilot for this cluster

  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }

  release_channel {
    channel = "REGULAR"
  }
}