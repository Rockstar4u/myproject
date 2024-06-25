variable "bucket_name" {
  description = "S3 Bucket Name"
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
