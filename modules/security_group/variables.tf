variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}

variable "vpn_cidr" {
  description = "CIDR block for VPN clients"
  type        = string
}
