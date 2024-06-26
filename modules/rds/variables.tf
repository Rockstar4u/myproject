variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable "engine" {
  description = "The database engine to use"
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "username" {
  description = "The username for the master DB user"
  type        = string
}

variable "password" {
  description = "The password for the master DB user"
  type        = string
  sensitive   = true
}


variable "vpc_security_group_id" {
  description = "List of VPC security groups to associate"
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

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate"
  type        = string
}

variable "db_subnet_group_name" {
  description = "Name of the DB subnet group"
  type        = string
}
