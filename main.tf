terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  cidr_block  = var.cidr_block 
  region      = var.region
  environment = var.environment
  project     = var.project
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id      = module.vpc.vpc_id
  environment = var.environment
  project     = var.project
}

module "nat_gateway" {
  source = "./modules/nat_gateway"

  subnet_id      = module.subnet.subnet_id
  environment    = var.environment
  project        = var.project
}

module "route_table" {
  source = "./modules/route_table"

  vpc_id      = module.vpc.vpc_id
  gateway_id  = module.internet_gateway.internet_gateway_id
  environment = var.environment
  project     = var.project
}

module "security_group" {
  source = "./modules/security_group"
  vpn_cidr    = var.vpn_cidr 
  vpc_id      = module.vpc.vpc_id
  environment = var.environment
  project     = var.project
}

module "instance" {
  source = "./modules/instance"

  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = module.subnet.subnet_id
  security_group_id = module.security_group.security_group_id
  environment       = var.environment
  project           = var.project
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
  environment = var.environment
  project     = var.project
}

module "cloudtrail" {
  source = "./modules/cloudtrail"

  trail_name    = var.trail_name
  s3_bucket_name = module.s3.bucket_name
  environment   = var.environment
  project       = var.project
}

module "waf" {
  source = "./modules/waf"

  name         = var.waf_name
  metric_name  = var.waf_metric_name
  environment  = var.environment
  project      = var.project
}

module "guardduty" {
  source = "./modules/guardduty"

  environment = var.environment
  project     = var.project
}

module "iam_policy_role" {
  source                = "./modules/iam"
  policy_name           = "MyAccessPolicy"
  policy_description    = "Policy to access S3, CloudTrail, GuardDuty, WAF, and KMS"
  role_name             = "MyAccessRole"
  assume_role_principals = ["ec2.amazonaws.com"]
}
