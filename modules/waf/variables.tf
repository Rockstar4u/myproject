variable "name" {
  description = "WAF Name"
  type        = string
}

variable "metric_name" {
  description = "WAF Metric Name"
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
