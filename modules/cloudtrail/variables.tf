variable "trail_name" {
  description = "CloudTrail Name"
  type        = string
}

variable "s3_bucket_name" {
  description = "S3 Bucket Name for CloudTrail Logs"
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
