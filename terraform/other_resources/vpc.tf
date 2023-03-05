resource "google_compute_network" "hive-vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = "false" 
  routing_mode            = "GLOBAL"
}

resource "google_compute_subnetwork" "k8s-sub" {
  name          = "kubernetes-sub"
  ip_cidr_range = var.subnet_ip_addr
  network       = google_compute_network.var.vpc_name.id
  region        = var.region

  secondary_ip_range  = [
    {
        range_name    = "services"
        ip_cidr_range = var.service_ip_range
    },
    {
        range_name    = "pods"
        ip_cidr_range = var.pod_ip_range
    }
  ]

  private_ip_google_access = true
}