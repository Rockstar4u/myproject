variable "security_groups" {
  description = "The security groups to attach to the load balancer"
  type        = list(string)
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the load balancer"
  type        = list(string)
}

variable "environment" {
  description = "The environment of the infrastructure"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}
