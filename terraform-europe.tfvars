region            = "eu-west-1"
environment       = "dev"
project           = "my_project"
ami               = "ami-0c55b159cbfafe1f0"   # Adjusted for Europe region
instance_type     = "t2.micro"
cidr_block        = "10.0.1.0/24"
bucket_name       = "dev_bucket"
trail_name        = "dev_cloudtrail"
waf_name          = "dev_WAF"
waf_metric_name   = "dev2024"

vpc_cidr = "172.17.32.0/19"
azs = ["eu-west-1a","eu-west-1b","eu-west-1c"]
public_subnets = ["172.17.32.0/22","172.17.36.0/22","172.17.40.0/22"]
private_subnets = ["172.17.48.0/22","172.17.52.0/22","172.17.56.0/22"]
vpn_cidr          = "192.168.1.0/24"  # VPN CIDR block for Europe, // Once the VPN is set up, we will add the CIDR block to enforce restrictive access
