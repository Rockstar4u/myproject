variable "region" {
  description = "The AWS region"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}


variable "ami" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
}

variable "bucket_name" {
  description = "The S3 bucket name"
  type        = string
}

variable "trail_name" {
  description = "The CloudTrail name"
  type        = string
}

variable "waf_name" {
  description = "The WAF name"
  type        = string
}

variable "waf_metric_name" {
  description = "The WAF metric name"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  default     = true
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = true
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = true
}

variable "vpn_cidr" {
  description = "CIDR block for VPN clients"
  type        = string
}

variable "username" {
  type        = string
}

variable "password" {
  type        = string
}

variable "instance_class" {
  type        = string
}

variable "engine" {
  type        = string
}

variable "allocated_storage" {
  type        = string
}
