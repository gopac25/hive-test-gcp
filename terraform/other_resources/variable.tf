variable "project_id" {
description = "Google Project ID"
type        = string
}

variable "region" {
description = "Google Cloud region"
type        = string
default     = "europe-west1"
}

variable "repository_id" {
description = "Google Artifact Repo name"
type        = string
}

variable "vpc_name" {
description = "Google VPC name"
type        = string
}

variable "subnet_name" {
description = "Google Subnet name"
type        = string
}

variable "subnet_ip_addr" {
description = "Subnet IP Addr"
type        = string
}

variable "service_ip_range" {
description = "K8s Services IP Range"
type        = string
}

variable "pod_ip_range" {
description = "K8s Pods IP Range"
type        = string
}

variable "gke_cluster_name" {
description = "GKE Cluster Name"
type        = string
}

variable "gke_master_ipv4_cidr_block" {
  type    = string
  default = "172.18.0.0/28"
}