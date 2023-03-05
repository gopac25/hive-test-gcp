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