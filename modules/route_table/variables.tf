variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "gateway_id" {
  description = "The Gateway ID (Internet or NAT)"
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
