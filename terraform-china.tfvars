region            = "cn-north-1"
environment       = "dev"
project           = "my_project"
ami               = "ami-0b898040803850657"  # Adjusted for China region
instance_type     = "t2.micro"
cidr_block        = "10.0.1.0/24"
bucket_name       = "dev_bucket"
trail_name        = "dev_cloudtrail"
waf_name          = "dev_WAF"
waf_metric_name   = "dev2024"

vpc_cidr = "172.18.32.0/19"
azs = ["cn-north-1a", "cn-north-1b", "cn-north-1c"]
public_subnets = ["172.18.32.0/22", "172.18.36.0/22", "172.18.40.0/22"]
private_subnets = ["172.18.48.0/22", "172.18.52.0/22", "172.18.56.0/22"]
vpn_cidr          = "192.168.1.0/24"  # VPN CIDR block for China, // Once the VPN is set up, we will add the CIDR block to enforce restrictive access
