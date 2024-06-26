variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "policy_description" {
  description = "Description of the IAM policy"
  type        = string
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}
variable "alb_actions" {
  type    = list(string)
  description = "List of ALB actions allowed by the IAM policy"
}

variable "rds_actions" {
  type    = list(string)
  description = "List of RDS actions allowed by the IAM policy"
}

variable "assume_role_principals" {
  description = "List of principals allowed to assume the role"
  type        = list(string)
}

variable "s3_actions" {
  description = "List of S3 actions"
  type        = list(string)
  default     = ["s3:*"]
}

variable "cloudtrail_actions" {
  description = "List of CloudTrail actions"
  type        = list(string)
  default     = ["cloudtrail:*"]
}

variable "guardduty_actions" {
  description = "List of GuardDuty actions"
  type        = list(string)
  default     = ["guardduty:*"]
}

variable "waf_actions" {
  description = "List of WAF actions"
  type        = list(string)
  default     = ["waf:*"]
}

variable "kms_actions" {
  description = "List of KMS actions"
  type        = list(string)
  default     = ["kms:*"]
}

variable "resources" {
  description = "List of resources"
  type        = list(string)
  default     = ["*"]
}
