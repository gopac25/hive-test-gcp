resource "google_compute_router" "router" {
  name    = "hive"
  region  = var.region
  network = google_compute_network.hive-vpc.id
}

resource "google_compute_router_nat" "nat" {
  name                               = "hive"
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  min_ports_per_vm                   = "64"
  enable_endpoint_independent_mapping = false

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}